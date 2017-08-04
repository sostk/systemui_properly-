.class public Lcom/flyme/systemui/qs/tiles/MuteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MuteTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/MuteTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/MuteTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/MuteTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 23
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204fb

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 22
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 25
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204fa

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 24
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 93
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MuteTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/MuteTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/MuteTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRingerModeController()Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "MuteShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 64
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->setMuteOn(Z)V

    .line 65
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/qs/tiles/MuteTile;->refreshState(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 63
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 65
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 71
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v4, :cond_0

    return-void

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 80
    .local v2, "muteOn":Z
    :goto_0
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 81
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 82
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 84
    const v1, 0x7f09008f

    .line 85
    .local v1, "label":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    const v5, 0x7f09008f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 87
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 89
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 90
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 76
    return-void

    .line 79
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "label":I
    .end local v2    # "muteOn":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->isMuteOn()Z

    move-result v2

    .restart local v2    # "muteOn":Z
    goto :goto_0

    .line 80
    :cond_2
    const/4 v3, 0x0

    .local v3, "userInitiated":Z
    goto :goto_1

    .line 87
    .end local v3    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "label":I
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MuteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MuteTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->addRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    .line 51
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->removeRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
