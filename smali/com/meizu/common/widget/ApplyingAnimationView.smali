.class public Lcom/meizu/common/widget/ApplyingAnimationView;
.super Landroid/view/View;
.source "ApplyingAnimationView.java"


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

.field private coPosition:F

.field private coRadius:F

.field private crPosition:F

.field private crRadius:F

.field private gAlpha:I

.field private gDraw:Z

.field private halfMaxRadius:F

.field private mAnimScale:F

.field private mBluePaint:Landroid/graphics/Paint;

.field private mGreenPaint:Landroid/graphics/Paint;

.field private mIsAnimRun:Z

.field private mOrangePaint:Landroid/graphics/Paint;

.field private mRedPaint:Landroid/graphics/Paint;

.field private mStopFromUser:Z

.field private maxRadius:F

.field private oAlpha:I

.field private oDraw:Z

.field private po1:F

.field private po2:F

.field private po3:F

.field private po4:F

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

    .line 131
    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ApplyingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v1, 0xff

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 88
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 89
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 90
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    const/4 v1, 0x4

    .line 109
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "crPosition"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cbPosition"

    aput-object v2, v1, v4

    const-string/jumbo v2, "cgPosition"

    aput-object v2, v1, v5

    const-string/jumbo v2, "coPosition"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 110
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "rAlpha"

    aput-object v2, v1, v3

    const-string/jumbo v2, "bAlpha"

    aput-object v2, v1, v4

    const-string/jumbo v2, "gAlpha"

    aput-object v2, v1, v5

    const-string/jumbo v2, "oAlpha"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 111
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "crRadius"

    aput-object v2, v1, v3

    const-string/jumbo v2, "cbRadius"

    aput-object v2, v1, v4

    const-string/jumbo v2, "cgRadius"

    aput-object v2, v1, v5

    const-string/jumbo v2, "coRadius"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 114
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 115
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 116
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 125
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 126
    iput-boolean v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 140
    sget-object v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->ApplyingAnimationView_mcApplyingAnimationScale:I

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->init(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ApplyingAnimationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ApplyingAnimationView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ApplyingAnimationView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ApplyingAnimationView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ApplyingAnimationView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    return p1
.end method

.method private createAlphaAnimator(I)Landroid/animation/Animator;
    .locals 13
    .param p1, "begin"    # I

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0xff

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x4

    .line 311
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 312
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v9, [I

    aput v11, v3, v8

    aput v11, v3, v10

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 313
    aget-object v2, v0, v8

    const-wide/16 v4, 0x2d0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v9, [I

    aput v11, v3, v8

    aput v11, v3, v10

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 315
    aget-object v2, v0, v10

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v11, v3, v8

    aput v8, v3, v10

    aput v8, v3, v9

    aput v8, v3, v12

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v9

    .line 317
    aget-object v2, v0, v9

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    aget-object v2, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->alphaProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v12, [I

    aput v8, v3, v8

    aput v11, v3, v10

    aput v11, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v12

    .line 320
    aget-object v2, v0, v12

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    aget-object v2, v0, v12

    const-wide/16 v4, 0x2b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    .line 323
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v12

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 324
    return-object v1
.end method

.method private createCommonPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    return-object v0
.end method

.method private createPositionAnimator(I)Landroid/animation/Animator;
    .locals 13
    .param p1, "begin"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x4

    .line 271
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 272
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    aput v12, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 273
    aget-object v2, v0, v8

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    aget-object v2, v0, v8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e570a3d    # 0.21f

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3ef126e9    # 0.471f

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v9

    .line 276
    aget-object v2, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    aget-object v2, v0, v9

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3eae978d    # 0.341f

    const v6, 0x3ed1eb85    # 0.41f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 279
    aget-object v2, v0, v10

    const-wide/16 v4, 0x2a0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    aget-object v2, v0, v10

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e851eb8    # 0.26f

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3f420c4a    # 0.758f

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->positionProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v11

    .line 282
    aget-object v2, v0, v11

    const-wide/16 v4, 0x2e0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    aget-object v2, v0, v11

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3ede353f    # 0.434f

    const v6, 0x3f170a3d    # 0.59f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    .line 285
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v11

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 286
    return-object v1
.end method

.method private createRadiusAnimator(I)Landroid/animation/Animator;
    .locals 13
    .param p1, "begin"    # I

    .prologue
    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x4

    .line 291
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    .line 292
    .local v0, "array":[Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 293
    aget-object v2, v0, v8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3e560419    # 0.209f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v12, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    aget-object v2, v0, v8

    const-wide/16 v4, 0x2d0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v9

    .line 296
    aget-object v2, v0, v9

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e947ae1    # 0.29f

    const/4 v5, 0x0

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3f218937    # 0.631f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    aget-object v2, v0, v9

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 298
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v4, v12

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v10

    .line 299
    aget-object v2, v0, v10

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3eac8b44    # 0.337f

    const v6, 0x3e2e147b    # 0.17f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    aget-object v2, v0, v10

    const-wide/16 v4, 0x2c0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->radiusProperty:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v10, [F

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    mul-float/2addr v4, v12

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    aput v4, v3, v9

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v11

    .line 302
    aget-object v2, v0, v11

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e428f5c    # 0.19f

    const/4 v5, 0x0

    const v6, 0x3ebd70a4    # 0.37f

    const v7, 0x3e9eb852    # 0.31f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    aget-object v2, v0, v11

    const-wide/16 v4, 0x2b0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    .line 305
    new-array v2, v2, [Landroid/animation/Animator;

    rem-int/lit8 v3, p1, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v8

    add-int/lit8 v3, p1, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v9

    add-int/lit8 v3, p1, 0x2

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v10

    add-int/lit8 v3, p1, 0x3

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v0, v3

    aput-object v3, v2, v11

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 306
    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->initData(Landroid/content/Context;)V

    .line 151
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    const v1, -0x14b5b6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    const v1, -0xff6624

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    const v1, 0x1af8b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->createCommonPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    const v1, -0x977cd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ApplyingAnimationView;->getDensity(Landroid/content/Context;)F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    mul-float v0, v1, v2

    .local v0, "ratio":F
    const/high16 v1, 0x40c00000    # 6.0f

    .line 166
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    .line 167
    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    const/4 v1, 0x0

    .line 168
    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    const v1, 0x4144cccd    # 12.3f

    .line 169
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po2:F

    const/high16 v1, 0x41c00000    # 24.0f

    .line 170
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    const/high16 v1, 0x41300000    # 11.0f

    .line 171
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po4:F

    .line 173
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getX()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getY()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    .line 175
    return-void
.end method

.method private setBAlpha(I)V
    .locals 2
    .param p1, "bAlpha"    # I

    .prologue
    .line 334
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    .line 335
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    return-void
.end method

.method private setCbPosition(F)V
    .locals 0
    .param p1, "cbPosition"    # F

    .prologue
    .line 369
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    .line 370
    return-void
.end method

.method private setCbRadius(F)V
    .locals 0
    .param p1, "cbRadius"    # F

    .prologue
    .line 353
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    .line 354
    return-void
.end method

.method private setCgPosition(F)V
    .locals 0
    .param p1, "cgPosition"    # F

    .prologue
    .line 373
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    .line 374
    return-void
.end method

.method private setCgRadius(F)V
    .locals 0
    .param p1, "cgRadius"    # F

    .prologue
    .line 357
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    .line 358
    return-void
.end method

.method private setCoPosition(F)V
    .locals 0
    .param p1, "coPosition"    # F

    .prologue
    .line 377
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    .line 378
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->invalidate()V

    .line 379
    return-void
.end method

.method private setCoRadius(F)V
    .locals 0
    .param p1, "coRadius"    # F

    .prologue
    .line 361
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    .line 362
    return-void
.end method

.method private setCrPosition(F)V
    .locals 0
    .param p1, "crPosition"    # F

    .prologue
    .line 365
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    .line 366
    return-void
.end method

.method private setCrRadius(F)V
    .locals 0
    .param p1, "crRadius"    # F

    .prologue
    .line 349
    iput p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    .line 350
    return-void
.end method

.method private setGAlpha(I)V
    .locals 2
    .param p1, "gAlpha"    # I

    .prologue
    .line 339
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    .line 340
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    return-void
.end method

.method private setOAlpha(I)V
    .locals 2
    .param p1, "oAlpha"    # I

    .prologue
    .line 344
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    .line 345
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 346
    return-void
.end method

.method private setRAlpha(I)V
    .locals 2
    .param p1, "rAlpha"    # I

    .prologue
    .line 329
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    return-void
.end method

.method private startAnimator()V
    .locals 20

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v14

    .local v14, "rPosition":Landroid/animation/Animator;
    const/16 v17, 0x1

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    .local v4, "bPosition":Landroid/animation/Animator;
    const/16 v17, 0x2

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    .local v7, "gPosition":Landroid/animation/Animator;
    const/16 v17, 0x3

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createPositionAnimator(I)Landroid/animation/Animator;

    move-result-object v10

    .line 232
    .local v10, "oPosition":Landroid/animation/Animator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .local v12, "positionSet":Landroid/animation/AnimatorSet;
    const/16 v17, 0x4

    .line 233
    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    const/16 v18, 0x2

    aput-object v7, v17, v18

    const/16 v18, 0x3

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v17, 0x0

    .line 235
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v15

    .local v15, "rRadiusAnim":Landroid/animation/Animator;
    const/16 v17, 0x1

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v5

    .local v5, "bRadiusAnim":Landroid/animation/Animator;
    const/16 v17, 0x2

    .line 237
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v8

    .local v8, "gRadiusAnim":Landroid/animation/Animator;
    const/16 v17, 0x3

    .line 238
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createRadiusAnimator(I)Landroid/animation/Animator;

    move-result-object v11

    .line 239
    .local v11, "oRadiusAnim":Landroid/animation/Animator;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .local v16, "radiusSet":Landroid/animation/AnimatorSet;
    const/16 v17, 0x4

    .line 240
    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    const/16 v18, 0x2

    aput-object v8, v17, v18

    const/16 v18, 0x3

    aput-object v11, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v17, 0x0

    .line 242
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v13

    .local v13, "rAlphaAnim":Landroid/animation/Animator;
    const/16 v17, 0x1

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v3

    .local v3, "bAlphaAnim":Landroid/animation/Animator;
    const/16 v17, 0x2

    .line 244
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v6

    .local v6, "gAlphaAnim":Landroid/animation/Animator;
    const/16 v17, 0x3

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView;->createAlphaAnimator(I)Landroid/animation/Animator;

    move-result-object v9

    .line 246
    .local v9, "oAlphaAnim":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, "alphaSet":Landroid/animation/AnimatorSet;
    const/16 v17, 0x4

    .line 247
    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v6, v17, v18

    const/16 v18, 0x3

    aput-object v9, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 249
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    const/16 v19, 0x2

    aput-object v2, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/meizu/common/widget/ApplyingAnimationView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ApplyingAnimationView$1;-><init>(Lcom/meizu/common/widget/ApplyingAnimationView;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    .line 266
    return-void

    .line 226
    .end local v2    # "alphaSet":Landroid/animation/AnimatorSet;
    .end local v3    # "bAlphaAnim":Landroid/animation/Animator;
    .end local v4    # "bPosition":Landroid/animation/Animator;
    .end local v5    # "bRadiusAnim":Landroid/animation/Animator;
    .end local v6    # "gAlphaAnim":Landroid/animation/Animator;
    .end local v7    # "gPosition":Landroid/animation/Animator;
    .end local v8    # "gRadiusAnim":Landroid/animation/Animator;
    .end local v9    # "oAlphaAnim":Landroid/animation/Animator;
    .end local v10    # "oPosition":Landroid/animation/Animator;
    .end local v11    # "oRadiusAnim":Landroid/animation/Animator;
    .end local v12    # "positionSet":Landroid/animation/AnimatorSet;
    .end local v13    # "rAlphaAnim":Landroid/animation/Animator;
    .end local v14    # "rPosition":Landroid/animation/Animator;
    .end local v15    # "rRadiusAnim":Landroid/animation/Animator;
    .end local v16    # "radiusSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private stopRunAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mIsAnimRun:Z

    .line 423
    iput-object v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->animator:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method


# virtual methods
.method public getDensity(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 448
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

    .line 181
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 182
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 183
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 185
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 186
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 189
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 190
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 193
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->halfMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 194
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    iput-boolean v5, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 197
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    if-eqz v0, :cond_4

    .line 200
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    if-eqz v0, :cond_5

    .line 203
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    if-eqz v0, :cond_6

    .line 206
    :goto_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    if-eqz v0, :cond_7

    .line 209
    :goto_3
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->rDraw:Z

    .line 210
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->bDraw:Z

    .line 211
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->gDraw:Z

    .line 212
    iput-boolean v4, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->oDraw:Z

    .line 213
    return-void

    .line 198
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->crRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mRedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 201
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cbRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mBluePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 204
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->cgRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 207
    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseX:F

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coPosition:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->baseY:F

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->coRadius:F

    iget-object v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mOrangePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ApplyingAnimationView;

    .line 454
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 431
    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po3:F

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->po1:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mAnimScale:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 432
    .local v1, "dw":I
    iget v2, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->maxRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 434
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 435
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 437
    invoke-static {v1, p1, v6}, Lcom/meizu/common/widget/ApplyingAnimationView;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v6}, Lcom/meizu/common/widget/ApplyingAnimationView;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/ApplyingAnimationView;->setMeasuredDimension(II)V

    .line 439
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 384
    if-nez p2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 388
    iput-boolean v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 395
    if-nez p1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 399
    iput-boolean v1, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 413
    if-ne p1, v0, :cond_2

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->stopRunAnimator()V

    .line 416
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V

    .line 412
    iput-boolean v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView;->mStopFromUser:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 413
    if-eq p1, v0, :cond_0

    goto :goto_0
.end method
