.class Lcom/meizu/common/widget/StretchSearchView$8;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->stretchAmin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$8;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 961
    .local v0, "cal":F
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$8;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 964
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$8;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/StretchSearchView$8;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v2}, Lcom/meizu/common/widget/StretchSearchView;->access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;->onStetchAnimationUpdate(Landroid/view/View;F)V

    goto :goto_0
.end method
