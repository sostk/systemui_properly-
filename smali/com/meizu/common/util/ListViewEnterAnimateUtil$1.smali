.class Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;
.super Ljava/lang/Object;
.source "ListViewEnterAnimateUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewEnterAnimateUtil;->startItemAnimate(ILandroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;->this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

    iput-object p2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 63
    .local v0, "fraction":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 64
    .local v1, "value":F
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 65
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 66
    return-void
.end method
