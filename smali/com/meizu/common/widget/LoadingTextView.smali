.class public Lcom/meizu/common/widget/LoadingTextView;
.super Landroid/widget/TextView;
.source "LoadingTextView.java"


# instance fields
.field private final mAnimatorDuration:I

.field private mDistance:I

.field private mDot1Paint:Landroid/graphics/Paint;

.field private mDot1transX:F

.field private mDot2Paint:Landroid/graphics/Paint;

.field private mDot2transX:F

.field private mDotAlpha:I

.field private mDotAnimationSet:Landroid/animation/AnimatorSet;

.field private mDotColor:I

.field private mDotMoveAnimation:Landroid/animation/ValueAnimator;

.field private mDotalphaAnim:Landroid/animation/ValueAnimator;

.field private mLoadText:Ljava/lang/CharSequence;

.field private mLoadingTextColor:I

.field private mRadius:I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v1, 0x4db

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 41
    iput-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    .line 43
    iput-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    .line 45
    iput v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mAnimatorDuration:I

    const/16 v0, 0xa

    .line 47
    iput v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDistance:I

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAlpha:I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/LoadingTextView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->init()V

    .line 68
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/LoadingTextView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1transX:F

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/LoadingTextView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2transX:F

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/LoadingTextView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/LoadingTextView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingTextView;->calculateDot1AlphaByTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/LoadingTextView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingTextView;->calculateDot2AlphaByTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/LoadingTextView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateDot1AlphaByTime(I)I
    .locals 8
    .param p1, "time"    # I

    .prologue
    const/16 v5, 0x488

    const/16 v4, 0xf3

    const/16 v3, 0xa0

    .line 220
    if-gez p1, :cond_4

    .line 222
    :cond_0
    if-lt v3, p1, :cond_5

    .line 225
    :cond_1
    if-lt v4, p1, :cond_6

    .line 227
    :cond_2
    if-lt v5, p1, :cond_7

    :cond_3
    const/16 v2, 0xff

    .line 233
    .local v2, "alpha":I
    :goto_0
    return v2

    .line 220
    .end local v2    # "alpha":I
    :cond_4
    if-gt p1, v3, :cond_0

    const/4 v2, 0x0

    .line 221
    .restart local v2    # "alpha":I
    goto :goto_0

    .line 222
    .end local v2    # "alpha":I
    :cond_5
    if-gt p1, v4, :cond_1

    .line 223
    add-int/lit16 v3, p1, -0xa0

    int-to-double v4, v3

    const-wide v6, 0x4008940c565c87b6L    # 3.072289156626506

    mul-double v0, v6, v4

    .line 224
    .local v0, "DAlpha":D
    double-to-int v2, v0

    .restart local v2    # "alpha":I
    goto :goto_0

    .line 225
    .end local v0    # "DAlpha":D
    .end local v2    # "alpha":I
    :cond_6
    if-gt p1, v5, :cond_2

    const/16 v2, 0xff

    .line 226
    .restart local v2    # "alpha":I
    goto :goto_0

    .end local v2    # "alpha":I
    :cond_7
    const/16 v3, 0x4db

    .line 227
    if-gt p1, v3, :cond_3

    .line 228
    add-int/lit16 v3, p1, -0x4db

    int-to-double v4, v3

    const-wide v6, -0x3ff76bf3a9a3784aL    # -3.072289156626506

    mul-double v0, v6, v4

    .line 229
    .restart local v0    # "DAlpha":D
    double-to-int v2, v0

    .restart local v2    # "alpha":I
    goto :goto_0
.end method

