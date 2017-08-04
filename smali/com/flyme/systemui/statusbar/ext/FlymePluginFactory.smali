.class public Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;
.super Ljava/lang/Object;
.source "FlymePluginFactory.java"


# static fields
.field private static DEBUG_CAT:Z

.field private static DEBUG_CHINAMOBILE:Z

.field private static DEBUG_CHINATELECOM:Z

.field private static DEBUG_CHINAUNICOM:Z

.field private static DEBUG_SHOPDEMO:Z

.field private static IS_CAT:Z

.field private static IS_CHINAMOBILE:Z

.field private static IS_CHINAMOBILE_CUSTOMIZE_C:Z

.field private static IS_CHINATELECOM:Z

.field private static IS_CHINAUNICOM:Z

.field private static IS_SHOPDEMO:Z

.field private static mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

.field private static mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

.field private static mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

.field private static mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

.field private static mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

.field private static mRoamingIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;

.field private static mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CAT:Z

    .line 19
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAUNICOM:Z

    .line 20
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAMOBILE:Z

    .line 21
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINATELECOM:Z

    .line 22
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_SHOPDEMO:Z

    .line 23
    sget-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CAT:Z

    :goto_0
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    .line 24
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAUNICOM:Z

    :goto_1
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    .line 25
    const-string/jumbo v0, "chinamobile_c"

    const-string/jumbo v2, "ro.customize.isp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_C:Z

    .line 26
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_C:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAMOBILE:Z

    :goto_2
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    .line 27
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINATELECOM:Z

    :goto_3
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM:Z

    .line 28
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_SHOPDEMO:Z

    :cond_0
    sput-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_SHOPDEMO:Z

    .line 10
    return-void

    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    :cond_2
    move v0, v1

    .line 24
    goto :goto_1

    :cond_3
    move v0, v1

    .line 26
    goto :goto_2

    :cond_4
    move v0, v1

    .line 27
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    if-nez v0, :cond_1

    .line 50
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-eqz v0, :cond_2

    .line 51
    :cond_0
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconDouble;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconDouble;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 57
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    return-object v0

    .line 53
    :cond_2
    :try_start_1
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;
    .locals 4

    .prologue
    .line 105
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    if-nez v0, :cond_0

    .line 107
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;-><init>(ZZ)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 114
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    return-object v0

    .line 110
    :cond_1
    :try_start_1
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;-><init>(ZZ)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 61
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    if-nez v2, :cond_0

    .line 63
    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    if-eqz v2, :cond_1

    .line 64
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 75
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    return-object v0

    .line 66
    :cond_1
    :try_start_1
    new-instance v2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    .line 67
    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_SHOPDEMO:Z

    if-eqz v2, :cond_3

    .line 68
    new-instance v2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v3, :cond_2

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 70
    :cond_3
    :try_start_2
    new-instance v2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v3, :cond_4

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getNetworkTypeIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;
    .locals 4

    .prologue
    .line 79
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    if-nez v0, :cond_1

    .line 81
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;-><init>(ZZ)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 88
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    return-object v0

    .line 84
    :cond_2
    :try_start_1
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;-><init>(ZZ)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
    .locals 3

    .prologue
    .line 118
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    if-nez v0, :cond_1

    .line 120
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-eqz v0, :cond_2

    .line 121
    :cond_0
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    invoke-direct {v0, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;-><init>(Z)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 127
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    return-object v0

    .line 123
    :cond_2
    :try_start_1
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRoamingIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;
    .locals 3

    .prologue
    .line 92
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mRoamingIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;

    if-nez v0, :cond_0

    .line 94
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CAT:Z

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;-><init>(Z)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mRoamingIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 101
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mRoamingIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;

    return-object v0

    .line 97
    :cond_1
    :try_start_1
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;-><init>(Z)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mRoamingIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSignalNoSIMPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;

    if-nez v0, :cond_1

    .line 33
    sget-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CAT:Z

    if-eqz v0, :cond_2

    .line 34
    :cond_0
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMDouble;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMDouble;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 44
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;

    return-object v0

    .line 36
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_SHOPDEMO:Z

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMShop;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMShop;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :cond_3
    :try_start_2
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMSingle;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMSingle;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mSignalNoSIM:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
