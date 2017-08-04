.class Lcom/android/keyguard/KeyguardCircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardCircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I
    .param p3, "frameColor"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "frameShadowColor"    # I
    .param p6, "shadowRadius"    # F
    .param p7, "highlightColor"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    iput p2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    .line 56
    move/from16 v0, p6

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    .line 57
    move/from16 v0, p3

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    .line 58
    move/from16 v0, p5

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    .line 59
    move/from16 v0, p4

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    .line 60
    move/from16 v0, p7

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    .line 62
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 66
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 67
    .local v5, "height":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 69
    .local v6, "square":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v3, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v3, "cropRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v2, v10, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .local v2, "circleRect":Landroid/graphics/RectF;
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 72
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 74
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 75
    .local v4, "fillPath":Landroid/graphics/Path;
    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    invoke-virtual {v4, v2, v8, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 77
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 95
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v10, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 96
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 97
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    .line 98
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    .line 53
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v1, v3

    .line 110
    .local v1, "outside":F
    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    mul-float v0, v3, v1

    .line 111
    .local v0, "inside":F
    sub-float v3, v1, v0

    div-float v2, v3, v7

    .line 113
    .local v2, "pad":F
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v5, v1, v2

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 117
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 120
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {v3, v4, v8, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 124
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 127
    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 128
    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 129
    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 126
    const/16 v7, 0x54

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v3, v4, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 107
    return-void

    .line 134
    :cond_1
    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    .line 101
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 157
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 161
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    .line 147
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 139
    return-void
.end method

.method public verifyParams(FIFIFI)Z
    .locals 2
    .param p1, "iconSize"    # F
    .param p2, "frameColor"    # I
    .param p3, "stroke"    # F
    .param p4, "frameShadowColor"    # I
    .param p5, "shadowRadius"    # F
    .param p6, "highlightColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 166
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 167
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    if-ne v1, p2, :cond_0

    .line 168
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    .line 169
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    if-ne v1, p4, :cond_0

    .line 170
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    cmpl-float v1, v1, p5

    if-nez v1, :cond_0

    .line 171
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    if-ne v1, p6, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method
