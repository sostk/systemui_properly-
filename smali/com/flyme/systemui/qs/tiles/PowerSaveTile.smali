.class public Lcom/flyme/systemui/qs/tiles/PowerSaveTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PowerSaveTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;,
        Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

.field private final mDetailAdapter:Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

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
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;I)Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->getUserBoolean(I)Lcom/android/systemui/qs/QSTile$UserBoolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 27
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204e7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 26
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 29
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204e6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 28
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 101
    new-instance v0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .line 37
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getPowerSaveController()Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    .line 38
    new-instance v0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->addPowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    .line 35
    return-void
.end method

.method private final getUserBoolean(I)Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    packed-switch p1, :pswitch_data_0

    .line 127
    .end local v0    # "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    :pswitch_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .local v0, "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    goto :goto_0

    .line 121
    .local v0, "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    :pswitch_1
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .local v0, "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    if-nez v1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 70
    .local v0, "newState":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;

    invoke-virtual {v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$PowerSaveDetailAdapter;->clickLastSelectionItem()V

    .line 75
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->refreshState(Ljava/lang/Object;)V

    .line 67
    return-void

    .line 69
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->setPowerSaveMode(I)V

    goto :goto_1

    .line 75
    :cond_3
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_2
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->showDetail(Z)V

    .line 79
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    if-nez v4, :cond_0

    return-void

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 88
    :goto_0
    if-eqz p2, :cond_3

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 89
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 90
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 92
    const v1, 0x7f090091

    .line 93
    .local v1, "label":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 95
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 97
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 98
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 84
    return-void

    .line 87
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "label":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->isPowerSaveEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .local v2, "powerSaveOn":Z
    goto :goto_0

    .end local v2    # "powerSaveOn":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "powerSaveOn":Z
    goto :goto_0

    .line 88
    .end local v2    # "powerSaveOn":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "userInitiated":Z
    goto :goto_1

    .line 95
    .end local v3    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "label":I
    :cond_4
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->addPowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    .line 52
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->removePowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
