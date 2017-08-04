.class public Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenRecordTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 13
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020501

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 14
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020500

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 61
    new-instance v0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .line 20
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getScreenRecordController()Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "ScreenRecordShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    if-nez v1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 47
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->takeScreenRecord(Z)V

    .line 44
    return-void

    .line 46
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isScreenRecordSupported()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isScreenRecording()Z

    move-result v0

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 56
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_1
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 57
    const-string/jumbo v0, "ScreenRecordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state.value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->addScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    .line 34
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->removeScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    goto :goto_0
.end method
