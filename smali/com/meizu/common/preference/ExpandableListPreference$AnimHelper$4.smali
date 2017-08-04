.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;
.super Ljava/lang/Object;
.source "ExpandableListPreference.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    .line 399
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v4}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1400(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 400
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v4}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 402
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 403
    .local v2, "scale":F
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 408
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1600(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 409
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isInLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    :goto_1
    return-void

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v3

    mul-float v4, v5, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method
