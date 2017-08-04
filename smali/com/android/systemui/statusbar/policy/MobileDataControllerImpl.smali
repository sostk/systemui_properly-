.class public Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
.super Ljava/lang/Object;
.source "MobileDataControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;,
        Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final IS_CHINAMOBILE_C:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mMobileDataModeObserver:Landroid/database/ContentObserver;

.field private mMode:I

.field private mModes:[I

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->get34GCapabilitySubId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getPreferredModeInternal()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->registerPreferredNetworkModeObserverForSubRecordChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "MobileDataController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Ljava/util/Formatter;

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 74
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 484
    const-string/jumbo v0, "chinamobile_c"

    const-string/jumbo v1, "ro.customize.isp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->IS_CHINAMOBILE_C:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;

    .line 450
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 449
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataModeObserver:Landroid/database/ContentObserver;

    .line 460
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 459
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 461
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mModes:[I

    .line 465
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 90
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 95
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setListening(Z)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method private get34GCapabilityPhoneId()I
    .locals 6

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, "phoneId":I
    :try_start_0
    const-string/jumbo v3, "phone_ext"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object v1

    .line 392
    .local v1, "phone":Landroid/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v1}, Landroid/telephony/ITelephonyExt;->get34GCapabilityPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 398
    .end local v1    # "phone":Landroid/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    const-string/jumbo v3, "MobileDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get34GCapabilityPhoneId, phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v2

    .line 394
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private get34GCapabilitySubId()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "capabilitySubId":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->get34GCapabilityPhoneId()I

    move-result v0

    .line 405
    .local v0, "capabilityPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 406
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    aget v3, v2, v6

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const-string/jumbo v3, "MobileDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get34GCapabilitySubId subId[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    aget v1, v2, v6

    .line 413
    :goto_0
    return v1

    .line 410
    :cond_0
    const-string/jumbo v3, "MobileDataController"

    const-string/jumbo v4, "get34GCapabilitySubId Invalid subId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFlymeModes()[I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->is4GSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    .line 302
    .local v0, "lines":I
    :goto_0
    new-array v1, v0, [I

    .line 303
    .local v1, "modes":[I
    aput v4, v1, v3

    .line 304
    aput v3, v1, v4

    .line 305
    if-le v0, v5, :cond_0

    .line 306
    const/16 v2, 0x9

    aput v2, v1, v5

    .line 308
    :cond_0
    return-object v1

    .line 301
    .end local v0    # "lines":I
    .end local v1    # "modes":[I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "lines":I
    goto :goto_0
.end method

.method private getIntlModes()[I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->is4GSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    .line 321
    .local v0, "lines":I
    :goto_0
    new-array v1, v0, [I

    .line 322
    .local v1, "modes":[I
    aput v4, v1, v3

    .line 323
    aput v3, v1, v4

    .line 324
    aput v5, v1, v5

    .line 325
    if-le v0, v6, :cond_0

    .line 326
    const/16 v2, 0x9

    aput v2, v1, v6

    .line 328
    :cond_0
    return-object v1

    .line 320
    .end local v0    # "lines":I
    .end local v1    # "modes":[I
    :cond_1
    const/4 v0, 0x3

    .restart local v0    # "lines":I
    goto :goto_0
.end method

.method private getPreferredModeInternal()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->get34GCapabilitySubId()I

    move-result v1

    .line 333
    .local v1, "phoneSubId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 333
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 336
    .local v0, "mode":I
    if-gez v0, :cond_0

    .line 337
    const-string/jumbo v2, "MobileDataController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error read mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v5

    .line 341
    :cond_0
    return v0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;

    .line 441
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V

    goto :goto_0

    .line 439
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getPreferredMode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;->onMobileDataModeChanged(I)V

    .line 445
    return-void
.end method

.method private registerPreferredNetworkModeObserverForSubRecordChange()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setListening(Z)V

    .line 478
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setListening(Z)V

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getPreferredModeInternal()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged()V

    .line 476
    return-void
.end method

.method private setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->get34GCapabilitySubId()I

    move-result v0

    .line 420
    .local v0, "phoneSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 422
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataModeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 416
    .end local v0    # "phoneSubId":I
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V

    .line 429
    return-void
.end method

.method public canConfigMobileData()Z
    .locals 1

    .prologue
    .line 272
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->IS_CHINAMOBILE_C:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getModes()[I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mModes:[I

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getIntlModes()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mModes:[I

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mModes:[I

    return-object v0

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getFlymeModes()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mModes:[I

    goto :goto_0
.end method

.method public getPreferredMode()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    if-gez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getPreferredModeInternal()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mMode:I

    return v0
.end method

.method public is4GSupported()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public isCalling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .line 122
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 232
    const-string/jumbo v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;->onMobileDataEnabled(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 105
    return-void
.end method

.method public setPreferredMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 346
    move v0, p1

    .line 347
    .local v0, "newMode":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->get34GCapabilitySubId()I

    move-result v2

    .line 348
    .local v2, "phoneSubId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 348
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 350
    .local v1, "oldMode":I
    const-string/jumbo v3, "MobileDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPrefMode phoneSubId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "get setted is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " set to mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eq v0, v1, :cond_0

    .line 352
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;II)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 345
    :cond_0
    return-void
.end method
