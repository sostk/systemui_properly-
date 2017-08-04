.class public Lcom/flyme/systemui/qs/tiles/DataSaveTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DataSaveTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/DataSaveTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 13
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204eb

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 12
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 15
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204ea

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 14
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 61
    new-instance v0, Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/DataSaveTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/DataSaveTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getDataSaveController()Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    .line 19
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "DataSaveShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    if-nez v1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 48
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveController;->setDataSaveEnabled(Z)V

    .line 45
    return-void

    .line 47
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveController;->isDataSaveSupported()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveController;->isDataSaveEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 57
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 52
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveController;->addDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V

    .line 35
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveController;->removeDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V

    goto :goto_0
.end method
