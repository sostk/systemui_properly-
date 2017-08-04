.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;

.field private static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->refreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 47
    const-string/jumbo v0, "BluetoothController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 190
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 53
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    .line 51
    return-void
.end method

.method private getNumOfConnectedDevices()I
    .locals 6

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getPairedDevices()Ljava/util/Set;

    move-result-object v3

    .line 260
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .line 261
    .local v1, "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    iget v4, v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v5, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne v4, v5, :cond_0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    :cond_1
    return v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "BluetoothController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "composeChangeAnnouncement mState.value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "BluetoothShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 89
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 87
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 107
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.bluetooth.BluetoothSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothTurningOff()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 101
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showDetail(Z)V

    .line 93
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 13
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v12, 0x7f090218

    const v9, 0x7f0204e5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 113
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothSupported()Z

    move-result v5

    .line 114
    .local v5, "supported":Z
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v4

    .line 115
    .local v4, "enabled":Z
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v1

    .line 116
    .local v1, "connected":Z
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v2

    .line 118
    .local v2, "connecting":Z
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothTurningOn()Z

    move-result v6

    .line 119
    .local v6, "turningOn":Z
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->intermediate:Z

    .line 121
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 122
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 123
    iput-boolean v10, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    .line 124
    if-eqz v4, :cond_6

    .line 125
    sget-boolean v7, Lcom/android/systemui/qs/tiles/BluetoothTile;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothController"

    const-string/jumbo v8, "handleUpdateState enable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 127
    if-eqz v1, :cond_4

    .line 129
    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 131
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    .line 132
    const v8, 0x7f0901eb

    .line 131
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getNumOfConnectedDevices()I

    move-result v3

    .line 135
    .local v3, "count":I
    if-le v3, v11, :cond_3

    .line 136
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const v9, 0x7f09009c

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 156
    .end local v3    # "count":I
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 166
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 167
    .local v0, "bluetoothName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 168
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    .line 169
    iget-object v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    aput-object v9, v8, v10

    const v9, 0x7f0901ad

    .line 168
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "bluetoothName":Ljava/lang/String;
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 170
    .restart local v0    # "bluetoothName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/systemui/qs/tiles/BluetoothTile;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleUpdateState bluetoothName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 173
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state.contentDescription="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 174
    const-string/jumbo v9, " connected="

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 175
    const-string/jumbo v9, " connecting="

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    const-string/jumbo v9, " state.label="

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    iget-object v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 177
    const-string/jumbo v9, " state.dualLabelContentDescription="

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 177
    iget-object v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/String;

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 138
    .end local v0    # "bluetoothName":Ljava/lang/String;
    .restart local v3    # "count":I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    .end local v3    # "count":I
    :cond_4
    if-eqz v2, :cond_5

    .line 143
    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 145
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    .line 146
    const v8, 0x7f0901ea

    .line 145
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 147
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v8, 0x7f09009b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :cond_5
    invoke-static {v9}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 151
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 153
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    .line 154
    const v8, 0x7f0901e9

    .line 153
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :cond_6
    const v7, 0x7f0204e4

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 161
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 162
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    .line 163
    const v8, 0x7f0901e8

    .line 162
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 78
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
