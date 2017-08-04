.class Lcom/android/systemui/statusbar/phone/PanelView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimationPhase1(Ljava/lang/Runnable;)V
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
    .line 1302
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->mCancelled:Z

    .line 1306
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1312
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1325
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    .line 1311
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mShouldStartPhase2:Z

    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    goto :goto_0

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mWaitingForFling:Z

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$14;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-wrap3(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
