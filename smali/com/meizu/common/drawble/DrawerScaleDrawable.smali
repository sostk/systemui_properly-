.class public Lcom/meizu/common/drawble/DrawerScaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerScaleDrawable.java"


# instance fields
.field private mDefaultColor:I

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPathDefaultLength:I

.field private mPathDistance:I

.field private mPathMinLength:I

.field private mPathThickness:I

.field private mProgress:F

.field private mThemeColor:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    .line 24
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v2, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    sget v3, Lcom/meizu/common/R$color;->mc_default_theme_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mThemeColor:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    sget v2, Lcom/meizu/common/R$color;->mc_drawerscaledrawable_default_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mDefaultColor:I

    .line 41
    sget v2, Lcom/meizu/common/R$dimen;->mc_drawerscaledrawable_path_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    .line 42
    sget v2, Lcom/meizu/common/R$dimen;->mc_drawerscaledrawable_path_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDistance:I

    .line 43
    sget v2, Lcom/meizu/common/R$dimen;->mc_drawerscaledrawable_path_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDefaultLength:I

    .line 44
    sget v2, Lcom/meizu/common/R$dimen;->mc_drawerscaledrawable_path_min_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathMinLength:I

    .line 45
    iget v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 46
    :goto_0
    iget v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDistance:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mHeight:I

    .line 47
    iget v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDefaultLength:I

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mWidth:I

    .line 48
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mDefaultColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 52
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mDefaultColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    return-void

    .line 45
    :cond_0
    iget v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    goto :goto_0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 135
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 61
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 62
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    div-int/lit8 v3, v6, 0x2

    .line 63
    .local v3, "radius":I
    move v5, v3

    .line 64
    .local v5, "y":I
    move v4, v3

    .line 65
    .local v4, "x":I
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDefaultLength:I

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathMinLength:I

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mProgress:F

    invoke-static {v6, v7, v8}, Lcom/meizu/common/drawble/DrawerScaleDrawable;->lerp(FFF)F

    move-result v6

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 66
    .local v1, "drawLength":F
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mDefaultColor:I

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mThemeColor:I

    iget v8, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mProgress:F

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/meizu/common/util/ResourceUtils;->getGradualColor(IIFI)I

    move-result v0

    .line 67
    .local v0, "drawColor":I
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    .line 69
    if-lt v2, v6, :cond_0

    .line 76
    move v4, v3

    .line 77
    move v5, v3

    .line 78
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 84
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDistance:I

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 85
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 89
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDistance:I

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 90
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 92
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 95
    iget-object v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    return-void

    .line 71
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v3

    iget-object v8, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    add-float/2addr v6, v10

    float-to-int v4, v6

    .line 73
    int-to-float v6, v4

    int-to-float v7, v5

    int-to-float v8, v3

    iget-object v9, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    iget v6, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathDistance:I

    iget v7, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPathThickness:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    .line 112
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 107
    iget-object v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 120
    iput p1, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mProgress:F

    .line 121
    invoke-virtual {p0}, Lcom/meizu/common/drawble/DrawerScaleDrawable;->invalidateSelf()V

    .line 122
    return-void
.end method

.method public setProgress(III)V
    .locals 2
    .param p1, "curX"    # I
    .param p2, "beginX"    # I
    .param p3, "endX"    # I

    .prologue
    .line 131
    int-to-float v0, p1

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/drawble/DrawerScaleDrawable;->mProgress:F

    .line 132
    invoke-virtual {p0}, Lcom/meizu/common/drawble/DrawerScaleDrawable;->invalidateSelf()V

    .line 133
    return-void
.end method
