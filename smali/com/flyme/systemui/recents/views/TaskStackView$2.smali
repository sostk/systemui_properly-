.class Lcom/flyme/systemui/recents/views/TaskStackView$2;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;)V
    .locals 5
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$2;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$2;->it:Landroid/view/animation/Interpolator;

    .line 776
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 781
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$2;->it:Landroid/view/animation/Interpolator;

    mul-float v1, p1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackView$2;->it:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
