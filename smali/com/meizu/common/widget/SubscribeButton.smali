.class public Lcom/meizu/common/widget/SubscribeButton;
.super Landroid/widget/Button;
.source "SubscribeButton.java"


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0xf

.field private static MAX_ALPHASIGN:F = 0.0f

.field private static MIN_ALPHASIGN:F = 0.0f

.field private static final PRESSED_STATE_SET:[I

.field private static final Tag:Ljava/lang/String; = "SubButton"


# instance fields
.field private isPressed:Z

.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mAlphaSign:F

.field private mAnimDuration:I

.field private mBackgroundBound:Landroid/graphics/Rect;

.field private mBaseline:I

.field private mBeAddedAlpha:I

.field private mBtnBeAddedText:Ljava/lang/String;

.field private mBtnBeAddedTextColor:I

.field private mBtnNormalText:Ljava/lang/String;

.field private mBtnNormalTextColor:I

.field private mBtnSubTextSize:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsSelected:Z

.field private mManuaStartAnim:Z

.field private mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

.field private mResNormalDrawble:Landroid/graphics/drawable/Drawable;

.field private mTextPaintA:Landroid/text/TextPaint;

.field private mTextPaintB:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    sput v0, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    sput v0, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    const/4 v0, 0x1

    .line 190
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/SubscribeButton;->PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_SubscribeButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    iput-boolean v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    .line 174
    iput-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 180
    iput v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 186
    iput-boolean v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    const/16 v1, 0x4d

    .line 187
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:I

    .line 188
    iput-boolean v4, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    .line 204
    sget-object v1, Lcom/meizu/common/R$styleable;->SubscribeButton:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalBg:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 206
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedBg:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 207
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnSubTextSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 208
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 209
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 210
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedTextColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    .line 211
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalTextColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    .line 212
    sget v1, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnAnimDuration:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    .line 213
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 224
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 229
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->init()V

    .line 231
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_btn_list_default_alpha_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    new-array v2, v6, [I

    const v3, 0x101009e

    aput v3, v2, v4

    const v3, 0x10100a7

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_btn_list_default_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 226
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    new-array v2, v6, [I

    const v3, 0x101009e

    aput v3, v2, v4

    const v3, 0x10100a7

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SubscribeButton;F)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/SubscribeButton;
    .param p1, "x1"    # F

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    return-void
.end method

.method private getAlphaSign()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    return v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v5, 0x15

    .line 276
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v2, "paint":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v3, "sans-serif-medium"

    const/4 v4, 0x0

    .line 280
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 281
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 282
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    .line 283
    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    iget v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 284
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    .line 285
    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    iget v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 287
    .local v0, "SDK":I
    if-ge v0, v5, :cond_1

    .line 292
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_0

    .line 289
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private setAlphaSign(F)V
    .locals 0
    .param p1, "alphaSign"    # F

    .prologue
    .line 297
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    .line 298
    return-void
.end method

.method private startAnimator(FFI)V
    .locals 4
    .param p1, "begin"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, 0x2

    .line 412
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 413
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SubscribeButton$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SubscribeButton$1;-><init>(Lcom/meizu/common/widget/SubscribeButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 422
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 424
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 264
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getDrawableState()[I

    move-result-object v0

    .line 266
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 272
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 273
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public getBeAddedAlpha()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:I

    return v0
.end method

.method public getBeAddedDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBtnBeAddedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnBeAddedTextColor()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBtnNormalText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnNormalTextColor()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getNormalDrawble()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    return v0
.end method

.method public isManuaStartAnim()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 242
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 249
    :goto_1
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 253
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 254
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-object v0

    .line 255
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/SubscribeButton;->PRESSED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 374
    sget v4, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sub-float v2, v4, v5

    .line 375
    .local v2, "inverAlphaSign":F
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    mul-float v5, v2, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 376
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    iget v6, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 378
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    .local v3, "rect":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-nez v4, :cond_0

    .line 387
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    mul-float v5, v2, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 388
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 389
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 391
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 392
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    .local v1, "btnNormalText":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, "btnBeAddedText":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 400
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 401
    return-void

    .line 380
    .end local v0    # "btnBeAddedText":Ljava/lang/String;
    .end local v1    # "btnNormalText":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    mul-float v5, v2, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 384
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 385
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 397
    .restart local v0    # "btnBeAddedText":Ljava/lang/String;
    .restart local v1    # "btnNormalText":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/SubscribeButton;

    .line 614
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 615
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

    .line 334
    .local v0, "height":I
    iget-object v10, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 335
    .local v7, "textMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v10, v11

    .line 336
    .local v6, "textHeigt":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 338
    .local v1, "heightTemp":I
    iget-object v10, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    iget-object v11, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    iget-object v12, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 339
    .local v9, "widthTemp":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 340
    .local v5, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 341
    .local v3, "measureHeightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 342
    .local v4, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "measureHeight":I
    const/high16 v10, -0x80000000

    .line 344
    if-eq v5, v10, :cond_0

    const/high16 v10, 0x40000000    # 2.0f

    .line 346
    if-eq v5, v10, :cond_1

    .line 349
    move v8, v4

    :goto_0
    const/high16 v10, -0x80000000

    .line 352
    if-eq v3, v10, :cond_2

    const/high16 v10, 0x40000000    # 2.0f

    .line 354
    if-eq v3, v10, :cond_3

    .line 356
    if-eqz v5, :cond_4

    .line 359
    :goto_1
    invoke-virtual {p0, v8, v0}, Lcom/meizu/common/widget/SubscribeButton;->setMeasuredDimension(II)V

    .line 360
    return-void

    .line 345
    :cond_0
    move v8, v9

    goto :goto_0

    .line 347
    :cond_1
    move v8, v4

    goto :goto_0

    .line 353
    :cond_2
    move v0, v1

    goto :goto_1

    .line 355
    :cond_3
    move v0, v2

    goto :goto_1

    .line 357
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 365
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    .line 366
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 367
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    .line 368
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 369
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method public onStartAnimation()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 427
    iget-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 428
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 429
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    .line 432
    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 427
    goto :goto_0

    .line 431
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    sget v1, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 307
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 323
    :pswitch_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    .line 326
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 312
    :goto_1
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    .line 315
    :pswitch_2
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_0

    .line 320
    :pswitch_3
    iput-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->onStartAnimation()V

    goto :goto_0
.end method

.method public setAnimDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    .line 490
    return-void
.end method

.method public setBeAddedAlpha(I)V
    .locals 0
    .param p1, "beAdded"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:I

    .line 517
    return-void
.end method

.method public setBeAddedDrawble(I)V
    .locals 1
    .param p1, "beAddedDrawbleId"    # I

    .prologue
    .line 586
    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 590
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 591
    return-void

    .line 587
    :cond_0
    return-void
.end method

.method public setBeAddedDrawble(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "beAddedDrawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 573
    if-eqz p1, :cond_0

    .line 576
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 577
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 578
    return-void

    .line 574
    :cond_0
    return-void
.end method

.method public setBtnBeAddedText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 436
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->requestLayout()V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 441
    return-void
.end method

.method public setBtnBeAddedTextColor(I)V
    .locals 1
    .param p1, "beaddedTextColor"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 462
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 463
    return-void
.end method

.method public setBtnNormalText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 449
    .local v0, "textTemp":Ljava/lang/String;
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->requestLayout()V

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 454
    return-void
.end method

.method public setBtnNormalTextColor(I)V
    .locals 1
    .param p1, "addTextColor"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 471
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 472
    return-void
.end method

.method public setBtnSubTextSize(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    .line 479
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 480
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintB:Landroid/text/TextPaint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 481
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 485
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 486
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTextPaintA:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 483
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    goto :goto_0
.end method

.method public setManuaStartAnim(Z)V
    .locals 0
    .param p1, "manuaStartAnim"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mManuaStartAnim:Z

    .line 539
    return-void
.end method

.method public setNormalDrawble(I)V
    .locals 1
    .param p1, "normalDrawbleId"    # I

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 551
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 552
    return-void

    .line 548
    :cond_0
    return-void
.end method

.method public setNormalDrawble(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "normalDrawble"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 563
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 564
    invoke-virtual {p0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 565
    return-void

    .line 561
    :cond_0
    return-void
.end method

.method public setSelectedable(Z)V
    .locals 3
    .param p1, "selectedable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-ne v0, p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 499
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 500
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    .line 505
    sget v0, Lcom/meizu/common/widget/SubscribeButton;->MAX_ALPHASIGN:F

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 501
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/SubscribeButton;->setAlphaSign(F)V

    .line 502
    sget v0, Lcom/meizu/common/widget/SubscribeButton;->MIN_ALPHASIGN:F

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaSign:F

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mResBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method
