.class public Lcom/meizu/common/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# static fields
.field public static final BAR_COLOR_DEF:I = -0xe67213

.field public static final BAR_WIDTH_DEF_DIP:F = 3.0f

.field public static final CENTER_TEXT_COLOR_DEF:I = -0x1

.field public static final CENTER_TEXT_SIZE_DEF:I = 0xe

.field public static final RIM_COLOR_DEF:I = 0xc000000


# instance fields
.field private mBarColor:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPostition:I

.field private mBarWidth:F

.field private mCircleBound:Landroid/graphics/RectF;

.field private mIsShowProgress:Z

.field private mMax:I

.field private mPercentage:I

.field private mProgress:I

.field private mRimColor:I

.field private mRimPaint:Landroid/graphics/Paint;

.field private mShouldUpdateBound:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 52
    iput v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    const-string/jumbo v0, "0%"

    .line 54
    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 56
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v6, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 48
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 52
    iput v6, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    const-string/jumbo v4, "0%"

    .line 54
    iput-object v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 55
    iput v6, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 56
    iput-boolean v6, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 57
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 85
    sget-object v4, Lcom/meizu/common/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarColor:I

    const v5, -0xe67213

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    .line 88
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarRimColor:I

    const/high16 v5, 0xc000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    .line 89
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 91
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 92
    .local v1, "barWidthPx":I
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarWidth:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    .line 94
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 95
    .local v3, "textSizePx":I
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCenterTextSize:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    .line 97
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCenterTextColor:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextColor:I

    .line 99
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleIsShowProgress:I

    iget-boolean v5, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 100
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarMax:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/CircleProgressBar;->setMax(I)V

    .line 101
    sget v4, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarProgress:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/CircleProgressBar;->setProgress(I)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->init()V

    .line 104
    return-void
.end method

.method private getPosByProgress(IZ)I
    .locals 5
    .param p1, "progress"    # I
    .param p2, "isCircle"    # Z

    .prologue
    const/4 v4, 0x0

    .line 175
    if-nez p2, :cond_0

    const/16 v1, 0x64

    .line 176
    .local v1, "reference":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-lez v3, :cond_1

    .line 179
    iget v3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-ge p1, v3, :cond_2

    .line 182
    int-to-float v3, p1

    iget v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 183
    .local v2, "scale":F
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 184
    .local v0, "position":I
    return v0

    .end local v0    # "position":I
    .end local v1    # "reference":I
    .end local v2    # "scale":F
    :cond_0
    const/16 v1, 0xb4

    .line 175
    goto :goto_0

    .line 177
    .restart local v1    # "reference":I
    :cond_1
    return v4

    .line 180
    :cond_2
    return v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setBound()V

    .line 108
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setPaint()V

    .line 109
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 110
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private setBound()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 146
    return-void

    .line 140
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 169
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    return-void

    .line 150
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 167
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    goto :goto_2
.end method


# virtual methods
.method public getMax()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 280
    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    :cond_0
    return v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 288
    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    add-int/lit8 v0, v0, 0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    mul-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    iget-object v5, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 123
    .local v7, "textHeight":F
    div-float v0, v7, v9

    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float v8, v0, v1

    .line 124
    .local v8, "verticalTextOffset":F
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float v6, v0, v9

    .line 125
    .local v6, "horizontalTextOffset":F
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    if-nez v0, :cond_1

    .line 129
    :goto_1
    return-void

    .line 117
    .end local v6    # "horizontalTextOffset":F
    .end local v7    # "textHeight":F
    .end local v8    # "verticalTextOffset":F
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setBound()V

    .line 118
    iput-boolean v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    goto :goto_0

    .line 126
    .restart local v6    # "horizontalTextOffset":F
    .restart local v7    # "textHeight":F
    .restart local v8    # "verticalTextOffset":F
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CircleProgressBar;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 136
    return-void
.end method

.method public setCircleBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 237
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    if-ne v0, p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0
.end method

.method public setCircleBarWidth(F)V
    .locals 5
    .param p1, "barWidth"    # F

    .prologue
    const/4 v4, 0x0

    .line 261
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    .line 265
    iput v4, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 272
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->postInvalidate()V

    .line 273
    return-void

    .line 267
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    goto :goto_0
.end method

.method public setCircleRimColor(I)V
    .locals 2
    .param p1, "rimColor"    # I

    .prologue
    .line 249
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 200
    if-ltz p1, :cond_0

    .line 203
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-ne p1, v0, :cond_1

    .line 210
    :goto_1
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 201
    goto :goto_0

    .line 204
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    .line 205
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-gt v0, p1, :cond_2

    .line 208
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_1

    .line 206
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    goto :goto_2
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 217
    if-ltz p1, :cond_0

    .line 220
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-gt p1, v0, :cond_1

    .line 223
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-ne p1, v0, :cond_2

    .line 230
    :goto_2
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 218
    goto :goto_0

    .line 221
    :cond_1
    iget p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    goto :goto_1

    .line 224
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    .line 225
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 226
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircleProgressBar;->postInvalidate()V

    goto :goto_2
.end method

.method public setProgressStatus(Z)V
    .locals 0
    .param p1, "isShowProgress"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 193
    return-void
.end method
