.class public Lcom/meizu/common/widget/AnimSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "AnimSeekBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final DEFAULT_ANIMSEEKBAE_HEIGHT:I = 0x41

.field private static final DEFAULT_DISTANCE_BEW:I = 0xa

.field private static final DEFAULT_EXPANDED_PIN_RADIUS_DP:I = 0xf

.field private static final DEFAULT_LAGRECIRCLE_MOVEUP_VALUE:I = 0x18

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_THUMB_RADIUS_DP:F = 0.0f

.field private static final Debug:Z = false

.field private static final TAG:Ljava/lang/String; = "AnimSeekBar"


# instance fields
.field private mAinmSeekBarHeight:I

.field private mBounds:Landroid/graphics/Rect;

.field private mCheckRadisChanged:Z

.field private mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

.field private mCircleRadius:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDistanceBwCircle:I

.field private mFadeAnim:Landroid/animation/ValueAnimator;

.field private mFadeInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeValue:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsStartAnim:Z

.field private mIsTapPressed:Z

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveDownInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveUpValue:I

.field private mMoveUpValueDp:I

.field private mPinRadisMax:F

.field private mPinRadisMin:F

.field private mPinRadiusPx:F

.field private mProgressDrawble:Landroid/graphics/drawable/Drawable;

.field private mRes:Landroid/content/res/Resources;

.field private mScaleInterpolator:Landroid/view/animation/Interpolator;

.field private mScaleanim:Landroid/animation/ValueAnimator;

.field private mTextNumber:Ljava/lang/String;

.field private mTextNumberColor:I

.field private mTextNumberSize:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:F

.field private mThumbRadis:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 212
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_AnimSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 147
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 153
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 157
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 161
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 163
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 166
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    const/16 v0, 0x1f4

    .line 187
    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AnimSeekBar;->seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimSeekBar;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # F

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setFadeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimSeekBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AnimSeekBar;->setMoveValue(I)V

    return-void
.end method

.method private onActionUp(FF)V
    .locals 2
    .param p1, "f"    # F
    .param p2, "g"    # F

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 386
    return-void

    .line 383
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    goto :goto_0
.end method

