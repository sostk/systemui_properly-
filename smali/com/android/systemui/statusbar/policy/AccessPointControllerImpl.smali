.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;,
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ICONS:[I


# instance fields
.field private final mByStrength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

.field private mRequestRescanAfterEnabled:Z

.field private mScanning:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->rescanForAccessPoints()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    const-string/jumbo v0, "AccessPointController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    .line 72
    const v0, 0x7f020112

    .line 73
    const v1, 0x7f02011a

    .line 74
    const v2, 0x7f02011b

    .line 75
    const v3, 0x7f02011c

    .line 76
    const v4, 0x7f02011d

    .line 71
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    .line 368
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 380
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mByStrength:Ljava/util/Comparator;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 92
    return-void
.end method

.method private static configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WAPI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_3
    return-object v0

    .line 482
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private fireAcccessPointsCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V
    .locals 3
    .param p1, "aps"    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 274
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V

    goto :goto_0

    .line 272
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 268
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    :cond_0
    return-void
.end method

.method private getConfiguredNetworksBySsid()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 291
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v4, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    return-object v4

    .line 289
    :cond_1
    const/4 v2, 0x0

    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    goto :goto_0

    .line 292
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 293
    .local v3, "rt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 295
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 298
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method private getConnectedNetworkId(Landroid/net/wifi/WifiInfo;)I
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private rescanForAccessPoints()V
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v0, "AccessPointController"

    const-string/jumbo v1, "re-scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    .line 504
    const-string/jumbo v0, "AccessPointController"

    const-string/jumbo v1, "start re-scaning!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    .line 511
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 500
    return-void

    .line 508
    :cond_0
    const-string/jumbo v0, "AccessPointController"

    const-string/jumbo v1, "wifi is still not enabled, internal error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccessPoints()V
    .locals 17

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 303
    .local v13, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->getConnectedNetworkId(Landroid/net/wifi/WifiInfo;)I

    move-result v5

    .line 304
    .local v5, "connectedNetworkId":I
    sget-boolean v14, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "AccessPointController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "connectedNetworkId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 307
    .local v11, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v11, :cond_1

    return-void

    .line 309
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->getConfiguredNetworksBySsid()Landroid/util/ArrayMap;

    move-result-object v4

    .line 310
    .local v4, "configured":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    sget-boolean v14, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "AccessPointController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scanResults: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v2, "aps":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 316
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "scanResult$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 317
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 321
    .local v12, "ssid":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 322
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 324
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 329
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v14, v9, Landroid/net/wifi/ScanResult;->level:I

    sget-object v15, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    array-length v15, v15

    invoke-static {v14, v15}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    .line 330
    .local v8, "level":I
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;-><init>()V

    .line 331
    .local v1, "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;
    if-eqz v3, :cond_4

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConfigured:Z

    .line 332
    if-eqz v3, :cond_5

    iget v14, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_2
    iput v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    .line 333
    iput-object v12, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    .line 342
    iget v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 343
    iget v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-ne v14, v5, :cond_6

    const/4 v14, 0x1

    .line 342
    :goto_3
    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    .line 345
    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isConnected:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v14, :cond_8

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getConnectedWifiLevel()I

    move-result v14

    iput v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    .line 351
    :goto_4
    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    iget v15, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    aget v14, v14, v15

    iput v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->iconId:I

    .line 354
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "WEP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 355
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "PSK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 354
    if-nez v14, :cond_9

    .line 356
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "EAP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 354
    :goto_5
    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    .line 358
    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v14, :cond_b

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "PSK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 359
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "WAPI"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    .line 358
    :goto_6
    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isPsk:Z

    .line 360
    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v14, :cond_c

    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v15, "WEP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    :goto_7
    iput-boolean v14, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->isWep:Z

    .line 362
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 332
    :cond_5
    const/4 v14, -0x1

    goto/16 :goto_2

    .line 343
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 342
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 349
    :cond_8
    iput v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->level:I

    goto :goto_4

    .line 354
    :cond_9
    const/4 v14, 0x1

    goto :goto_5

    .line 359
    :cond_a
    const/4 v14, 0x1

    goto :goto_6

    .line 358
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 360
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    .line 364
    .end local v1    # "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "level":I
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mByStrength:Ljava/util/Comparator;

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    invoke-interface {v2, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V

    .line 301
    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 115
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    .line 113
    return-void

    .line 117
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canConfigWifi()Z
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_wifi"

    .line 105
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)Z
    .locals 6
    .param p1, "ap"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    const/4 v5, 0x0

    .line 147
    if-nez p1, :cond_0

    return v5

    .line 148
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "AccessPointController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connect networkId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-gez v2, :cond_3

    .line 151
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v2, :cond_2

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.meizu.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "wifi_start_connect_ssid"

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    .line 253
    const/4 v2, 0x1

    return v2

    .line 255
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 256
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 257
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 263
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v5

    .line 261
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 108
    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .prologue
    .line 122
    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    .line 121
    return-void

    .line 125
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scanForAccessPoints()V
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccessPointController"

    const-string/jumbo v1, "scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string/jumbo v0, "AccessPointController"

    const-string/jumbo v1, "wifi is not enabled yet, try again later"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    .line 129
    return-void
.end method

.method setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 99
    return-void
.end method
