.class public Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.super Lcom/flyme/systemui/statusbar/phone/FixImageView;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;,
        Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mArrowAlpha:F

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private final mArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mHintChevronPadding:I

.field private mImageScale:F

.field private final mInverseColor:I

.field private mIsLeft:Z

.field private mMaxCircleSize:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewView:Landroid/view/View;

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTempPoint:[I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/statusbar/phone/FixImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowAlpha:F

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const v0, 0xffffff

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    .line 131
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x7f0b03dd

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    const v1, 0x7f0b03df

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHintChevronPadding:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    .line 137
    const v1, 0x10c000e

    .line 136
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    .line 139
    const v1, 0x10c000f

    .line 138
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 142
    const v0, 0x7f020066

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 143
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 345
    :cond_0
    return-void
.end method

.method private drawArrow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mIsLeft:Z

    if-eqz v0, :cond_0

    .line 177
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mHintChevronPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 179
    sub-float/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_1
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateCircleColor()V

    .line 199
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    :cond_0
    return-void
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "circleRadius"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 330
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 331
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    .line 332
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    .line 333
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    return-object v0

    :cond_0
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 452
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLocationInWindow([I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 248
    .local v1, "rootWidth":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 249
    .local v2, "width":F
    sub-float v3, v1, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 251
    .local v0, "height":F
    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private setCircleRadius(FZZ)V
    .locals 14
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z
    .param p3, "noAnimation"    # Z

    .prologue
    .line 270
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_3

    .line 271
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    const/4 v7, 0x1

    .line 272
    .local v7, "radiusHidden":Z
    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_5

    const/4 v6, 0x1

    .line 273
    .local v6, "nowHidden":Z
    :goto_1
    if-eq v7, v6, :cond_1

    if-eqz p3, :cond_6

    :cond_1
    const/4 v8, 0x0

    .line 274
    .local v8, "radiusNeedsAnimation":Z
    :goto_2
    if-nez v8, :cond_8

    .line 275
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_7

    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 279
    if-eqz v6, :cond_2

    .line 280
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 281
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_2
    :goto_3
    return-void

    .line 270
    .end local v6    # "nowHidden":Z
    .end local v7    # "radiusHidden":Z
    .end local v8    # "radiusNeedsAnimation":Z
    :cond_3
    const/4 v7, 0x1

    .restart local v7    # "radiusHidden":Z
    goto :goto_0

    .line 271
    .end local v7    # "radiusHidden":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "radiusHidden":Z
    goto :goto_0

    .line 272
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "nowHidden":Z
    goto :goto_1

    .line 273
    :cond_6
    const/4 v8, 0x1

    .restart local v8    # "radiusNeedsAnimation":Z
    goto :goto_2

    .line 284
    :cond_7
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_2

    .line 287
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 288
    .local v1, "diff":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 289
    .local v9, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    add-float/2addr v12, v1

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x1

    aput p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 290
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_3

    .line 293
    .end local v1    # "diff":F
    .end local v9    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 294
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 296
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_a

    .line 297
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 299
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    const-wide/16 v2, 0xfa

    .line 301
    .local v2, "duration":J
    if-nez p2, :cond_9

    .line 302
    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 303
    iget v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v11, v11

    .line 302
    div-float v4, v10, v11

    .line 304
    .local v4, "durationFactor":F
    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v10, v4

    float-to-long v2, v10

    .line 305
    const-wide/16 v10, 0xc8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 307
    .end local v4    # "durationFactor":F
    :cond_9
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 309
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    .line 310
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 311
    invoke-static {v10, v11, v12, v13, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 314
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 316
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v11, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    .line 298
    .end local v2    # "duration":J
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4
.end method

.method private updateCircleColor()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 205
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 204
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v5

    add-float v2, v5, v3

    .line 206
    .local v2, "fraction":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 207
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 208
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v4, v5

    .line 207
    div-float/2addr v3, v4

    sub-float v1, v7, v3

    .line 209
    .local v1, "finishingFraction":F
    mul-float/2addr v2, v1

    .line 211
    .end local v1    # "finishingFraction":F
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 212
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 213
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 211
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 214
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    return-void
.end method

.method private updateIconColor()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 191
    .local v0, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mInverseColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    .local v1, "color":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 188
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->drawArrow(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    invoke-super {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FixImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 149
    invoke-super/range {p0 .. p5}, Lcom/flyme/systemui/statusbar/phone/FixImageView;->onLayout(ZIIII)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 148
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-super {p0}, Lcom/flyme/systemui/statusbar/phone/FixImageView;->performClick()Z

    move-result v0

    return v0

    .line 507
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCircleRadius(FZ)V
    .locals 1
    .param p1, "circleRadius"    # F
    .param p2, "slowAnimation"    # Z

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 258
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 399
    const-wide/16 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 413
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 414
    mul-float v5, p1, v8

    float-to-int v4, v5

    .line 415
    .local v4, "endAlpha":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 416
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_1

    .line 417
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 418
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(I)V

    .line 412
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getImageAlpha()I

    move-result v2

    .line 421
    .local v2, "currentAlpha":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 422
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 423
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    if-nez p5, :cond_2

    .line 433
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-nez v5, :cond_5

    .line 434
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 437
    :cond_2
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 438
    const-wide/16 v6, -0x1

    cmp-long v5, p3, v6

    if-nez v5, :cond_3

    .line 439
    sub-int v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v8

    .line 440
    .local v3, "durationFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 441
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    float-to-long p3, v5

    .line 443
    .end local v3    # "durationFactor":F
    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 444
    if-eqz p6, :cond_4

    .line 445
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    :cond_4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 435
    :cond_5
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setImageScale(FZ)V
    .locals 7
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 352
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 351
    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 367
    if-nez p2, :cond_0

    .line 368
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    .line 365
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 372
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 373
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    if-nez p5, :cond_1

    .line 382
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 383
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 386
    :cond_1
    :goto_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 388
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 389
    const v3, 0x3e4ccccc    # 0.19999999f

    .line 388
    div-float v1, v2, v3

    .line 390
    .local v1, "durationFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 391
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    .line 393
    .end local v1    # "durationFactor":F
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 394
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 384
    :cond_3
    iget-object p5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setIsLeft(Z)V
    .locals 0
    .param p1, "left"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mIsLeft:Z

    .line 498
    return-void
.end method
