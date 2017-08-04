.class public Lcom/flyme/systemui/qs/tiles/SmartTouchTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SmartTouchTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->refreshState(Ljava/lang/Object;)V

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

    const v1, 0x7f020505

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 21
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 24
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020504

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 23
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 86
    new-instance v0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getSmartTouchController()Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "FloatTouchShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    if-nez v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 57
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->setSmartTouchOn(Z)V

    .line 58
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->refreshState(Ljava/lang/Object;)V

    .line 54
    return-void

    .line 56
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 58
    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 64
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.meizu.settings.MzSettingsActivity$MeizuSmartTouchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 70
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    if-nez v4, :cond_0

    return-void

    .line 71
    :cond_0
    if-eqz p2, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 73
    .local v2, "smartTouchOn":Z
    :goto_0
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 74
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 75
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 77
    const v1, 0x7f09008d

    .line 78
    .local v1, "label":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mContext:Landroid/content/Context;

    const v5, 0x7f09008d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 80
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 82
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 83
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 69
    return-void

    .line 72
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "label":I
    .end local v2    # "smartTouchOn":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->isSmartTouchOn()Z

    move-result v2

    .restart local v2    # "smartTouchOn":Z
    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x0

    .local v3, "userInitiated":Z
    goto :goto_1

    .line 80
    .end local v3    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "label":I
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->addSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    .line 44
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->removeSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    goto :goto_0
.end method
