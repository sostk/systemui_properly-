.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHasMobileData:Z

.field private mWifiActivity:I

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasMobileData"    # Z
    .param p5, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 966
    .local p3, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;>;"
    .local p4, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;>;"
    const-string/jumbo v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 968
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 969
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mHasMobileData:Z

    .line 970
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)V

    .line 971
    .local v10, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v11

    .line 973
    .local v11, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v11, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v10, v11}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 978
    const-string/jumbo v1, "Wi-Fi Icons"

    .line 979
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 980
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 981
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 982
    const v5, 0x7f020622

    .line 983
    const v6, 0x7f02011e

    .line 984
    const v7, 0x7f020622

    .line 985
    const v8, 0x7f02011e

    .line 986
    const v9, 0x7f0901a7

    .line 977
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v0, v12, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 989
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiActivity:I

    .line 965
    return-void
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v6, 0x0

    .line 1094
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1095
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1096
    return-object v3

    .line 1099
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1100
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1101
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1102
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1103
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    .line 1101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_2
    return-object v6
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
    .locals 1

    .prologue
    .line 995
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;-><init>()V

    return-object v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1040
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1042
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string/jumbo v4, "wifi_state"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1043
    const/4 v7, 0x3

    .line 1042
    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    .line 1045
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string/jumbo v4, "wifi_state"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1046
    const/4 v7, 0x2

    .line 1045
    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    .line 1047
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string/jumbo v4, "wifi_state"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    .line 1090
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListenersIfNecessary()V

    .line 1039
    return-void

    :cond_1
    move v4, v6

    .line 1042
    goto :goto_0

    :cond_2
    move v4, v6

    .line 1045
    goto :goto_1

    :cond_3
    move v5, v6

    .line 1047
    goto :goto_2

    .line 1050
    :cond_4
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1052
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1053
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :goto_4
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    .line 1054
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    .line 1055
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1057
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1058
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1061
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-eqz v3, :cond_9

    .line 1063
    if-eqz v1, :cond_8

    .line 1064
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1076
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    :goto_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 1077
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    .line 1078
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    goto :goto_3

    :cond_6
    move v4, v6

    .line 1053
    goto :goto_4

    .line 1059
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    goto :goto_5

    .line 1066
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_6

    .line 1069
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1070
    if-eqz v1, :cond_5

    .line 1071
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_a

    :goto_7
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    goto :goto_6

    :cond_a
    move v5, v6

    goto :goto_7

    .line 1081
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1083
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string/jumbo v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->rssi:I

    .line 1085
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .line 1086
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->rssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    .line 1085
    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    goto/16 :goto_3
.end method

.method public notifyListeners()V
    .locals 17

    .prologue
    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    if-eqz v1, :cond_1

    .line 1003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mHasMobileData:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    move/from16 v16, v0

    .line 1005
    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1006
    :goto_1
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 1007
    .local v15, "ssidPresent":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getContentDescription()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v7

    .line 1008
    .local v7, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 1009
    .local v13, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v13, :cond_6

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getQsCurrentIconId()I

    move-result v4

    .line 1012
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityIn:Z

    .line 1013
    :goto_4
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityOut:Z

    .line 1014
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    .line 1010
    invoke-interface/range {v1 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1009
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1003
    .end local v7    # "contentDescription":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "length":I
    .end local v15    # "ssidPresent":Z
    :cond_0
    const/16 v16, 0x1

    .local v16, "wifiVisible":Z
    goto :goto_0

    .line 1002
    .end local v16    # "wifiVisible":Z
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "wifiVisible":Z
    goto/16 :goto_0

    .line 1005
    .end local v16    # "wifiVisible":Z
    :cond_2
    const/4 v8, 0x0

    .local v8, "wifiDesc":Ljava/lang/String;
    goto :goto_1

    .line 1006
    .end local v8    # "wifiDesc":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "ssidPresent":Z
    goto :goto_2

    .line 1012
    .restart local v7    # "contentDescription":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v13    # "length":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 1013
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 1017
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    .line 1018
    .local v14, "signalClustersLength":I
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v14, :cond_a

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    if-eqz v1, :cond_7

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    const v2, 0x7f020604

    move/from16 v0, v16

    invoke-interface {v1, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 1018
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1025
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityIn:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityOut:Z

    if-eqz v1, :cond_9

    .line 1026
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_INOUT:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    aget-object v2, v3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiActivity:I

    aget v2, v2, v3

    move/from16 v0, v16

    invoke-interface {v1, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_7

    .line 1029
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getCurrentIconId()I

    move-result v2

    move/from16 v0, v16

    invoke-interface {v1, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_7

    .line 999
    :cond_a
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "wifiActivity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1112
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiActivity:I

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eq p1, v4, :cond_1

    .line 1115
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 1114
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityIn:Z

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eq p1, v4, :cond_0

    .line 1117
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1116
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityOut:Z

    .line 1118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListenersIfNecessary()V

    .line 1110
    return-void

    :cond_1
    move v1, v2

    .line 1114
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1115
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1117
    goto :goto_1
.end method
