.class Lcom/meizu/common/widget/StretchSearchView$10;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->shortenAmin()V
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
    .line 1068
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$10;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1071
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1072
    .local v0, "cal":F
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$10;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$700(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v0

    iget-object v4, p0, Lcom/meizu/common/widget/StretchSearchView$10;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v4}, Lcom/meizu/common/widget/StretchSearchView;->access$700(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    return-void
.end method
