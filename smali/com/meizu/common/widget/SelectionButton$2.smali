.class Lcom/meizu/common/widget/SelectionButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SelectionButton;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SelectionButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SelectionButton;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton$2;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 327
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 329
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton$2;->this$0:Lcom/meizu/common/widget/SelectionButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton$2;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SelectionButton;->access$000(Lcom/meizu/common/widget/SelectionButton;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/SelectionButton;->setVisibility(IZ)V

    .line 330
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton$2;->this$0:Lcom/meizu/common/widget/SelectionButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/SelectionButton;->setClickable(Z)V

    .line 331
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton$2;->this$0:Lcom/meizu/common/widget/SelectionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SelectionButton;->setClickable(Z)V

    .line 336
    return-void
.end method
