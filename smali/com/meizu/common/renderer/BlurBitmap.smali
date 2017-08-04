.class public Lcom/meizu/common/renderer/BlurBitmap;
.super Ljava/lang/Object;
.source "BlurBitmap.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "jni_systemui"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "r"    # I

    .prologue
    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 13
    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16
    .local v0, "radius":I
    invoke-static {p0, v0}, Lcom/meizu/common/renderer/BlurBitmap;->nativeBlur(Ljava/lang/Object;I)V

    .line 11
    return-void
.end method

.method private static native nativeBlur(Ljava/lang/Object;I)V
.end method
