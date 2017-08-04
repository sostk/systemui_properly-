.class public Lcom/flyme/systemui/recents/misc/BitmapWithColor;
.super Ljava/lang/Object;
.source "BitmapWithColor.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->isBlackBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iput-object v1, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "isRunning"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    .line 24
    :cond_0
    return-void
.end method

.method private static getMainColorFromBitmap(Landroid/graphics/Bitmap;I)I
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "topShift"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0xf0

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "mainColor":I
    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 55
    .local v7, "width":I
    const/4 v6, 0x1

    .line 56
    .local v6, "times":I
    invoke-virtual {p0, v8, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 57
    const/4 v4, 0x5

    .local v4, "pixel":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 58
    if-nez v6, :cond_0

    .line 59
    invoke-virtual {p0, v4, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 60
    const/4 v6, 0x1

    .line 57
    :goto_1
    add-int/lit8 v4, v4, 0x5

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v4, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 67
    :cond_2
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 68
    .local v0, "a":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 69
    .local v5, "r":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 70
    .local v2, "g":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 71
    .local v1, "b":I
    add-int v8, v5, v2

    add-int/2addr v8, v1

    const/16 v9, 0x2d0

    if-le v8, v9, :cond_3

    .line 72
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 75
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v4    # "pixel":I
    .end local v5    # "r":I
    .end local v6    # "times":I
    .end local v7    # "width":I
    :cond_3
    const/high16 v8, -0x1000000

    or-int/2addr v8, v3

    return v8
.end method

.method private static isBlackBitmap(Landroid/graphics/Bitmap;)Z
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, -0x1000000

    const/4 v7, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 33
    .local v2, "maxX":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 34
    .local v3, "maxY":I
    invoke-virtual {p0, v7, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 35
    invoke-virtual {p0, v7, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 36
    invoke-virtual {p0, v2, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 37
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 39
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 40
    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 41
    return v7

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "j":I
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 47
    .end local v0    # "i":I
    :cond_3
    return v7
.end method
