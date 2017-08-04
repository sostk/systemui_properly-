.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;
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
    .line 344
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1000(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 348
    return-void
.end method
