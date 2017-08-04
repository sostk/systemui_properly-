.class public Lcom/flyme/systemui/qs/tiles/VpnTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VpnTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/VpnTile$1;
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


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/VpnTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/VpnTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 22
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020509

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 21
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 24
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020508

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 23
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 84
    new-instance v0, Lcom/flyme/systemui/qs/tiles/VpnTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/VpnTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/VpnTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getVpnController()Lcom/flyme/systemui/statusbar/policy/VpnController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "VpnShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    if-nez v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 57
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/VpnController;->setVpnEnabled(Z)V

    .line 54
    return-void

    .line 56
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 63
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.Settings$VpnSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    if-nez v6, :cond_0

    return-void

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v4, v6, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 71
    :goto_0
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v1, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 73
    .local v1, "enabled":Z
    :goto_1
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnConnecting()Z

    move-result v0

    .line 74
    .local v0, "connecting":Z
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnInitializing()Z

    move-result v2

    .line 75
    .local v2, "initializing":Z
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnWaitForReconnect()Z

    move-result v5

    .line 76
    .local v5, "waitForReconnect":Z
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .end local v5    # "waitForReconnect":Z
    :goto_2
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->intermediate:Z

    .line 77
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnSupported()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 78
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 79
    const v3, 0x7f09008a

    .line 80
    .local v3, "label":I
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mContext:Landroid/content/Context;

    const v7, 0x7f09008a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 81
    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_3
    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 68
    return-void

    .line 70
    .end local v0    # "connecting":Z
    .end local v1    # "enabled":Z
    .end local v2    # "initializing":Z
    .end local v3    # "label":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .local v4, "userInitiated":Z
    goto :goto_0

    .line 72
    .end local v4    # "userInitiated":Z
    :cond_2
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v6}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnEnabled()Z

    move-result v1

    .restart local v1    # "enabled":Z
    goto :goto_1

    .line 76
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "connecting":Z
    .restart local v2    # "initializing":Z
    .restart local v5    # "waitForReconnect":Z
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 81
    .end local v5    # "waitForReconnect":Z
    .restart local v3    # "label":I
    :cond_4
    iget-object v6, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/VpnTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/VpnTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/VpnController;->addVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    .line 44
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/VpnController;->removeVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    goto :goto_0
.end method
