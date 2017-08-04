.class Lcom/android/systemui/statusbar/phone/PanelView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimationPhase2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "val$onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->mCancelled:Z

    .line 1351
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1356
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->-get3(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->-get4(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-set3(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-wrap2(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraTouching:Z

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTransitingStoped()V

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$15;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
