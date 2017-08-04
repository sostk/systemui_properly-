.class public Lcom/meizu/common/widget/LoadingAnimotionView;
.super Landroid/view/View;
.source "LoadingAnimotionView.java"


# instance fields
.field private final alphaProperty:[Ljava/lang/String;

.field private animator:Landroid/animation/AnimatorSet;

.field private bAlpha:I

.field private bDraw:Z

.field private baseX:F

.field private baseY:F

.field private cbPosition:F

.field private cbRadius:F

.field private cgPosition:F

.field private cgRadius:F

.field private crPosition:F

.field private crRadius:F

.field private gAlpha:I

.field private gDraw:Z

.field private halfMaxRadius:F

.field private mAnimScale:F

.field private mBluePaint:Landroid/graphics/Paint;

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mIsAnimRun:Z

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStopFromUser:Z

.field private maxRadius:F

.field private po1:F

.field private po2:F

.field private po3:F

.field private po4:F

.field private po5:F

.field private final positionProperty:[Ljava/lang/String;

.field private rAlpha:I

.field private rDraw:Z

.field private final radiusProperty:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/LoadingAnimotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingAnimotionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v1, 0xff

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 34
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 35
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 52
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "crPosition"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cbPosition"

    aput-object v2, v1, v4

    const-string/jumbo v2, "cgPosition"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    .line 53
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "rAlpha"

    aput-object v2, v1, v3

    const-string/jumbo v2, "bAlpha"

    aput-object v2, v1, v4

    const-string/jumbo v2, "gAlpha"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    .line 54
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "crRadius"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cbRadius"

    aput-object v2, v1, v4

    const-string/jumbo v2, "cgRadius"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 57
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 58
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 68
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    .line 69
    iput-boolean v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    .line 83
    sget-object v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView_mcApplyingAnimationScale:I

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/LoadingAnimotionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/LoadingAnimotionView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingAnimotionView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    return p1
.end method

.method private createAlphaAnimator(I)Landroid/animation/Animator;
    .locals 11
    .param p1, "begin"    # I

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0xff

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x5

    .line 266
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 267
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v8, [I

    aput v9, v3, v6

    aput v9, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 268
    aget-object v2, v0, v6

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 269
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v8, [I

    aput v9, v3, v6

    aput v9, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 270
    aget-object v2, v0, v7

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v8, [I

    aput v9, v3, v6

    aput v9, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 273
    aget-object v2, v0, v8

    const-wide/16 v4, 0xe0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v8, [I

    aput v6, v3, v6

    aput v6, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 276
    aget-object v2, v0, v10

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    .line 277
    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->alphaProperty:[Ljava/lang/String;

    aget-object v3, v3, p1

    new-array v4, v8, [I

    aput v9, v4, v6

    aput v9, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 279
    aget-object v2, v0, v2

    const-wide/16 v4, 0x140

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x5

    .line 282
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v6

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v7

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    const/4 v3, 0x4

    add-int/lit8 v4, p1, 0x4

    rem-int/lit8 v4, v4, 0x5

    aget-object v4, v0, v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 284
    return-object v1
.end method

.method private createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 168
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v10

    .local v10, "rPosition":Landroid/animation/Animator;
    const/4 v13, 0x1

    .line 169
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .local v3, "bPosition":Landroid/animation/Animator;
    const/4 v13, 0x2

    .line 170
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v6

    .line 171
    .local v6, "gPosition":Landroid/animation/Animator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .local v8, "positionSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    .line 172
    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v6, v13, v14

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v13, 0x0

    .line 174
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v11

    .local v11, "rRadiusAnim":Landroid/animation/Animator;
    const/4 v13, 0x1

    .line 175
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    .local v4, "bRadiusAnim":Landroid/animation/Animator;
    const/4 v13, 0x2

    .line 176
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .line 177
    .local v7, "gRadiusAnim":Landroid/animation/Animator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .local v12, "radiusSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    .line 178
    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v13, 0x0

    .line 180
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v9

    .local v9, "rAlphaAnim":Landroid/animation/Animator;
    const/4 v13, 0x1

    .line 181
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    .local v2, "bAlphaAnim":Landroid/animation/Animator;
    const/4 v13, 0x2

    .line 182
    invoke-direct {p0, v13}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    .line 183
    .local v5, "gAlphaAnim":Landroid/animation/Animator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "alphaSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    .line 184
    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v13, 0x9

    .line 188
    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v6, v13, v14

    const/4 v14, 0x3

    aput-object v11, v13, v14

    const/4 v14, 0x4

    aput-object v4, v13, v14

    const/4 v14, 0x5

    aput-object v7, v13, v14

    const/4 v14, 0x6

    aput-object v9, v13, v14

    const/4 v14, 0x7

    aput-object v2, v13, v14

    const/16 v14, 0x8

    aput-object v5, v13, v14

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    new-instance v13, Lcom/meizu/common/widget/LoadingAnimotionView$1;

    invoke-direct {v13, p0}, Lcom/meizu/common/widget/LoadingAnimotionView$1;-><init>(Lcom/meizu/common/widget/LoadingAnimotionView;)V

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    return-object v1
.end method

.method private createCommonPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    return-object v0
.end method

.method private createPositionAnimator(I)Landroid/animation/Animator;
    .locals 13
    .param p1, "begin"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x5

    .line 216
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 217
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    const/4 v4, 0x0

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 218
    aget-object v2, v0, v8

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    aget-object v2, v0, v8

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e570a3d    # 0.21f

    const/4 v5, 0x0

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3ef126e9    # 0.471f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v9

    .line 221
    aget-object v2, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 222
    aget-object v2, v0, v9

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3eae978d    # 0.341f

    const v6, 0x3ed1eb85    # 0.41f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 224
    aget-object v2, v0, v10

    const-wide/16 v4, 0xe0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 225
    aget-object v2, v0, v10

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const v6, 0x3f1c28f6    # 0.61f

    const v7, 0x3ef5c28f    # 0.48f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v11

    .line 227
    aget-object v2, v0, v11

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    aget-object v2, v0, v11

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3f770a3d    # 0.965f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v12

    .line 230
    aget-object v2, v0, v12

    const-wide/16 v4, 0x140

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    aget-object v2, v0, v12

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e9eb852    # 0.31f

    const v5, 0x3f1eb852    # 0.62f

    const v6, 0x3f28f5c3    # 0.66f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x5

    .line 234
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v11

    add-int/lit8 v3, p1, 0x4

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v12

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 236
    return-object v1
.end method

.method private createRadiusAnimator(I)Landroid/animation/Animator;
    .locals 13
    .param p1, "begin"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x5

    .line 241
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 242
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 243
    aget-object v2, v0, v8

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3e560419    # 0.209f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    aget-object v2, v0, v8

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v9

    .line 246
    aget-object v2, v0, v9

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e947ae1    # 0.29f

    const/4 v5, 0x0

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3f218937    # 0.631f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    aget-object v2, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 249
    aget-object v2, v0, v10

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3eb851ec    # 0.36f

    const v5, 0x3e8a3d71    # 0.27f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f2ccccd    # 0.675f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    aget-object v2, v0, v10

    const-wide/16 v4, 0xe0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const v5, 0x3eae147b    # 0.34f

    mul-float/2addr v4, v5

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v11

    .line 252
    aget-object v2, v0, v11

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    aget-object v2, v0, v11

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const v5, 0x3eae147b    # 0.34f

    mul-float/2addr v4, v5

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v12

    .line 255
    aget-object v2, v0, v12

    new-instance v3, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v4, 0x3e851eb8    # 0.26f

    const v5, 0x3e87ae14    # 0.265f

    const v6, 0x3f170a3d    # 0.59f

    const v7, 0x3f1c28f6    # 0.61f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    aget-object v2, v0, v12

    const-wide/16 v4, 0x140

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x5

    .line 259
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v11

    add-int/lit8 v3, p1, 0x4

    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    aput-object v3, v2, v12

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 261
    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->initData(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    const v1, -0xb257b1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    const v1, -0xb2862d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    const v1, 0xde6a3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LoadingAnimotionView;->getDensity(Landroid/content/Context;)F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    mul-float v0, v1, v2

    .local v0, "ratio":F
    const/high16 v1, 0x40e00000    # 7.0f

    .line 107
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    .line 108
    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    const/4 v1, 0x0

    .line 109
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    const/high16 v1, 0x41700000    # 15.0f

    .line 110
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po2:F

    const/high16 v1, 0x41f00000    # 30.0f

    .line 111
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    const v1, 0x41dccccd    # 27.6f

    .line 112
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po4:F

    const v1, 0x40266666    # 2.6f

    .line 113
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po5:F

    .line 115
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getX()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    .line 116
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getY()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    .line 117
    return-void
.end method

.method private setBAlpha(I)V
    .locals 2
    .param p1, "bAlpha"    # I

    .prologue
    .line 294
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    return-void
.end method

.method private setCbPosition(F)V
    .locals 0
    .param p1, "cbPosition"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    .line 323
    return-void
.end method

.method private setCbRadius(F)V
    .locals 0
    .param p1, "cbRadius"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    .line 310
    return-void
.end method

.method private setCgPosition(F)V
    .locals 0
    .param p1, "cgPosition"    # F

    .prologue
    .line 326
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    .line 327
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->invalidate()V

    .line 328
    return-void
.end method

.method private setCgRadius(F)V
    .locals 0
    .param p1, "cgRadius"    # F

    .prologue
    .line 313
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    .line 314
    return-void
.end method

.method private setCrPosition(F)V
    .locals 0
    .param p1, "crPosition"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    .line 319
    return-void
.end method

.method private setCrRadius(F)V
    .locals 0
    .param p1, "crRadius"    # F

    .prologue
    .line 305
    iput p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    .line 306
    return-void
.end method

.method private setGAlpha(I)V
    .locals 2
    .param p1, "gAlpha"    # I

    .prologue
    .line 299
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 300
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    return-void
.end method

.method private setRAlpha(I)V
    .locals 2
    .param p1, "rAlpha"    # I

    .prologue
    .line 289
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    return-void
.end method

.method private startAnimator()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 163
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 165
    return-void

    .line 158
    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method private stopRunAnimator()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mIsAnimRun:Z

    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 374
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->clearData()V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    .line 380
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    .line 381
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    .line 382
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    .line 383
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    .line 384
    iput v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    .line 385
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rAlpha:I

    .line 386
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bAlpha:I

    .line 387
    iput v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gAlpha:I

    .line 388
    return-void
.end method

.method public getDensity(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 412
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 123
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 126
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 127
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 130
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 131
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    if-eqz v0, :cond_3

    .line 137
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    if-eqz v0, :cond_4

    .line 140
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    if-eqz v0, :cond_5

    .line 143
    :goto_2
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->rDraw:Z

    .line 144
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->bDraw:Z

    .line 145
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->gDraw:Z

    .line 146
    return-void

    .line 135
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 138
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 141
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ApplyingAnimationView;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 394
    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po3:F

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->po1:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mAnimScale:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 395
    .local v1, "dw":I
    iget v2, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->maxRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 397
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 398
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 400
    invoke-static {v1, p1, v6}, Lcom/meizu/common/widget/LoadingAnimotionView;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v6}, Lcom/meizu/common/widget/LoadingAnimotionView;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/LoadingAnimotionView;->setMeasuredDimension(II)V

    .line 402
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 333
    if-nez p2, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 337
    iput-boolean v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 344
    if-nez p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    goto :goto_0

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 348
    iput-boolean v1, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 363
    if-ne p1, v0, :cond_2

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->stopRunAnimator()V

    .line 366
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingAnimotionView;->startAnimator()V

    .line 362
    iput-boolean v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView;->mStopFromUser:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 363
    if-eq p1, v0, :cond_0

    goto :goto_0
.end method
