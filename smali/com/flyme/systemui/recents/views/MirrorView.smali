.class public Lcom/flyme/systemui/recents/views/MirrorView;
.super Landroid/view/View;
.source "MirrorView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFillColor:Z

.field private mLayoutRect:Landroid/graphics/RectF;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mTransparent:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    .line 19
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mTransparent:Landroid/graphics/Bitmap;

    .line 21
    return-void
.end method


# virtual methods
.method public bindBitmap(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 34
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/MirrorView;->invalidate()V

    .line 29
    return-void

    .line 36
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 38
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 40
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 41
    .local v3, "scaleW":F
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 42
    .local v2, "scaleH":F
    sub-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 43
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mFillColor:Z

    .line 48
    :goto_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 45
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mFillColor:Z

    .line 46
    move v2, v3

    goto :goto_1

    .line 51
    .end local v2    # "scaleH":F
    .end local v3    # "scaleW":F
    :cond_3
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 54
    .local v1, "originRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 56
    .local v0, "newRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 57
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v2, v4, v5

    .line 58
    .restart local v2    # "scaleH":F
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v4, v5

    .line 59
    .restart local v3    # "scaleW":F
    sub-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    .line 60
    iput-boolean v10, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mFillColor:Z

    .line 65
    :goto_2
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 68
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 72
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 73
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_0

    .line 62
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mFillColor:Z

    .line 63
    move v3, v2

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const v2, -0x19191a

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mTransparent:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 93
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mFillColor:Z

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
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

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/MirrorView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/MirrorView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/MirrorView;->bindBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    return-void
.end method

.method public transparent()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mTransparent:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/MirrorView;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    return-void
.end method
