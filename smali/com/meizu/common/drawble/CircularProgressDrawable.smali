.class public Lcom/meizu/common/drawble/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# instance fields
.field private mCenterIcon:Landroid/graphics/drawable/Drawable;

.field private mIconPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mShouldIcon:Z

.field private mSize:I

.field private mStartAngle:F

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "strokeWidth"    # I
    .param p3, "strokeColor"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mShouldIcon:Z

    .line 33
    iput p1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mSize:I

    .line 34
    iput p2, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeWidth:I

    .line 35
    iput p3, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeColor:I

    const/high16 v0, 0x42b40000    # 90.0f

    .line 36
    iput v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStartAngle:F

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mSweepAngle:F

    .line 38
    return-void
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private getRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 121
    iget-object v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    return-object v1

    .line 122
    :cond_0
    iget v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeWidth:I

    div-int/lit8 v0, v1, 0x2

    .line 123
    .local v0, "index":I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mRectF:Landroid/graphics/RectF;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 68
    .local v6, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStartAngle:F

    iget v3, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mSweepAngle:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 73
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 82
    iget-boolean v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mShouldIcon:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v7

    .line 92
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v11

    .line 93
    .local v11, "width":I
    iget v10, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeWidth:I

    .line 94
    .local v10, "lineWidth":I
    int-to-float v0, v7

    const v1, 0x405ae148    # 3.42f

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 95
    .local v9, "lineHeight":I
    int-to-double v0, v11

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 96
    .local v8, "lineGap":I
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    int-to-float v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget v0, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v10, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v11, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget v0, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v8, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v1, v10, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v11, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v8, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v10, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v4, v9, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    .end local v7    # "height":I
    .end local v8    # "lineGap":I
    .end local v9    # "lineHeight":I
    .end local v10    # "lineWidth":I
    .end local v11    # "width":I
    :goto_2
    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mPath:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/meizu/common/drawble/CircularProgressDrawable;->getSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 83
    :cond_2
    return-void

    .line 86
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 113
    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mSize:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 105
    return-void
.end method

.method public setCenterIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "centerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 109
    return-void
.end method

.method public setShowCenterIcon(Z)V
    .locals 0
    .param p1, "showCenterIcon"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mShouldIcon:Z

    .line 154
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mStartAngle:F

    .line 46
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/common/drawble/CircularProgressDrawable;->mSweepAngle:F

    .line 54
    return-void
.end method
