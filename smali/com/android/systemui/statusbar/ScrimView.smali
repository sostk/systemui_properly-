.class public Lcom/android/systemui/statusbar/ScrimView;
.super Lcom/android/systemui/statusbar/GLStaticBlurView;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ScrimView$1;,
        Lcom/android/systemui/statusbar/ScrimView$2;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDrawAsSrc:Z

.field private mIsEmpty:Z

.field private mScrimColor:I

.field private mViewAlpha:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ScrimView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ScrimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 70
    return-void
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 116
    return-void
.end method

.method public animateViewAlphaIfNotRunning(FJLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 129
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/GLStaticBlurView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 78
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v2, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 79
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 80
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 81
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 80
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    .end local v0    # "color":I
    .end local v1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-void

    .line 78
    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .restart local v1    # "mode":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0
.end method

.method public setDrawAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 86
    return-void
.end method

.method public setScrimColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    if-eq p1, v1, :cond_1

    .line 93
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 94
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 91
    :cond_1
    return-void
.end method
