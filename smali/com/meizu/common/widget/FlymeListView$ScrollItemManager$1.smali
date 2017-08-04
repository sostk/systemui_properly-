.class Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;
.super Ljava/lang/Object;
.source "FlymeListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->startSmoothBackToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;->this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 442
    iget-object v3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;->this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-static {v3}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->access$100(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    return-void

    .line 443
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 444
    .local v1, "scrollItem":Lcom/meizu/common/widget/FlymeListView$ScrollItem;
    invoke-virtual {v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetBeforeSmoothBack()F

    move-result v2

    .line 445
    .local v2, "startOffset":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->translateItemY(F)V

    goto :goto_0
.end method
