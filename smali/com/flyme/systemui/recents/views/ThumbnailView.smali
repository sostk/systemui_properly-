.class public Lcom/flyme/systemui/recents/views/ThumbnailView;
.super Landroid/view/View;
.source "ThumbnailView.java"


# instance fields
.field protected mAlive:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlurAlpha:F

.field mDimAlpha:F

.field mDrawPaint:Landroid/graphics/Paint;

.field private mFillColor:Z

.field public mForceDraw:Z

.field public mInvisible:Z

.field private mLayoutRect:Landroid/graphics/RectF;

.field mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field protected mSecretive:Z

.field private mSecretiveBitmap:Landroid/graphics/Bitmap;

.field mSecretiveDrawPaint:Landroid/graphics/Paint;

.field private mSecretiveScaleMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mInvisible:Z

    .line 24
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mForceDraw:Z

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    .line 35
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 36
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public getSecretive()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretive:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mForceDraw:Z

    if-nez v0, :cond_0

    .line 81
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mInvisible:Z

    if-eqz v0, :cond_1

    .line 82
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mForceDraw:Z

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    :goto_0
    return-void

    .line 90
    :cond_3
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    :cond_4
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretive:Z

    if-eqz v0, :cond_7

    .line 94
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :cond_5
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 65
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailPaintFilter()V

    .line 63
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailScale()V

    .line 74
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateSecretThumbnailScale()V

    .line 69
    :cond_0
    return-void
.end method

.method public setAlive(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mAlive:Z

    .line 272
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailPaintFilter()V

    .line 270
    return-void
.end method

.method public setBlurAlpha(F)V
    .locals 3
    .param p1, "f"    # F

    .prologue
    .line 293
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 294
    const/4 p1, 0x0

    .line 298
    :cond_0
    :goto_0
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iput p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    .line 300
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBlurAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mInvisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->invalidate()V

    .line 292
    :cond_1
    return-void

    .line 295
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 296
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setDimAlpha(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .prologue
    .line 128
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDimAlpha:F

    .line 130
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailPaintFilter()V

    .line 127
    :cond_0
    return-void
.end method

.method public setSecretive(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x0

    .line 276
    if-eqz p1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    .line 279
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateSecretThumbnailScale()V

    .line 286
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretive:Z

    if-eq v0, p1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->invalidate()V

    .line 289
    :cond_1
    iput-boolean p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretive:Z

    .line 275
    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 283
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailScale()V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->updateThumbnailPaintFilter()V

    .line 111
    return-void

    .line 116
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setBlurAlpha(F)V

    .line 117
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    iput-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method updateSecretThumbnailScale()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    .line 222
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveBitmap:Landroid/graphics/Bitmap;

    .line 224
    .local v0, "dstBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 225
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 226
    .local v4, "scaleW":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 227
    .local v3, "scaleH":F
    sub-float v5, v4, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    .line 228
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 234
    :goto_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 221
    .end local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scaleH":F
    .end local v4    # "scaleW":F
    :cond_0
    :goto_1
    return-void

    .line 231
    .restart local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "scaleH":F
    .restart local v4    # "scaleW":F
    :cond_1
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 232
    move v3, v4

    goto :goto_0

    .line 237
    .end local v3    # "scaleH":F
    .end local v4    # "scaleW":F
    :cond_2
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 239
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 240
    .local v2, "originRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 242
    .local v1, "newRect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 243
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v3, v5, v6

    .line 244
    .restart local v3    # "scaleH":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v4, v5, v6

    .line 245
    .restart local v4    # "scaleW":F
    sub-float v5, v4, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    .line 246
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 251
    :goto_2
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 253
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 254
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 257
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget v5, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 258
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 259
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 248
    :cond_3
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 249
    move v4, v3

    goto :goto_2
.end method

.method updateThumbnailPaintFilter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, -0x1

    .line 143
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mInvisible:Z

    if-eqz v2, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDimAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 148
    .local v1, "mul":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 150
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 151
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 153
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mSecretiveDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    :goto_0
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mInvisible:Z

    if-nez v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->invalidate()V

    .line 142
    :cond_1
    return-void

    .line 155
    :cond_2
    move v0, v1

    .line 156
    .local v0, "grey":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 157
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v5, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method updateThumbnailScale()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x0

    .line 178
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 179
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    .line 180
    .local v0, "dstBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 182
    .local v4, "scaleW":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 183
    .local v3, "scaleH":F
    sub-float v5, v4, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    .line 184
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 189
    :goto_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 177
    .end local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scaleH":F
    .end local v4    # "scaleW":F
    :cond_0
    :goto_1
    return-void

    .line 186
    .restart local v0    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "scaleH":F
    .restart local v4    # "scaleW":F
    :cond_1
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 187
    move v3, v4

    goto :goto_0

    .line 192
    .end local v3    # "scaleH":F
    .end local v4    # "scaleW":F
    :cond_2
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 194
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 195
    .local v2, "originRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 197
    .local v1, "newRect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 198
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v3, v5, v6

    .line 199
    .restart local v3    # "scaleH":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v4, v5, v6

    .line 200
    .restart local v4    # "scaleW":F
    sub-float v5, v4, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_3

    .line 201
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 206
    :goto_2
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 208
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 209
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 212
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget v5, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 213
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 214
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 203
    :cond_3
    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/ThumbnailView;->mFillColor:Z

    .line 204
    move v4, v3

    goto :goto_2
.end method
