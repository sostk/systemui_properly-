.class public Lcom/meizu/common/widget/LoadingView;
.super Landroid/view/View;
.source "LoadingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOADING_ANIMATION:I = 0x1

.field private static final PROGRESS_ANIMATION:I = 0x2

.field public static final START_ANGLE_PROPERTY:Ljava/lang/String; = "startAngle"

.field public static final SWEEP_ANGLE_PROPERTY:Ljava/lang/String; = "sweepAngle"


# instance fields
.field private final LOADING_ANIM_DURATION:J

.field private mBackgroundColor:I

.field private mCentX:F

.field private mCentY:F

.field private mCircleBounds:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mLoadingAnimator:Landroid/animation/Animator;

.field private mLoadingState:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintArc:Landroid/graphics/Paint;

.field private mPaintArcBack:Landroid/graphics/Paint;

.field private mPaintWidth:I

.field private mRadius:F

.field private mRingWidth:F

.field private mStartAngle:F

.field private mSweepAngle:F

.field private mThemeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "ringWidth"    # F

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    iput p2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    .line 253
    iput p3, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    .line 254
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->init()V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 209
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_LoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    .line 178
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    .line 179
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 180
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    .line 182
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x6e0

    .line 185
    iput-wide v2, p0, Lcom/meizu/common/widget/LoadingView;->LOADING_ANIM_DURATION:J

    .line 189
    iput-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    .line 190
    iput v6, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    .line 202
    iput v4, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 214
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    .line 215
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 223
    .local v1, "b":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    const v3, -0xff0100

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    sget-object v2, Lcom/meizu/common/R$styleable;->LoadingView:[I

    sget v3, Lcom/meizu/common/R$attr;->MeizuCommon_LoadingStyle:I

    invoke-virtual {p1, p2, v2, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->LoadingView_mcLoadingRadius:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    .line 228
    sget v2, Lcom/meizu/common/R$styleable;->LoadingView_mcRingWidth:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    .line 229
    sget v2, Lcom/meizu/common/R$styleable;->LoadingView_mcLBackground:I

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    .line 230
    sget v2, Lcom/meizu/common/R$styleable;->LoadingView_mcLForeground:I

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    .line 231
    sget v2, Lcom/meizu/common/R$styleable;->LoadingView_mcLoadingState:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    .line 235
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 240
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 241
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    iget v4, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    iget v4, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->init()V

    .line 248
    return-void
.end method

.method private createLoadingAnimator()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 320
    invoke-static {v9, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .local v0, "key1":Landroid/animation/Keyframe;
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x43a50000    # 330.0f

    .line 321
    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .local v1, "key2":Landroid/animation/Keyframe;
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x441d8000    # 630.0f

    .line 322
    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .local v2, "key3":Landroid/animation/Keyframe;
    const-string/jumbo v6, "startAngle"

    .line 323
    new-array v7, v8, [Landroid/animation/Keyframe;

    aput-object v0, v7, v10

    aput-object v1, v7, v11

    aput-object v2, v7, v12

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhStart":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "sweepAngle"

    .line 324
    new-array v7, v8, [F

    aput v9, v7, v10

    const/high16 v8, -0x3cf00000    # -144.0f

    aput v8, v7, v11

    aput v9, v7, v12

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 325
    .local v5, "pvhSweep":Landroid/animation/PropertyValuesHolder;
    new-array v6, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v10

    aput-object v5, v6, v11

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "loadingAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x6e0

    .line 326
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 327
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, -0x1

    .line 328
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 329
    return-object v3
.end method

.method private drawLoadingAnimation(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 287
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mSweepAngle:F

    iget-object v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 288
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 258
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    .line 259
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    .line 261
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 265
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 266
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 313
    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 314
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->createLoadingAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 316
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    return-void
.end method


# virtual methods
.method public getBarBackgroundColor()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    return v0
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mSweepAngle:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    if-eq v0, v1, :cond_0

    .line 277
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 282
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingView;->drawLoadingAnimation(Landroid/graphics/Canvas;)V

    .line 279
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/LoadingView;

    .line 459
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 381
    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 382
    .local v1, "dw":I
    move v0, v1

    .line 384
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 385
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 387
    invoke-static {v1, p1, v5}, Lcom/meizu/common/widget/LoadingView;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/LoadingView;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/LoadingView;->setMeasuredDimension(II)V

    .line 389
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 348
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 349
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 351
    if-nez p2, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 354
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 357
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 365
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 367
    if-nez p1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    return-void

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 370
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method public setBarBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iput p1, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    .line 417
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->postInvalidate()V

    goto :goto_0
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1, "barColor"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    iput p1, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    .line 400
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->postInvalidate()V

    goto :goto_0
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 452
    iput p1, p0, Lcom/meizu/common/widget/LoadingView;->mStartAngle:F

    .line 453
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->invalidate()V

    .line 454
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F

    .prologue
    .line 436
    iput p1, p0, Lcom/meizu/common/widget/LoadingView;->mSweepAngle:F

    .line 437
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->invalidate()V

    .line 438
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 337
    if-ne p1, v0, :cond_2

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_3

    .line 343
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 337
    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 340
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public startAnimator()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation()V

    .line 300
    return-void
.end method

.method public startProgressAnimation()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 295
    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 296
    return-void
.end method

.method public stopAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 305
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method
