.class Lcom/meizu/common/app/SlideNotice$SlideViewController$3;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 793
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 794
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 795
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 798
    .local v2, "slideHeight":I
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v4, v4, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    packed-switch v4, :pswitch_data_0

    .line 804
    :pswitch_0
    move v1, v2

    .line 808
    .local v1, "fromY":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v4

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 809
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v4, 0x140

    .line 810
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 811
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$900(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 812
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1000()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 813
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 814
    iget-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v4, v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$1102(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 815
    const/4 v4, 0x0

    return v4

    .line 800
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "fromY":I
    :pswitch_1
    neg-int v1, v2

    .restart local v1    # "fromY":I
    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
