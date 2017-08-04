.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;
.super Ljava/lang/Object;
.source "ExpandableListPreference.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iput-object p2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 442
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 430
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 431
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 432
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1702(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Z)Z

    .line 436
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 425
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1702(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Z)Z

    .line 420
    return-void
.end method
