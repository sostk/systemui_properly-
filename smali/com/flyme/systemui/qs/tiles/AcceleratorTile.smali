.class public Lcom/flyme/systemui/qs/tiles/AcceleratorTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AcceleratorTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 17
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204e1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 16
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 19
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204e0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 18
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 64
    new-instance v0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getAcceleratorController()Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "AcceleratorShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->setAcceleratorEnabled()V

    .line 39
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorSupported()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->intermediate:Z

    .line 45
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->addAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    .line 55
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->removeAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    goto :goto_0
.end method
