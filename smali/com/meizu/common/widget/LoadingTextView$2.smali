.class Lcom/meizu/common/widget/LoadingTextView$2;
.super Ljava/lang/Object;
.source "LoadingTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingTextView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 161
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/LoadingTextView;->access$200(Lcom/meizu/common/widget/LoadingTextView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 162
    .local v2, "time":I
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v3, v2}, Lcom/meizu/common/widget/LoadingTextView;->access$300(Lcom/meizu/common/widget/LoadingTextView;I)I

    move-result v0

    .line 163
    .local v0, "dot1alpha":I
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v3, v2}, Lcom/meizu/common/widget/LoadingTextView;->access$400(Lcom/meizu/common/widget/LoadingTextView;I)I

    move-result v1

    .line 164
    .local v1, "dot2alpha":I
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/LoadingTextView;->access$500(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/LoadingTextView;->access$600(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    return-void
.end method
