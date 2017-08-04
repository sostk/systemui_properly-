.class public Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;
.super Ljava/lang/Object;
.source "BlurBitmapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlackColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 5
    .param p0, "alpha"    # F

    .prologue
    const/high16 v4, -0x1000000

    .line 58
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 59
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1
.end method

.method public static returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static returnBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const v0, 0x3e2b020c    # 0.167f

    invoke-static {p0, v0}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->small(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 31
    :cond_0
    invoke-static {p1, p2}, Lcom/meizu/common/renderer/BlurBitmap;->blur(Landroid/graphics/Bitmap;I)V

    .line 32
    return-object p1
.end method

.method public static returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "alpha"    # F

    .prologue
    const/4 v6, 0x0

    .line 47
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 48
    .local v2, "copy":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->getBlackColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 51
    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 52
    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    return-object v2
.end method

.method private static small(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bit"    # F

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
