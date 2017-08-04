.class public Lcom/flyme/systemui/qs/tiles/ScreenshotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenshotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 15
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020503

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 14
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 17
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020502

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 16
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 64
    new-instance v0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getScreenshotController()Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 21
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "ScreenshotShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->takeScreenShot()V

    .line 47
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    if-nez v1, :cond_0

    return-void

    .line 55
    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v0, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 56
    .local v0, "screenshotOn":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 57
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 58
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 59
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_1
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 60
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state.value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 55
    .end local v0    # "screenshotOn":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result v0

    .restart local v0    # "screenshotOn":Z
    goto :goto_0

    .line 59
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->addScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    .line 37
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->removeScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V

    goto :goto_0
.end method
