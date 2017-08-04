.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mAirplaneMode:Z

.field private mBluetoothTethered:Z

.field private mCarrierListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mConnected:Z

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private mConnectionCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

.field private mDemoInetCondition:I

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

.field private mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEthernetConnected:Z

.field private final mHasMobileDataFeature:Z

.field private mHasNoSims:Z

.field private mInetCondition:Z

.field mListening:Z

.field private mLocale:Ljava/util/Locale;

.field private final mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

.field final mMobileSignalControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangeCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 163
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 164
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 165
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v6

    .line 166
    new-instance v7, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v7, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {v8, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    .line 162
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p4, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p5, "subManager"    # Landroid/telephony/SubscriptionManager;
    .param p6, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p7, "accessPointController"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .param p8, "mobileDataController"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 131
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 132
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    .line 135
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    .line 947
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 946
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 2211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    .line 2229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 177
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 179
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 180
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    .line 181
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 188
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->initTelephonyIcon()V

    .line 191
    invoke-static {}, Lcom/android/systemui/statusbar/policy/WifiIcons;->initWifiIcon()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 194
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .line 195
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setCallback(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;)V

    .line 204
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object v5, p0

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 175
    return-void
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 290
    .local v0, "dataSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "No data sim selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    return-object v1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    return-object v1

    .line 297
    :cond_1
    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find controller for data sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    return-object v1
.end method

.method private handleSpnBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 486
    const-string/jumbo v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const-string/jumbo v3, "phone"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "phoneId":I
    if-eq v0, v4, :cond_0

    .line 489
    const-string/jumbo v3, "showPlmn"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 490
    .local v1, "showPlmn":Z
    if-eqz v1, :cond_1

    const-string/jumbo v3, "plmn"

    :goto_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "signalName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    .end local v0    # "phoneId":I
    .end local v1    # "showPlmn":Z
    .end local v2    # "signalName":Ljava/lang/String;
    :cond_0
    return-void

    .line 490
    .restart local v0    # "phoneId":I
    .restart local v1    # "showPlmn":Z
    :cond_1
    const-string/jumbo v3, "showSpn"

    goto :goto_0
.end method

.method private isMobileDataConnected()Z
    .locals 2

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-result-object v0

    .line 794
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAllListeners()V
    .locals 3

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 647
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 649
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 644
    return-void
.end method

.method private notifyListeners()V
    .locals 7

    .prologue
    .line 658
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 659
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 660
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const v5, 0x7f020579

    .line 661
    const v6, 0x7f0901cb

    .line 660
    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 662
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 665
    .local v2, "signalsChangedLength":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 666
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 667
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_1
    return-void
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 275
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method private notifyNetworkConnectionCallbacks()V
    .locals 4

    .prologue
    .line 2223
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataConnected()Z

    move-result v2

    .line 2224
    :goto_0
    if-nez v2, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 2225
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;

    .line 2226
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;->onDataConnection(Z)V

    goto :goto_2

    .line 2223
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    .local v2, "isConnection":Z
    goto :goto_0

    .end local v2    # "isConnection":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isConnection":Z
    goto :goto_0

    .line 2224
    .end local v2    # "isConnection":Z
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "isConnection":Z
    goto :goto_1

    .end local v2    # "isConnection":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isConnection":Z
    goto :goto_1

    .line 2222
    .end local v2    # "isConnection":Z
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private notifySubscriptionsChangeCallBack(I)V
    .locals 3
    .param p1, "allSize"    # I

    .prologue
    .line 2239
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    .line 2240
    .local v0, "sb":Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;->onSubscriptionsChange(I)V

    goto :goto_0

    .line 2238
    .end local v0    # "sb":Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;
    :cond_0
    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 707
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 709
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 710
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    .line 708
    :goto_2
    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(II)V

    goto :goto_0

    :cond_0
    move v2, v4

    .line 709
    goto :goto_1

    :cond_1
    move v5, v4

    .line 710
    goto :goto_2

    .line 712
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    .line 713
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 712
    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->setInetCondition(I)V

    .line 705
    return-void

    :cond_3
    move v3, v4

    .line 713
    goto :goto_3
.end method

.method private refreshLocale()V
    .locals 2

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 634
    .local v0, "current":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 632
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 214
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->registerListener()V

    goto :goto_0

    .line 216
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v3, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 212
    return-void
.end method

.method private unregisterListeners()V
    .locals 4

    .prologue
    .line 241
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 243
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->unregisterListener()V

    goto :goto_0

    .line 245
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 617
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 618
    const-string/jumbo v4, "airplane_mode_on"

    const/4 v5, 0x0

    .line 617
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 618
    const/4 v4, 0x1

    .line 617
    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 619
    .local v0, "airplaneMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_3

    .line 620
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 621
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 623
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    .line 625
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setAirplaneMode(Z)V

    goto :goto_1

    .line 617
    .end local v0    # "airplaneMode":Z
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v2    # "mobileSignalController$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "airplaneMode":Z
    goto :goto_0

    .line 627
    .restart local v2    # "mobileSignalController$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 616
    .end local v2    # "mobileSignalController$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private updateConnectivity()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 675
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 676
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 677
    array-length v7, v6

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 679
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v8

    array-length v9, v8

    move v2, v3

    :goto_1
    if-ge v2, v9, :cond_1

    aget v1, v8, v2

    .line 680
    .local v1, "transportType":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    .line 681
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 682
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    .line 679
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 677
    .end local v1    # "transportType":I
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 688
    .end local v0    # "nc":Landroid/net/NetworkCapabilities;
    :cond_2
    const-string/jumbo v2, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string/jumbo v2, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 694
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 695
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    .line 699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 674
    return-void

    :cond_3
    move v2, v4

    .line 692
    goto :goto_2

    :cond_4
    move v3, v4

    .line 693
    goto :goto_3
.end method

.method private updateMobileControllers()V
    .locals 2

    .prologue
    .line 508
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v1, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 512
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_1

    .line 513
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 516
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 521
    return-void

    .line 523
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySubscriptionsChangeCallBack(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 507
    return-void
.end method


# virtual methods
.method public addCarrierLabel(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 268
    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    .line 263
    return-void
.end method

.method public addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    .line 2213
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 354
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 357
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 351
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 342
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const v3, 0x7f020579

    .line 343
    const v4, 0x7f0901cb

    .line 342
    invoke-interface {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 344
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 347
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 339
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    return-void
.end method

.method public addSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V
    .locals 1
    .param p1, "sb"    # Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 34
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "Entering demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 835
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 836
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .line 831
    :cond_0
    :goto_1
    return-void

    .line 836
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 838
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 839
    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "Exiting demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "controller$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 845
    .local v16, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->resetLastState()V

    goto :goto_2

    .line 847
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->resetLastState()V

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto :goto_1

    .line 851
    .end local v17    # "controller$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    const-string/jumbo v3, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 853
    .local v15, "airplane":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 854
    const-string/jumbo v3, "show"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 855
    .local v27, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 856
    .local v21, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v2, v0, :cond_5

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    const v4, 0x7f020579

    .line 858
    const v5, 0x7f0901cb

    .line 857
    move/from16 v0, v27

    invoke-interface {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 861
    .end local v2    # "i":I
    .end local v21    # "length":I
    .end local v27    # "show":Z
    :cond_5
    const-string/jumbo v3, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 862
    .local v19, "fully":Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 863
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->setInetCondition(I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "controller$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 866
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(II)V

    goto :goto_5

    .line 863
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v17    # "controller$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 869
    :cond_7
    const-string/jumbo v3, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 870
    .local v33, "wifi":Ljava/lang/String;
    if-eqz v33, :cond_9

    .line 871
    const-string/jumbo v3, "show"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 872
    .restart local v27    # "show":Z
    const-string/jumbo v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 873
    .local v22, "level":Ljava/lang/String;
    if-eqz v22, :cond_8

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string/jumbo v3, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, -0x1

    :goto_6
    iput v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    if-ltz v3, :cond_b

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    .line 878
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move/from16 v0, v27

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 881
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    :cond_9
    const-string/jumbo v3, "sims"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 882
    .local v28, "sims":Ljava/lang/String;
    if-eqz v28, :cond_d

    .line 883
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 884
    .local v26, "num":I
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v32, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_c

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v31

    .line 888
    .local v31, "start":I
    move/from16 v2, v31

    .restart local v2    # "i":I
    :goto_8
    add-int v3, v31, v26

    if-ge v2, v3, :cond_c

    .line 889
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v9, ""

    .line 890
    const-string/jumbo v14, ""

    .line 889
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 890
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v4, v2

    .line 889
    invoke-direct/range {v1 .. v14}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    .line 891
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 894
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v10, p0

    move-object v11, v1

    .line 892
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 875
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "i":I
    .end local v26    # "num":I
    .end local v28    # "sims":Ljava/lang/String;
    .end local v31    # "start":I
    .end local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v22    # "level":Ljava/lang/String;
    .restart local v27    # "show":Z
    :cond_a
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_6

    .line 876
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 897
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    .restart local v26    # "num":I
    .restart local v28    # "sims":Ljava/lang/String;
    .restart local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 898
    .local v24, "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    move/from16 v0, v24

    if-ge v2, v0, :cond_d

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, v32

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 902
    .end local v2    # "i":I
    .end local v24    # "n":I
    .end local v26    # "num":I
    .end local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_d
    const-string/jumbo v3, "nosim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 903
    .local v25, "nosim":Ljava/lang/String;
    if-eqz v25, :cond_e

    .line 904
    const-string/jumbo v3, "show"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 905
    .restart local v27    # "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 906
    .restart local v24    # "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    move/from16 v0, v24

    if-ge v2, v0, :cond_e

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move/from16 v0, v27

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 910
    .end local v2    # "i":I
    .end local v24    # "n":I
    .end local v27    # "show":Z
    :cond_e
    const-string/jumbo v3, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 911
    .local v23, "mobile":Ljava/lang/String;
    if-eqz v23, :cond_11

    .line 912
    const-string/jumbo v3, "show"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 913
    .restart local v27    # "show":Z
    const-string/jumbo v3, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 914
    .local v18, "datatype":Ljava/lang/String;
    const-string/jumbo v3, "slot"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 915
    .local v30, "slotString":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v29, 0x0

    .line 917
    .local v29, "slot":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 918
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 917
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    aget-object v16, v3, v29

    .line 919
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eqz v18, :cond_13

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    .line 920
    if-eqz v18, :cond_f

    .line 921
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    .line 922
    const-string/jumbo v4, "1x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 921
    :goto_d
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 932
    :cond_f
    sget-object v20, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 933
    .local v20, "icons":[[I
    const-string/jumbo v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 934
    .restart local v22    # "level":Ljava/lang/String;
    if-eqz v22, :cond_10

    .line 935
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    const-string/jumbo v4, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, -0x1

    :goto_e
    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 937
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    if-ltz v4, :cond_1d

    const/4 v4, 0x1

    :goto_f
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    .line 939
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    move/from16 v0, v27

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    .line 940
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    .line 942
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v18    # "datatype":Ljava/lang/String;
    .end local v20    # "icons":[[I
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    .end local v29    # "slot":I
    .end local v30    # "slotString":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto/16 :goto_1

    .line 915
    .restart local v18    # "datatype":Ljava/lang/String;
    .restart local v27    # "show":Z
    .restart local v30    # "slotString":Ljava/lang/String;
    :cond_12
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .restart local v29    # "slot":I
    goto :goto_b

    .line 919
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 923
    :cond_14
    const-string/jumbo v4, "3g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    .line 924
    :cond_15
    const-string/jumbo v4, "4g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    .line 925
    :cond_16
    const-string/jumbo v4, "e"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    .line 926
    :cond_17
    const-string/jumbo v4, "g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 927
    :cond_18
    const-string/jumbo v4, "h"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 928
    :cond_19
    const-string/jumbo v4, "lte"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 929
    :cond_1a
    const-string/jumbo v4, "roam"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 930
    :cond_1b
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 936
    .restart local v20    # "icons":[[I
    .restart local v22    # "level":Ljava/lang/String;
    :cond_1c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v20, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_e

    .line 937
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_f
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 798
    const-string/jumbo v2, "NetworkController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string/jumbo v2, "  - telephony ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    const-string/jumbo v2, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 804
    const-string/jumbo v2, "  - Bluetooth ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v2, "  mBtReverseTethered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 808
    const-string/jumbo v2, "  - connectivity ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string/jumbo v2, "  mConnectedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 811
    const-string/jumbo v2, "  mValidatedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 813
    const-string/jumbo v2, "  mInetCondition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 815
    const-string/jumbo v2, "  mAirplaneMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 817
    const-string/jumbo v2, "  mLocale="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 820
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 821
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 823
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 797
    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    return v0
.end method

.method public getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    return-object v0
.end method

.method public getSimCount()I
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 480
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 481
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 483
    :cond_1
    aget v1, v0, v2

    return v1
.end method

.method handleConfigurationChanged()V
    .locals 3

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 501
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    goto :goto_0

    .line 503
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 499
    return-void
.end method

.method handleIMSAction(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 452
    const-string/jumbo v6, "android:regState"

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 453
    .local v2, "regState":I
    const-string/jumbo v6, "android:phone_id"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 455
    .local v1, "phoneId":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 456
    .local v0, "imsSubId":I
    const-string/jumbo v6, "NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleIMSAction regState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mAirplaneMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 458
    .local v4, "subId":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 459
    .local v3, "signalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setImsRegState(I)V

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1

    .line 461
    .end local v3    # "signalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v4    # "subId":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateIMSActionIcon()V

    .line 451
    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "allSubscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .line 605
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 606
    return v4

    .line 608
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 609
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    return v4

    .line 613
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 6

    .prologue
    .line 307
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    .line 308
    .local v2, "voiceSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 309
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mobileSignalController$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 311
    .local v0, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    const/4 v3, 0x0

    return v3

    .line 316
    .end local v0    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v1    # "mobileSignalController$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v3

    return v3

    .line 319
    :cond_2
    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find controller for voice sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x1

    return v3
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 398
    const-string/jumbo v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 397
    if-eqz v5, :cond_2

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    const-string/jumbo v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 402
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleConfigurationChanged()V

    goto :goto_0

    .line 404
    :cond_3
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 406
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto :goto_0

    .line 408
    :cond_4
    const-string/jumbo v5, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_0

    .line 411
    :cond_5
    const-string/jumbo v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 414
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "controller$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 415
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 418
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v2    # "controller$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v5, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 419
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleIMSAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :cond_7
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 422
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_0

    .line 424
    :cond_8
    const-string/jumbo v5, "subscription"

    .line 425
    const/4 v6, -0x1

    .line 424
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 426
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 427
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 429
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 430
    .local v3, "slotId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 432
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 435
    .end local v3    # "slotId":I
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 437
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSpnBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 442
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    .line 444
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSpnBroadcast(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 384
    return-void
.end method

.method recalculateEmergency()V
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    .line 330
    .local v0, "emergencyOnly":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 331
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 328
    return-void
.end method

.method refreshCarrierLabel()V
    .locals 10

    .prologue
    const v9, 0x7f090206

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 745
    .local v0, "context":Landroid/content/Context;
    sget-boolean v7, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mShowMzCarrierLabel:Z

    if-eqz v7, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabelMz()V

    .line 747
    return-void

    .line 750
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .line 751
    .local v6, "wifiState":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
    const-string/jumbo v4, ""

    .line 752
    .local v4, "label":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 753
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v1, v4, v7, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getLabel(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 758
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v7, :cond_6

    .line 762
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v7, :cond_7

    .line 766
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 777
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataConnected()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-eqz v7, :cond_a

    .line 786
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 787
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v5, :cond_b

    .line 788
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;

    invoke-interface {v7, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;->setCarrierLabel(Ljava/lang/String;)V

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 759
    .end local v3    # "i":I
    .end local v5    # "length":I
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f09016e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 763
    :cond_7
    const v7, 0x7f090216

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 768
    :cond_8
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v7, :cond_9

    .line 770
    const-string/jumbo v4, ""

    goto :goto_3

    .line 772
    :cond_9
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v7, :cond_5

    .line 773
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 777
    :cond_a
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v7, :cond_5

    .line 778
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v7, :cond_5

    .line 780
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 742
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    :cond_b
    return-void
.end method

.method refreshCarrierLabelMz()V
    .locals 10

    .prologue
    .line 719
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v8, :cond_0

    .line 720
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "label":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 733
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 734
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;

    invoke-interface {v8, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;->setCarrierLabel(Ljava/lang/String;)V

    .line 733
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    .end local v2    # "i":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "length":I
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 723
    .restart local v4    # "label":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09016d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "mNetworkNameSeparator":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v7, v8, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 725
    .local v7, "mobileSignalControllers":[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    const/4 v3, 0x0

    .line 726
    .local v3, "index":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 727
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    aput-object v0, v7, v3

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 730
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v8

    invoke-interface {v8, v7, v6, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 717
    .end local v1    # "controller$iterator":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v6    # "mNetworkNameSeparator":Ljava/lang/String;
    .end local v7    # "mobileSignalControllers":[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .restart local v2    # "i":I
    .restart local v5    # "length":I
    :cond_2
    return-void
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 550
    .local v15, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 550
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 553
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 556
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-direct {v11, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 557
    .local v11, "cachedControllers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 558
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    .line 559
    .local v17, "num":I
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_5

    .line 560
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v19

    .line 562
    .local v19, "subId":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 564
    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v18

    .line 565
    .local v18, "slotId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 569
    .end local v18    # "slotId":I
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 570
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 571
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v9, p0

    .line 569
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V

    .line 572
    .local v2, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v18

    .line 575
    .restart local v18    # "slotId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 576
    .local v16, "networkName":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 577
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setNetworkName(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalNames:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 581
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-nez v3, :cond_4

    .line 582
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 584
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v3, :cond_1

    .line 585
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->registerListener()V

    goto :goto_2

    .line 589
    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v16    # "networkName":Ljava/lang/String;
    .end local v18    # "slotId":I
    .end local v19    # "subId":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v3, :cond_7

    .line 590
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 591
    .local v13, "key":Ljava/lang/Integer;
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    if-ne v3, v4, :cond_6

    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 594
    :cond_6
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->unregisterListener()V

    goto :goto_3

    .line 599
    .end local v13    # "key":Ljava/lang/Integer;
    .end local v14    # "key$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 600
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 540
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 367
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 366
    return-void
.end method

.method public updateIMSActionIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "iconId":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 467
    .local v5, "subId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 468
    .local v4, "signalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getImsRegState()I

    move-result v1

    .line 469
    .local v1, "regState":I
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isLteNetWork()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-nez v7, :cond_0

    .line 470
    if-nez v1, :cond_0

    const v0, 0x7f020366

    goto :goto_0

    .line 473
    .end local v1    # "regState":I
    .end local v4    # "signalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v5    # "subId":Ljava/lang/Integer;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "signalCluster$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 474
    .local v2, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    if-eqz v0, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-interface {v2, v7, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setVolteMode(ZI)V

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    .line 464
    .end local v2    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_3
    return-void
.end method

.method protected updateNoSims()V
    .locals 2

    .prologue
    .line 532
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 533
    .local v0, "hasNoSims":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    if-eq v0, v1, :cond_0

    .line 534
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 531
    :cond_0
    return-void

    .line 532
    .end local v0    # "hasNoSims":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasNoSims":Z
    goto :goto_0
.end method
