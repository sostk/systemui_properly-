.class public Lcom/flyme/systemui/qs/tiles/VibrateTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VibrateTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/VibrateTile$1;
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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/VibrateTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->refreshState(Ljava/lang/Object;)V

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

    const v1, 0x7f020507

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 22
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 25
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020506

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 24
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 87
    new-instance v0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/VibrateTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRingerModeController()Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "VibrateShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 58
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->setVibrateOn(Z)V

    .line 59
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->refreshState(Ljava/lang/Object;)V

    .line 55
    return-void

    .line 57
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 59
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 65
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v4, :cond_0

    return-void

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v3, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 74
    .local v3, "vibrateOn":Z
    :goto_0
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 75
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 76
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 78
    const v1, 0x7f090090

    .line 79
    .local v1, "label":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 81
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 83
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 84
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 70
    return-void

    .line 73
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "label":I
    .end local v3    # "vibrateOn":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->isVibrateOn()Z

    move-result v3

    .restart local v3    # "vibrateOn":Z
    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x0

    .local v2, "userInitiated":Z
    goto :goto_1

    .line 81
    .end local v2    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "label":I
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->addRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    .line 45
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->removeRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    goto :goto_0
.end method
