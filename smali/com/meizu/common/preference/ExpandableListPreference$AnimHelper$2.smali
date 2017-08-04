.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;
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


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 376
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1000(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1000(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 356
    return-void
.end method
