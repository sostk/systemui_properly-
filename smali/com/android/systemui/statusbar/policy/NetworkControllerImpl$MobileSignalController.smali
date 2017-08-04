.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field private mIsNeedAdjustFlymeSignalLevel:Ljava/lang/Boolean;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/NetworkType;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p7, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p8, "info"    # Landroid/telephony/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;",
            "Z",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            "Landroid/telephony/SubscriptionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;>;"
    .local p6, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;>;"
    const/4 v3, 0x0

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1210
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1211
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    .line 1213
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    .line 1228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1229
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 1230
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1231
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1232
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;

    invoke-virtual {p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1233
    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 1235
    const v0, 0x10402eb

    .line 1234
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 1237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mapIconSets()V

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateDataSim()V

    .line 1224
    return-void
.end method

.method private adjustFlymeSignalStrengthLevel()V
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mIsNeedAdjustFlymeSignalLevel:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1651
    sget-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    array-length v0, v0

    sget v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    if-lt v0, v1, :cond_0

    .line 1652
    sget v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    const/4 v1, 0x5

    if-ge v1, v0, :cond_4

    .line 1653
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mIsNeedAdjustFlymeSignalLevel:Ljava/lang/Boolean;

    .line 1659
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mIsNeedAdjustFlymeSignalLevel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 1663
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    sget v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    .line 1664
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    sget v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 1649
    :cond_3
    return-void

    .line 1655
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mIsNeedAdjustFlymeSignalLevel:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1488
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1502
    return v0

    .line 1497
    :pswitch_0
    return v1

    .line 1500
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1505
    :cond_1
    return v1

    .line 1495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1510
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1519
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 1520
    .local v0, "iconMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 1521
    if-eqz v0, :cond_0

    .line 1522
    if-ne v0, v1, :cond_1

    .line 1520
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1522
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1520
    goto :goto_0

    .line 1524
    .end local v0    # "iconMode":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    :cond_4
    return v2
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1367
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1369
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1370
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1372
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1373
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1375
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1377
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1376
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1378
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1379
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1380
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1382
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1395
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1396
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1397
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 1398
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1401
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1402
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1404
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspapDataDistinguishable:Z

    if-eqz v1, :cond_1

    .line 1405
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1407
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1409
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1411
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_3

    .line 1412
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1366
    :goto_1
    return-void

    .line 1384
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1385
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1384
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1386
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1387
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1386
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1388
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1389
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1388
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1390
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1391
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1390
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1392
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 1414
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1542
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1543
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    .line 1555
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1541
    return-void

    .line 1544
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private final updateTelephony()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1597
    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->hasService()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1598
    const-string/jumbo v6, " ss="

    .line 1597
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1598
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1597
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1603
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->hasService()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    .line 1604
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-eqz v2, :cond_0

    .line 1605
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v2, :cond_6

    .line 1606
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 1610
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->adjustFlymeSignalStrengthLevel()V

    .line 1612
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_7

    .line 1613
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1617
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-eqz v3, :cond_1

    .line 1618
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v5, v4

    .line 1617
    :cond_1
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    .line 1620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1621
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1622
    .local v0, "dataTypeIcon":I
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getRoamingIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;

    move-result-object v2

    const v3, 0x7f0205b7

    invoke-interface {v2, v3, v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;->getRoamingIcon(II)I

    move-result v0

    .line 1623
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->createRoamingIconGroup(I)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1625
    .end local v0    # "dataTypeIcon":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eq v3, v2, :cond_3

    .line 1626
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    .line 1627
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1630
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_4

    .line 1631
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1633
    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mReadMzNetworkName:Z

    if-eqz v2, :cond_8

    .line 1634
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->getNetWorkName(Landroid/telephony/ServiceState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1645
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1595
    return-void

    :cond_5
    move v3, v5

    .line 1603
    goto/16 :goto_0

    .line 1608
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    goto/16 :goto_1

    .line 1615
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    goto/16 :goto_2

    .line 1636
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1637
    .local v1, "networkName":Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 1638
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_3

    .line 1640
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 1484
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1679
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method public bridge synthetic getContentDescription()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getContentDescription()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentIconId()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method public getImsRegState()I
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "currentLabel"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "isMobileLabel"    # Z

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-nez v1, :cond_0

    .line 1281
    const-string/jumbo v1, ""

    return-object v1

    .line 1283
    :cond_0
    const-string/jumbo v0, ""

    .line 1291
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1303
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1307
    :cond_2
    if-eqz p3, :cond_7

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1293
    :cond_3
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_6

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_1

    .line 1296
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1299
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    .line 1300
    const v2, 0x7f090206

    .line 1299
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1310
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1311
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_8

    .line 1310
    .end local v0    # "mobileLabel":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .restart local v0    # "mobileLabel":Ljava/lang/String;
    :cond_8
    move-object v0, p1

    .line 1311
    goto :goto_1
.end method

.method public bridge synthetic getQsCurrentIconId()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getQsCurrentIconId()I

    move-result v0

    return v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransportType()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getTransportType()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1529
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    const-string/jumbo v1, "showSpn"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1532
    const-string/jumbo v2, "spn"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    const-string/jumbo v3, "showPlmn"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1534
    const-string/jumbo v4, "plmn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1531
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateDataSim()V

    goto :goto_0
.end method

.method public bridge synthetic isDirty()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->isDirty()Z

    move-result v0

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLteNetWork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1259
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 1260
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v0

    .line 1260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners()V
    .locals 25

    .prologue
    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1422
    .local v20, "icons":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v5

    .line 1423
    .local v5, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v9

    .line 1425
    .local v9, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_3

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    if-nez v2, :cond_0

    .line 1425
    :cond_0
    const/16 v23, 0x1

    .line 1430
    .local v23, "showDataIcon":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_5

    const/16 v22, 0x1

    .line 1434
    .local v22, "onlyDataInService":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_c

    .line 1435
    if-eqz v23, :cond_6

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mQsDataType:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    aget v6, v3, v2

    .line 1436
    .local v6, "qsTypeIcon":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v21

    .line 1437
    .local v21, "length":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-eqz v3, :cond_1

    .line 1439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v3, :cond_7

    :cond_1
    move/from16 v3, v22

    .line 1443
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getQsCurrentIconId()I

    move-result v4

    .line 1445
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityIn:Z

    .line 1446
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityOut:Z

    .line 1449
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v10, :cond_2

    if-eqz v22, :cond_a

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1453
    :goto_7
    move-object/from16 v0, v20

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mIsWide:Z

    if-eqz v11, :cond_b

    if-eqz v6, :cond_b

    const/4 v11, 0x1

    .line 1438
    :goto_8
    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1437
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1427
    .end local v6    # "qsTypeIcon":I
    .end local v19    # "i":I
    .end local v21    # "length":I
    .end local v22    # "onlyDataInService":Z
    .end local v23    # "showDataIcon":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_4

    const/16 v23, 0x1

    .restart local v23    # "showDataIcon":Z
    goto/16 :goto_0

    .end local v23    # "showDataIcon":Z
    :cond_4
    const/16 v23, 0x0

    .restart local v23    # "showDataIcon":Z
    goto/16 :goto_0

    .line 1430
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "onlyDataInService":Z
    goto/16 :goto_1

    .line 1435
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "qsTypeIcon":I
    goto/16 :goto_2

    .line 1438
    .restart local v19    # "i":I
    .restart local v21    # "length":I
    :cond_7
    const/4 v3, 0x1

    goto :goto_4

    .line 1445
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 1446
    :cond_9
    const/4 v8, 0x0

    goto :goto_6

    .line 1449
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 1453
    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    .line 1456
    .end local v6    # "qsTypeIcon":I
    .end local v19    # "i":I
    .end local v21    # "length":I
    :cond_c
    if-eqz v23, :cond_e

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1457
    .local v13, "typeIcon":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v24

    .line 1459
    .local v24, "signalClustersLength":I
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getActivityIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityIn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityOut:Z

    .line 1459
    invoke-interface {v3, v4, v7, v8, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;->getActivityIcon(IZZZ)I

    move-result v14

    .line 1461
    .local v14, "activityIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateIMSActionIcon()V

    .line 1463
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 1464
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;I)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v2, :cond_f

    :cond_d
    const/4 v11, 0x0

    .line 1469
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getCurrentIconId()I

    move-result v12

    .line 1477
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_10

    if-eqz v13, :cond_10

    const/16 v17, 0x1

    .line 1478
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    move-object v15, v5

    move-object/from16 v16, v9

    .line 1467
    invoke-interface/range {v10 .. v18}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 1463
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1456
    .end local v13    # "typeIcon":I
    .end local v14    # "activityIcon":I
    .end local v19    # "i":I
    .end local v24    # "signalClustersLength":I
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "typeIcon":I
    goto/16 :goto_9

    .line 1468
    .restart local v14    # "activityIcon":I
    .restart local v19    # "i":I
    .restart local v24    # "signalClustersLength":I
    :cond_f
    const/4 v11, 0x1

    goto :goto_b

    .line 1477
    :cond_10
    const/16 v17, 0x0

    goto :goto_c

    .line 1419
    :cond_11
    return-void
.end method

.method public bridge synthetic notifyListenersIfNecessary()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->setInListener(Z)V

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1345
    const/16 v2, 0x1e1

    .line 1344
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1340
    return-void
.end method

.method public bridge synthetic saveLastState()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->saveLastState()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eq p1, v4, :cond_1

    .line 1671
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 1670
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityIn:Z

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    .line 1673
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1672
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityOut:Z

    .line 1674
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1669
    return-void

    :cond_1
    move v1, v2

    .line 1670
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1671
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1673
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 2
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    .line 1325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1320
    return-void

    .line 1323
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    goto :goto_0
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mapIconSets()V

    .line 1249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateTelephony()V

    .line 1246
    return-void
.end method

.method public setImsRegState(I)V
    .locals 1
    .param p1, "regState"    # I

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    .line 1252
    return-void
.end method

.method public bridge synthetic setInetCondition(I)V
    .locals 0
    .param p1, "inetCondition"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->setInetCondition(I)V

    return-void
.end method

.method public setInetCondition(II)V
    .locals 1
    .param p1, "inetCondition"    # I
    .param p2, "inetConditionForNetwork"    # I

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(I)V

    .line 1328
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1268
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->setInListener(Z)V

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1355
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1563
    const-string/jumbo v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkName showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1564
    const-string/jumbo v2, " showPlmn="

    .line 1563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1564
    const-string/jumbo v2, " plmn="

    .line 1563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mUpdateMzNetworkName:Z

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->getNetWorkName(Landroid/telephony/ServiceState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->updateNetWorkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1570
    return-void

    .line 1573
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1574
    .local v7, "str":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1575
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1578
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    :cond_2
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1561
    :goto_0
    return-void

    .line 1586
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0
.end method
