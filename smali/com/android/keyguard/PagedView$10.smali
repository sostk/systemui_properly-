.class Lcom/android/keyguard/PagedView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->zoomIn(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PagedView;
    .param p2, "val$onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/keyguard/PagedView$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2363
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2368
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    iput-object v1, v0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2369
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2367
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->-get3(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->-get3(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2353
    iget-object v1, p0, Lcom/android/keyguard/PagedView$10;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v1}, Lcom/android/keyguard/PagedView;->-get2(Lcom/android/keyguard/PagedView;)J

    move-result-wide v2

    .line 2352
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2354
    new-instance v1, Lcom/android/keyguard/PagedView$10$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$10$1;-><init>(Lcom/android/keyguard/PagedView$10;)V

    .line 2352
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2349
    :cond_0
    return-void
.end method
