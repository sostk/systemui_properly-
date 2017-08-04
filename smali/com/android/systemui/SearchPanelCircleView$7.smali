.class Lcom/android/systemui/SearchPanelCircleView$7;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;->performExitFadeOutAnimation(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    .line 410
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 411
    .local v0, "animatedFraction":F
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 412
    .local v2, "logoValue":F
    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float v4, v6, v2

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 413
    cmpg-float v3, v0, v5

    if-gez v3, :cond_1

    const/4 v1, 0x0

    .line 415
    .local v1, "backgroundValue":F
    :goto_1
    sub-float v1, v6, v1

    .line 416
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->-get1(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 417
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v3, v1}, Lcom/android/systemui/SearchPanelCircleView;->-set3(Lcom/android/systemui/SearchPanelCircleView;F)F

    .line 418
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->-get5(Lcom/android/systemui/SearchPanelCircleView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 419
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView;->invalidateOutline()V

    .line 420
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView;->invalidate()V

    .line 409
    return-void

    .line 411
    .end local v1    # "backgroundValue":F
    .end local v2    # "logoValue":F
    :cond_0
    div-float v2, v0, v4

    .restart local v2    # "logoValue":F
    goto :goto_0

    .line 414
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float v4, v0, v5

    const v5, 0x3f4ccccd    # 0.8f

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "backgroundValue":F
    goto :goto_1
.end method
