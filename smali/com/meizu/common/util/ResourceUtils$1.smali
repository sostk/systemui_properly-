.class Lcom/meizu/common/util/ResourceUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ResourceUtils;->getBackgroundAnimation(Landroid/view/View;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/meizu/common/util/ResourceUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/meizu/common/util/ResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    iget-object v0, p0, Lcom/meizu/common/util/ResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 250
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/meizu/common/util/ResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    iget-object v0, p0, Lcom/meizu/common/util/ResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 256
    return-void
.end method
