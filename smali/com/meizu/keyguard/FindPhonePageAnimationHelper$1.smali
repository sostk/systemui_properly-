.class Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;
.super Ljava/lang/Object;
.source "FindPhonePageAnimationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->getTopMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/FindPhonePageAnimationHelper;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/FindPhonePageAnimationHelper;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;->this$0:Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    iput-object p2, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v1, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v1, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method