.method private calculateDot2AlphaByTime(I)I
    .locals 8
    .param p1, "time"    # I

    .prologue
    const/16 v5, 0x43b

    const/16 v4, 0x3e8

    const/16 v3, 0x53

    .line 201
    if-gez p1, :cond_4

    .line 204
    :cond_0
    if-lt v3, p1, :cond_5

    .line 206
    :cond_1
    if-lt v4, p1, :cond_6

    .line 209
    :cond_2
    if-lt v5, p1, :cond_7

    :cond_3
    const/16 v2, 0xff

    .line 214
    .local v2, "alpha":I
    :goto_0
    return v2

    .line 201
    .end local v2    # "alpha":I
    :cond_4
    if-gt p1, v3, :cond_0

    .line 202
    int-to-double v4, p1

    const-wide v6, 0x4008940c565c87b6L    # 3.072289156626506

    mul-double v0, v6, v4

    .line 203
    .local v0, "DAlpha":D
    double-to-int v2, v0

    .restart local v2    # "alpha":I
    goto :goto_0

    .line 204
    .end local v0    # "DAlpha":D
    .end local v2    # "alpha":I
    :cond_5
    if-gt p1, v4, :cond_1

    const/16 v2, 0xff

    .line 205
    .restart local v2    # "alpha":I
    goto :goto_0

    .line 206
    .end local v2    # "alpha":I
    :cond_6
    if-gt p1, v5, :cond_2

    .line 207
    add-int/lit16 v3, p1, -0x43b

    int-to-double v4, v3

    const-wide v6, -0x3ff76bf3a9a3784aL    # -3.072289156626506

    mul-double v0, v6, v4

    .line 208
    .restart local v0    # "DAlpha":D
    double-to-int v2, v0

    .restart local v2    # "alpha":I
    goto :goto_0

    .end local v0    # "DAlpha":D
    .end local v2    # "alpha":I
    :cond_7
    const/16 v3, 0x4db

    .line 209
    if-gt p1, v3, :cond_3

    const/4 v2, 0x0

    .line 210
    .restart local v2    # "alpha":I
    goto :goto_0
.end method

.method private drawTextAbove(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 127
    .local v1, "y":F
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 132
    .local v0, "textWidth":F
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    iget v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1transX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->down_dot_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2transX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/LoadingTextView;->mRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    return-void

    .end local v0    # "textWidth":F
    :cond_0
    const-string/jumbo v2, ""

    .line 128
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private drawing(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingTextView;->drawTextAbove(Landroid/graphics/Canvas;)V

    .line 123
    return-void
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x11

    .line 87
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingTextView;->setGravity(I)V

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x0

    .line 92
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 93
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadingTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->down_load_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->down_load_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->down_load_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    sget-object v1, Lcom/meizu/common/R$styleable;->LoadingTextView:[I

    sget v2, Lcom/meizu/common/R$attr;->MeizuCommon_LoadingTextStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    sget v1, Lcom/meizu/common/R$styleable;->LoadingTextView_mcLoadingText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    .line 78
    sget v1, Lcom/meizu/common/R$styleable;->LoadingTextView_mcDotRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->down_dot_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mRadius:I

    .line 79
    sget v1, Lcom/meizu/common/R$styleable;->LoadingTextView_mcLoadingTextColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->down_load_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadingTextColor:I

    .line 80
    sget v1, Lcom/meizu/common/R$styleable;->LoadingTextView_mcDotColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->down_load_dot_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void

    .line 74
    :cond_0
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private setupAnimations()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    new-array v1, v8, [F

    aput v6, v1, v5

    iget v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDistance:I

    int-to-float v2, v2

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    .line 141
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3de147ae    # 0.11f

    const v2, 0x3df5c28f    # 0.12f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    .line 142
    .local v0, "pathInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/LoadingTextView$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/LoadingTextView$1;-><init>(Lcom/meizu/common/widget/LoadingTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4db

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 154
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 156
    new-array v1, v8, [I

    aput v5, v1, v5

    iget v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAlpha:I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    .line 157
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4db

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/LoadingTextView$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/LoadingTextView$2;-><init>(Lcom/meizu/common/widget/LoadingTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/LoadingTextView$3;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/LoadingTextView$3;-><init>(Lcom/meizu/common/widget/LoadingTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 192
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 194
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    .line 195
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V

    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 303
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    return-void
.end method


# virtual methods
.method public getLoadText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingTextView;->drawing(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 308
    if-nez p2, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 314
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 321
    if-nez p1, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 324
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->startLoadingAnimation()V

    goto :goto_0
.end method

.method public setDotColor(I)V
    .locals 1
    .param p1, "dotColor"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDot2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadText"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView;->mLoadText:Ljava/lang/CharSequence;

    .line 267
    return-void
.end method

.method public setLoadingTextColor(I)V
    .locals 1
    .param p1, "loadingTextColor"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 336
    if-ne p1, v0, :cond_2

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->startLoadingAnimation()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 336
    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 339
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingTextView;->startLoadingAnimation()V

    .line 274
    return-void
.end method

.method public stopAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 295
    :goto_2
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 282
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 283
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotAnimationSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 288
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotalphaAnim:Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 292
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 293
    iput-object v1, p0, Lcom/meizu/common/widget/LoadingTextView;->mDotMoveAnimation:Landroid/animation/ValueAnimator;

    goto :goto_2
.end method