.method private pressPin()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    new-array v0, v4, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$1;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 459
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    new-array v0, v4, [I

    aput v2, v0, v2

    const/16 v1, 0xff

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 464
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$2;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 480
    new-array v0, v4, [I

    aput v2, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 481
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$3;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 493
    return-void
.end method

.method private releasePin()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    new-array v0, v4, [F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    .line 498
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$4;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 509
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 511
    new-array v0, v4, [I

    const/16 v1, 0xff

    aput v1, v0, v2

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 512
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$5;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 521
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 525
    new-array v0, v4, [I

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    aput v1, v0, v2

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    .line 526
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimSeekBar$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimSeekBar$6;-><init>(Lcom/meizu/common/widget/AnimSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 535
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 536
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 538
    return-void
.end method

.method private seekBarAnimationInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v9, 0x3ea8f5c3    # 0.33f

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 222
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    .line 223
    sget-object v2, Lcom/meizu/common/R$styleable;->AnimSeekBar:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 224
    .local v1, "seek":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcLargeCircleDrawble:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 225
    sget v2, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcLargeCircleRadis:I

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 227
    sget v2, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcTextNumberColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 228
    sget v2, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcDistanceToCircle:I

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 229
    sget v2, Lcom/meizu/common/R$styleable;->AnimSeekBar_mcTextNumberSize:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    const/high16 v2, 0x41c00000    # 24.0f

    .line 230
    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    const/high16 v2, 0x42820000    # 65.0f

    .line 231
    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    .line 232
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 233
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v2, "sans-serif-medium"

    const/4 v3, 0x0

    .line 236
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 237
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 238
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 248
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 249
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 250
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v5, v5, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v9, v5, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v9, v5, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveDownInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private setFadeValue(I)V
    .locals 0
    .param p1, "fadevalue"    # I

    .prologue
    .line 688
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    .line 689
    return-void
.end method

.method private setMoveValue(I)V
    .locals 0
    .param p1, "moveUpValue"    # I

    .prologue
    .line 692
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    .line 693
    return-void
.end method

.method private setSize(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 696
    float-to-int v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 697
    return-void
.end method

.method private setmY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 684
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    .line 685
    return-void
.end method


# virtual methods
.method public getDistanceToCircle()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    return v0
.end method

.method public getLargeCircleDrawble()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 644
    return-object v1

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLargeCircleRadius()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    return v0
.end method

.method public getTextNumberColor()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    return v0
.end method

.method public getTextNumberSize()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x4

    monitor-enter p0

    const/4 v2, 0x0

    .line 321
    :try_start_0
    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 353
    return-void

    .line 323
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 324
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_2

    .line 328
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    .line 330
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 333
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mFadeValue:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_3

    const-string/jumbo v2, ""

    .line 339
    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    .line 341
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v8, :cond_4

    .line 345
    :goto_3
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 346
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 347
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 348
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mY:F

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValue:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 350
    .local v0, "baseline":I
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "baseline":I
    .end local v1    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 326
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mX:F

    goto/16 :goto_1

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    goto :goto_2

    .line 342
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumber:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 438
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->releasePin()V

    .line 440
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 701
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/AnimSeekBar;

    .line 702
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 703
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 434
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    monitor-enter p0

    const/4 v0, 0x0

    .line 260
    .local v0, "height":I
    :try_start_0
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 261
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 262
    .local v4, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 263
    .local v2, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 264
    .local v3, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 267
    .local v1, "measureHeight":I
    if-eq v4, v8, :cond_0

    .line 269
    if-eq v4, v9, :cond_1

    .line 272
    iget v5, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultWidth:I

    .line 276
    .local v5, "width":I
    :goto_0
    if-eq v2, v8, :cond_2

    .line 278
    if-eq v2, v9, :cond_3

    .line 288
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 290
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/meizu/common/widget/AnimSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 291
    return-void

    .line 268
    .end local v5    # "width":I
    :cond_0
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 270
    .end local v5    # "width":I
    :cond_1
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    goto :goto_1

    .line 279
    :cond_3
    iget v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    if-le v1, v6, :cond_4

    .line 285
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    goto :goto_1

    .line 280
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDefaultHeight:I

    const/4 v6, 0x1

    const/high16 v7, 0x41700000    # 15.0f

    .line 282
    iget-object v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    const/4 v6, 0x1

    const/high16 v7, 0x41200000    # 10.0f

    .line 283
    iget-object v8, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "measureHeight":I
    .end local v2    # "measureHeightMode":I
    .end local v3    # "measureWidth":I
    .end local v4    # "measureWidthMode":I
    .end local v5    # "width":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 420
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mScaleanim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 425
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 428
    return v1

    .line 421
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    .line 422
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsStartAnim:Z

    if-nez v0, :cond_0

    .line 410
    iput-boolean v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    .line 412
    :goto_0
    return v3

    .line 408
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/SkipPosSeekBar;->onSizeChanged(IIII)V

    .line 296
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    .line 299
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMax:F

    .line 300
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadisMin:F

    .line 301
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    .line 302
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbRadis:I

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mPinRadiusPx:F

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mProgressDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/AnimSeekBar;->setmY(F)V

    .line 305
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mMoveUpValueDp:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbHeight:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    .line 306
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mAinmSeekBarHeight:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 358
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_1
    return v1

    .line 367
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 371
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mIsTapPressed:Z

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/AnimSeekBar;->onActionUp(FF)V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDistanceToCircle(I)V
    .locals 5
    .param p1, "distanceBew"    # I

    .prologue
    const/4 v4, 0x1

    .line 621
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 622
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    .line 626
    :goto_0
    int-to-float v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 627
    .local v1, "distance":I
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    if-ne p1, v2, :cond_1

    .line 632
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 633
    return-void

    .line 623
    .end local v1    # "distance":I
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 628
    .restart local v1    # "distance":I
    :cond_1
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mDistanceBwCircle:I

    .line 629
    iput-boolean v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCheckRadisChanged:Z

    .line 630
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    goto :goto_1
.end method

.method public setLargeCircleDrawble(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 579
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    if-ne v4, p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 581
    .local v3, "oldBoundsWidth":I
    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .local v2, "oldBoundsHeight":I
    const/4 v1, -0x1

    .local v1, "newBoundsWith":I
    const/4 v0, -0x1

    .line 584
    .local v0, "newBoundsHeiht":I
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleAnimDrawble:Landroid/graphics/drawable/Drawable;

    .line 585
    if-nez p1, :cond_2

    .line 589
    :goto_1
    if-eq v3, v1, :cond_3

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    .line 592
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 587
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    .line 589
    :cond_3
    if-ne v2, v0, :cond_1

    goto :goto_2
.end method

.method public setLargeCircleRadis(I)V
    .locals 5
    .param p1, "largeCircleRadis"    # I

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 603
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    :goto_0
    const/4 v2, 0x1

    .line 607
    int-to-float v3, p1

    iget-object v4, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 608
    .local v1, "larCircleRadis":I
    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    if-ne v2, p1, :cond_1

    .line 612
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 613
    return-void

    .line 604
    .end local v1    # "larCircleRadis":I
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 609
    .restart local v1    # "larCircleRadis":I
    :cond_1
    iput v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mCircleRadius:I

    .line 610
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    goto :goto_1
.end method

.method public setTextNumberColor(I)V
    .locals 2
    .param p1, "numberColor"    # I

    .prologue
    .line 546
    iget v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    if-ne v0, p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 547
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    .line 548
    iget-object v0, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->postInvalidate()V

    goto :goto_0
.end method

.method public setTextNumberSize(I)V
    .locals 4
    .param p1, "numberSize"    # I

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 560
    .local v0, "c":Landroid/content/Context;
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    :goto_0
    const/4 v1, 0x2

    .line 564
    int-to-float v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int p1, v1

    .line 565
    iget v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    if-ne p1, v1, :cond_1

    .line 570
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 571
    return-void

    .line 561
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 566
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    .line 567
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/AnimSeekBar;->mTextNumberSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimSeekBar;->requestLayout()V

    goto :goto_1
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    return-void
.end method
