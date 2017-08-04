.class public Lcom/meizu/common/widget/CustomButton;
.super Landroid/widget/Button;
.source "CustomButton.java"


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0xf

.field private static MAX_ALPHASIGN:F

.field private static MIN_ALPHASIGN:F


# instance fields
.field private baseline:I

.field private mAddInterpolator:Landroid/view/animation/Interpolator;

.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mAlphaSign:F

.field private mBackgroundBound:Landroid/graphics/Rect;

.field private mBtnAddText:Ljava/lang/String;

.field private mBtnAddTextColor:I

.field private mBtnAddedText:Ljava/lang/String;

.field private mBtnAddedTextColor:I

.field private mBtnTextSize:F

.field mIsFirst:Z

.field mIsPressing:Z

.field private mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

.field private mResPressedDrawble:Landroid/graphics/drawable/Drawable;

.field private mTextPaintA:Landroid/graphics/Paint;

.field private mTextPaintB:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/meizu/common/widget/CustomButton;->MIN_ALPHASIGN:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    sput v0, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_CustomButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsPressing:Z

    .line 28
    iput-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsFirst:Z

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    .line 31
    iput-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 37
    iput v3, p0, Lcom/meizu/common/widget/CustomButton;->mBtnTextSize:F

    .line 54
    sget-object v1, Lcom/meizu/common/R$styleable;->CustomButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnFocus:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    .line 56
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnNormalPress:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    .line 57
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnTextSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnTextSize:F

    .line 58
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnPressedText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    .line 59
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnDefaultText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    .line 60
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnPressedTextColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedTextColor:I

    .line 61
    sget v1, Lcom/meizu/common/R$styleable;->CustomButton_mcBtnDefaultTextColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddTextColor:I

    .line 62
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 68
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomButton;->init()V

    .line 70
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_btn_list_default_alpha_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_btn_list_default_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomButton;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomButton;
    .param p1, "x1"    # F

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomButton;->setAlphaSign(F)V

    return-void
.end method

.method private getAlphaSign()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    return v0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v1, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mBtnTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    .line 78
    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    .line 80
    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "SDK":I
    const/16 v2, 0x15

    .line 82
    if-ge v0, v2, :cond_0

    .line 85
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mAddInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3f2b851f    # 0.67f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mAddInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private processButtonClick()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 209
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsPressing:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    .line 214
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsPressing:Z

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomButton;->mIsPressing:Z

    .line 215
    iget v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 216
    iget v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/CustomButton;->MIN_ALPHASIGN:F

    invoke-direct {p0, v0, v1, v3}, Lcom/meizu/common/widget/CustomButton;->startAnimator(FFI)V

    .line 219
    :goto_2
    return-void

    .line 210
    :cond_0
    iput v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 214
    goto :goto_1

    .line 218
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    invoke-direct {p0, v0, v1, v3}, Lcom/meizu/common/widget/CustomButton;->startAnimator(FFI)V

    goto :goto_2
.end method

.method private setAlphaSign(F)V
    .locals 0
    .param p1, "alphaSign"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    .line 91
    return-void
.end method

.method private startAnimator(FFI)V
    .locals 4
    .param p1, "begin"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, 0x2

    .line 194
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 195
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/CustomButton$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomButton$1;-><init>(Lcom/meizu/common/widget/CustomButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mAddInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 206
    return-void
.end method


# virtual methods
.method public getBtnDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnPressedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x429a0000    # 77.0f

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 144
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsFirst:Z

    if-nez v1, :cond_0

    .line 159
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomButton;->mIsPressing:Z

    if-nez v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 172
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 173
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 149
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    .line 150
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 151
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 155
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomButton;->mIsFirst:Z

    goto :goto_0

    .line 146
    .end local v0    # "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    goto :goto_1

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 161
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResPressedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 165
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mResDefaultDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    sget v2, Lcom/meizu/common/widget/CustomButton;->MAX_ALPHASIGN:F

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaSign:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomButton;->baseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CustomButton;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .local v8, "width":I
    const/4 v0, 0x0

    .line 113
    .local v0, "height":I
    iget-object v10, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 114
    .local v7, "textMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v10, v11

    .line 115
    .local v6, "textHeigt":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 117
    .local v1, "heightTemp":I
    iget-object v10, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    iget-object v11, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 118
    .local v9, "widthTemp":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 119
    .local v5, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 120
    .local v3, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 121
    .local v4, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "measureHeight":I
    const/high16 v10, -0x80000000

    .line 123
    if-eq v5, v10, :cond_0

    const/high16 v10, 0x40000000    # 2.0f

    .line 125
    if-eq v5, v10, :cond_1

    .line 128
    move v8, v4

    :goto_0
    const/high16 v10, -0x80000000

    .line 131
    if-eq v3, v10, :cond_2

    const/high16 v10, 0x40000000    # 2.0f

    .line 133
    if-eq v3, v10, :cond_3

    .line 135
    if-eqz v5, :cond_4

    .line 138
    :goto_1
    invoke-virtual {p0, v8, v0}, Lcom/meizu/common/widget/CustomButton;->setMeasuredDimension(II)V

    .line 139
    return-void

    .line 124
    :cond_0
    move v8, v9

    goto :goto_0

    .line 126
    :cond_1
    move v8, v4

    goto :goto_0

    .line 132
    :cond_2
    move v0, v1

    goto :goto_1

    .line 134
    :cond_3
    move v0, v2

    goto :goto_1

    .line 136
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomButton;->processButtonClick()V

    .line 190
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBtnDefaultText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    .line 254
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->requestLayout()V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 259
    return-void
.end method

.method public setBtnPressedText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    .line 227
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomButton;->mBtnAddedText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->requestLayout()V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 232
    return-void
.end method

.method public setmBtnAddTextColor(I)V
    .locals 1
    .param p1, "addTextColor"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 285
    return-void
.end method

.method public setmBtnAddedTextColor(I)V
    .locals 1
    .param p1, "addedTextColor"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 276
    return-void
.end method

.method public setmBtnTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintA:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/CustomButton;->mTextPaintB:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomButton;->mIsFirst:Z

    .line 295
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 297
    return-void
.end method
