.class public Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;,
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;,
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final MOBILE_DATA_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

.field private mCalling:Z

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

.field private final mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

.field private mEnabled:Z

.field private mMobileMode:I


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->MOBILE_DATA_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCalling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCalling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mMobileMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/MobileDataTile;I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->getReadableNameForMode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 33
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 32
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->MOBILE_DATA_SETTINGS:Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mMobileMode:I

    .line 253
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    .line 54
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    .line 56
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    .line 52
    return-void
.end method

.method private final getReadableNameForMode(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_1
    return-object v1

    .line 200
    :pswitch_1
    const v0, 0x7f0900a3

    .line 201
    goto :goto_0

    .line 204
    :pswitch_2
    const v0, 0x7f0900a4

    .line 205
    goto :goto_0

    .line 207
    :pswitch_3
    const v0, 0x7f0900a5

    .line 208
    goto :goto_0

    .line 211
    :pswitch_4
    const v0, 0x7f0900a6

    .line 212
    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private final isDefaultDataSimRadioOn()Z
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 188
    .local v1, "subId":I
    if-ltz v1, :cond_0

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v0

    .line 190
    :goto_0
    const-string/jumbo v2, "MobileDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDefaultDataSimRadioOn subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    .local v0, "isRadioOn":Z
    goto :goto_0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "MobileDataShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f09009e

    const/4 v3, 0x1

    .line 93
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnabled:Z

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-nez v1, :cond_1

    .line 96
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 98
    .local v0, "subId":I
    if-gez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showAlert(Ljava/lang/String;Z)V

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showAlert(Ljava/lang/String;Z)V

    .line 104
    return-void

    .line 107
    .end local v0    # "subId":I
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->setMobileDataEnabled(Z)V

    .line 92
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showAlert(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->canConfigMobileData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->showDetail(Z)V

    .line 121
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f0204e8

    const/4 v6, 0x0

    .line 140
    const-string/jumbo v5, "MobileDataTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleUpdateState arg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p2, :cond_1

    .line 145
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    iget v6, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mMobileMode:I

    invoke-virtual {v5, v6}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->onMobileDataModeChanged(I)V

    .line 149
    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    .line 152
    check-cast v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    .line 154
    .local v0, "cb":Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    if-eqz v5, :cond_5

    .line 154
    :cond_2
    const/4 v3, 0x0

    .line 156
    :goto_0
    iput-boolean v3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnabled:Z

    .line 157
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->isMobileDataEnabled()Z

    move-result v4

    .line 158
    .local v4, "mobileDataEnabled":Z
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 159
    iget v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_7

    iget-object v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    .line 160
    .local v1, "dataConnected":Z
    :goto_1
    iget v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v5, :cond_8

    const/4 v2, 0x1

    .line 162
    .local v2, "dataNotConnected":Z
    :goto_2
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    .line 163
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 164
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 165
    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityIn:Z

    :goto_3
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 166
    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_3

    iget-boolean v6, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityOut:Z

    :cond_3
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 167
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 168
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v6, 0x7f090093

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 170
    if-nez v3, :cond_a

    .line 171
    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 182
    :cond_4
    :goto_4
    const-string/jumbo v5, "MobileDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleUpdateState state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 155
    .end local v1    # "dataConnected":Z
    .end local v2    # "dataNotConnected":Z
    .end local v4    # "mobileDataEnabled":Z
    :cond_5
    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 154
    if-eqz v5, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->isDefaultDataSimRadioOn()Z

    move-result v3

    .local v3, "enabled":Z
    goto :goto_0

    .line 159
    .end local v3    # "enabled":Z
    .restart local v4    # "mobileDataEnabled":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "dataConnected":Z
    goto :goto_1

    .line 158
    .end local v1    # "dataConnected":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "dataConnected":Z
    goto :goto_1

    .line 160
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "dataNotConnected":Z
    goto :goto_2

    :cond_9
    move v5, v6

    .line 165
    goto :goto_3

    .line 172
    :cond_a
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v5, :cond_b

    .line 173
    const v5, 0x7f0204e9

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 174
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->canConfigMobileData()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    iget-object v5, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileDataModeDesc:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    goto :goto_4

    .line 178
    :cond_b
    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V

    .line 65
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;->canConfigMobileData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 78
    .local v0, "support":Z
    :goto_0
    return v0

    .line 77
    .end local v0    # "support":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "support":Z
    goto :goto_0
.end method
