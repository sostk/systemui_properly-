.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$1;
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
.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private mDetailItemClickManually:Z

.field private final mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

.field private mUserInitiated:Z

.field private mUserIntermediate:Z

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

.field private mWifiDisabling:Z


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiDisabling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserIntermediate:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    .line 317
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 55
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 57
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 53
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 276
    if-nez p0, :cond_0

    return-object v1

    .line 277
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 278
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 279
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 281
    :cond_1
    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "WiFiShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->isShopDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    .line 107
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 140
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.wifi.WifiSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiDisabling:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 125
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 131
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_INPROGRESS:Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    .line 134
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 119
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 13
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->visible:Z

    .line 147
    const-string/jumbo v10, "WifiTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleUpdateState arg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez p2, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 150
    .local v3, "r":Landroid/content/res/Resources;
    instance-of v10, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 151
    check-cast v5, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 152
    .local v5, "ub":Lcom/android/systemui/qs/QSTile$UserBoolean;
    iget-boolean v10, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 153
    iget-boolean v10, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->intermediate:Z

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserIntermediate:Z

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->intermediate:Z

    .line 154
    iget-boolean v10, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    .line 155
    iget-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v10, :cond_1

    .line 156
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 157
    const v10, 0x7f02050a

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 158
    const v10, 0x7f090089

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 160
    :cond_1
    const-string/jumbo v10, "WifiTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UserBoolean state.enabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " state.intermediate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->intermediate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 161
    const-string/jumbo v12, " mDetailItemClickManually="

    .line 160
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 161
    iget-boolean v12, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 160
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .end local v5    # "ub":Lcom/android/systemui/qs/QSTile$UserBoolean;
    :cond_2
    move-object v0, p2

    .line 164
    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 166
    .local v0, "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    if-eqz v10, :cond_4

    .line 167
    const-string/jumbo v10, "WifiTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUserInitiated mUserIntermediate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserIntermediate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cb.enabling:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 168
    const-string/jumbo v12, ".enabled:"

    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 168
    iget-boolean v12, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 168
    const-string/jumbo v12, " cb.disabling:"

    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 168
    iget-boolean v12, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->disabling:Z

    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserIntermediate:Z

    if-eqz v10, :cond_8

    .line 170
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    if-nez v10, :cond_3

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v10, :cond_7

    .line 171
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    .line 185
    :cond_4
    :goto_0
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v10, :cond_b

    iget v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v10, :cond_b

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v10, :cond_b

    const/4 v6, 0x1

    .line 187
    .local v6, "wifiConnected":Z
    :goto_1
    iget-boolean v7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connecting:Z

    .line 189
    .local v7, "wifiConnecting":Z
    iget v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v10, :cond_c

    iget-object v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v10, :cond_c

    const/4 v9, 0x1

    .line 190
    .local v9, "wifiNotConnected":Z
    :goto_2
    iget-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-boolean v11, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v10, v11, :cond_d

    const/4 v2, 0x1

    .line 191
    .local v2, "enabledChanging":Z
    :goto_3
    if-eqz v2, :cond_5

    .line 192
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v11, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v10, v11}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 193
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v10}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    .line 195
    :cond_5
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 196
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 197
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v10, :cond_e

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    :goto_4
    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 198
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    :goto_5
    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 200
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->intermediate:Z

    .line 202
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 204
    iget-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-nez v10, :cond_10

    .line 206
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 207
    const v10, 0x7f02050a

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 209
    const v10, 0x7f090089

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 210
    const v10, 0x7f0901a6

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "signalContentDescription":Ljava/lang/String;
    :goto_6
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 246
    const/4 v12, 0x0

    aput-object v4, v11, v12

    .line 245
    const v12, 0x7f0901df

    .line 244
    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/String;

    .line 247
    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 248
    .local v8, "wifiName":Ljava/lang/String;
    iget-boolean v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-eqz v10, :cond_6

    .line 249
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0901ac

    invoke-virtual {v3, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 251
    :cond_6
    iput-object v8, p1, Lcom/android/systemui/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/String;

    .line 253
    const-string/jumbo v10, "WifiTile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "state.label="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 254
    const-string/jumbo v12, " state.enabled="

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 254
    iget-boolean v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 255
    const-string/jumbo v12, " state.connected="

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 255
    iget-boolean v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 256
    const-string/jumbo v12, " state.intermediate="

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 256
    iget-boolean v12, p1, Lcom/android/systemui/qs/QSTile$SignalState;->intermediate:Z

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 257
    const-string/jumbo v12, " mDetailItemClickManually"

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 257
    iget-boolean v12, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 173
    .end local v2    # "enabledChanging":Z
    .end local v4    # "signalContentDescription":Ljava/lang/String;
    .end local v6    # "wifiConnected":Z
    .end local v7    # "wifiConnecting":Z
    .end local v8    # "wifiName":Ljava/lang/String;
    .end local v9    # "wifiNotConnected":Z
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    .line 174
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 177
    :cond_8
    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez v10, :cond_9

    iget-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabling:Z

    if-eqz v10, :cond_a

    .line 180
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 181
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 178
    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    goto/16 :goto_0

    .line 185
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "wifiConnected":Z
    goto/16 :goto_1

    .line 189
    .restart local v7    # "wifiConnecting":Z
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "wifiNotConnected":Z
    goto/16 :goto_2

    .line 190
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "enabledChanging":Z
    goto/16 :goto_3

    .line 197
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 198
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 211
    :cond_10
    if-eqz v6, :cond_12

    .line 213
    const v10, 0x7f02050b

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 216
    iget-object v10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "desc":Ljava/lang/String;
    const-string/jumbo v10, "<unknown ssid>"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 218
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 221
    :cond_11
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .restart local v4    # "signalContentDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 223
    .end local v1    # "desc":Ljava/lang/String;
    .end local v4    # "signalContentDescription":Ljava/lang/String;
    :cond_12
    if-eqz v7, :cond_13

    .line 224
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 225
    const v10, 0x7f02050b

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 226
    const v10, 0x7f09009b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 227
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .restart local v4    # "signalContentDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 229
    .end local v4    # "signalContentDescription":Ljava/lang/String;
    :cond_13
    if-eqz v9, :cond_15

    .line 231
    const v10, 0x7f02050b

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 232
    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    if-eqz v10, :cond_14

    .line 233
    const v10, 0x7f09009b

    .line 232
    :goto_7
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 235
    const v10, 0x7f0901a7

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "signalContentDescription":Ljava/lang/String;
    goto/16 :goto_6

    .line 233
    .end local v4    # "signalContentDescription":Ljava/lang/String;
    :cond_14
    const v10, 0x7f090089

    goto :goto_7

    .line 238
    :cond_15
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailItemClickManually:Z

    .line 239
    const v10, 0x7f02050b

    invoke-static {v10}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 241
    const v10, 0x7f090089

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/String;

    .line 242
    const v10, 0x7f0901a6

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "signalContentDescription":Ljava/lang/String;
    goto/16 :goto_6
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 76
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mUserInitiated:Z

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
