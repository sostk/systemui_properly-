.class public Lcom/meizu/common/interpolator/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private count:I

.field private mX:[F

.field private mY:[F

.field private precision:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    const v0, 0x3c23d70a    # 0.01f

    .line 9
    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->initPath(FFFF)V

    .line 25
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 3
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F
    .param p5, "duration"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x64

    .line 8
    iput v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    const v1, 0x3c23d70a    # 0.01f

    .line 9
    iput v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 28
    div-int/lit8 v0, p5, 0x5

    .line 29
    .local v0, "per":I
    iget v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    .end local v0    # "per":I
    :cond_0
    iput v0, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    .line 30
    iget v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->initPath(FFFF)V

    .line 32
    return-void
.end method

.method private initPath(FFFF)V
    .locals 13
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 38
    iget v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    .line 39
    iget v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    new-array v10, v10, [F

    iput-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    const/4 v7, 0x0

    .local v7, "t":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 43
    mul-float/2addr v10, p1

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v11, v11, p3

    sub-float v0, v10, v11

    .local v0, "ax":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 44
    mul-float v10, v10, p3

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, p1

    sub-float v2, v10, v11

    .local v2, "bx":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 45
    mul-float v4, v10, p1

    .local v4, "cx":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 46
    mul-float/2addr v10, p2

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v11, v11, p4

    sub-float v1, v10, v11

    .local v1, "ay":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 47
    mul-float v10, v10, p4

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, p2

    sub-float v3, v10, v11

    .local v3, "by":F
    const/high16 v10, 0x40400000    # 3.0f

    .line 48
    mul-float v5, v10, p2

    .local v5, "cy":F
    const/4 v6, 0x0

    .line 51
    .local v6, "i":I
    :goto_0
    iget v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->count:I

    if-lt v6, v10, :cond_0

    .line 58
    return-void

    .line 52
    :cond_0
    mul-float v8, v7, v7

    .line 53
    .local v8, "tt":F
    mul-float v9, v8, v7

    .line 54
    .local v9, "ttt":F
    iget-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    mul-float v11, v0, v9

    mul-float v12, v2, v8

    add-float/2addr v11, v12

    mul-float v12, v4, v7

    add-float/2addr v11, v12

    aput v11, v10, v6

    .line 55
    iget-object v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    mul-float v11, v1, v9

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    mul-float v12, v5, v7

    add-float/2addr v11, v12

    aput v11, v10, v6

    .line 56
    iget v10, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->precision:F

    add-float/2addr v7, v10

    .line 51
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 72
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    .line 73
    return v10

    .line 74
    :cond_0
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_1

    .line 75
    return v9

    :cond_1
    const/4 v4, 0x0

    .line 79
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 81
    .local v0, "endIndex":I
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 90
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 91
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    .line 92
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v8, v8, v4

    return v8

    .line 82
    .end local v7    # "xRange":F
    :cond_2
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 83
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    .line 84
    move v0, v3

    goto :goto_0

    .line 86
    :cond_3
    move v4, v3

    goto :goto_0

    .line 95
    .end local v3    # "midIndex":I
    .restart local v7    # "xRange":F
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 96
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 98
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v5, v8, v4

    .line 99
    .local v5, "startY":F
    iget-object v8, p0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;->mY:[F

    aget v1, v8, v0

    .line 100
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
