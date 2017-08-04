.class public Lcom/flyme/systemui/qs/tiles/ZenModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ZenModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;
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
.field private final mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/ZenModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 21
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204ed

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 20
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 23
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204ec

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 22
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 83
    new-instance v0, Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/ZenModeTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 29
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 27
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "DndShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 55
    .local v0, "newState":Z
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->TAG:Ljava/lang/String;

    invoke-interface {v2, v1, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 52
    return-void

    .line 54
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 61
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v4, :cond_0

    return-void

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v3, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 70
    :goto_0
    if-eqz p2, :cond_3

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 71
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 72
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 74
    const v1, 0x7f09008e

    .line 75
    .local v1, "label":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mContext:Landroid/content/Context;

    const v5, 0x7f09008e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 77
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 79
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 80
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 66
    return-void

    .line 69
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "label":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .local v3, "zenModeOn":Z
    goto :goto_0

    .end local v3    # "zenModeOn":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "zenModeOn":Z
    goto :goto_0

    .line 70
    .end local v3    # "zenModeOn":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "userInitiated":Z
    goto :goto_1

    .line 77
    .end local v2    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "label":I
    :cond_4
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 42
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    goto :goto_0
.end method
