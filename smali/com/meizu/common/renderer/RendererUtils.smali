.class public Lcom/meizu/common/renderer/RendererUtils;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# static fields
.field private static sMethod_screenshot:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Str2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v5, "MD5"

    .line 123
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 132
    .local v3, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v4, "hex":Ljava/lang/StringBuilder;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 130
    .end local v3    # "hash":[B
    .end local v4    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 126
    return-object v7

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 129
    return-object v7

    .line 133
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "hash":[B
    .restart local v4    # "hex":Ljava/lang/StringBuilder;
    :cond_0
    aget-byte v7, v3, v5

    int-to-byte v0, v7

    .line 134
    .local v0, "b":B
    and-int/lit16 v7, v0, 0xff

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1

    .line 136
    :goto_1
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "0"

    .line 135
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "cond"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 103
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 105
    if-nez p1, :cond_3

    .line 106
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 109
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 112
    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 115
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->loadLibraryIfNeeded()V

    .line 116
    invoke-static {p1, p2}, Lcom/meizu/common/renderer/RendererUtils;->native_blurBitmap(Ljava/lang/Object;I)V

    .line 117
    return-void
.end method

.method public static captureScreen(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "sourceRect"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I

    .prologue
    const/4 v6, 0x0

    .line 75
    :try_start_0
    sget-object v1, Lcom/meizu/common/renderer/RendererUtils;->sMethod_screenshot:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    sget-object v1, Lcom/meizu/common/renderer/RendererUtils;->sMethod_screenshot:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 91
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 92
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 93
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.view.SurfaceControl"

    .line 76
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "screenshot"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/renderer/RendererUtils;->sMethod_screenshot:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "glrenderer"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "captureScreen error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v6
.end method

.method public static clip(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 37
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    .line 38
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    return p1

    .line 39
    :cond_1
    return p0
.end method

.method public static clip(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 43
    if-gt p0, p2, :cond_0

    .line 44
    if-lt p0, p1, :cond_1

    .line 45
    return p0

    .line 43
    :cond_0
    return p2

    .line 44
    :cond_1
    return p1
.end method

.method public static getLayer(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 225
    invoke-static {p0}, Lcom/meizu/common/renderer/RendererUtils;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static native native_blurBitmap(Ljava/lang/Object;I)V
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation
.end method

.method public static nextMultipleN(FI)I
    .locals 2
    .param p0, "value"    # F
    .param p1, "n"    # I

    .prologue
    .line 64
    int-to-float v0, p1

    add-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method public static nextMultipleN(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "n"    # I

    .prologue
    .line 60
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 49
    if-gtz p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 52
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 53
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 54
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 55
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 56
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 68
    if-lez p0, :cond_0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static windowTypeToLayerLw(I)I
    .locals 3
    .param p0, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 143
    if-ge p0, v2, :cond_1

    .line 147
    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    .line 221
    return v0

    :cond_1
    const/16 v0, 0x63

    .line 143
    if-gt p0, v0, :cond_0

    .line 145
    return v1

    .line 150
    :pswitch_1
    return v2

    .line 154
    :pswitch_2
    return v1

    .line 159
    :pswitch_3
    return v1

    :pswitch_4
    const/4 v0, 0x3

    .line 163
    return v0

    :pswitch_5
    const/4 v0, 0x4

    .line 167
    return v0

    :pswitch_6
    const/4 v0, 0x5

    .line 172
    return v0

    :pswitch_7
    const/4 v0, 0x6

    .line 176
    return v0

    :pswitch_8
    const/4 v0, 0x7

    .line 181
    return v0

    :pswitch_9
    const/16 v0, 0x8

    .line 186
    return v0

    :pswitch_a
    const/16 v0, 0x9

    .line 191
    return v0

    :pswitch_b
    const/16 v0, 0xa

    .line 196
    return v0

    :pswitch_c
    const/16 v0, 0xb

    .line 201
    return v0

    :pswitch_d
    const/16 v0, 0xc

    .line 206
    return v0

    :pswitch_e
    const/16 v0, 0xd

    .line 211
    return v0

    :pswitch_f
    const/16 v0, 0xe

    .line 215
    return v0

    :pswitch_10
    const/16 v0, 0xf

    .line 219
    return v0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_10
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
