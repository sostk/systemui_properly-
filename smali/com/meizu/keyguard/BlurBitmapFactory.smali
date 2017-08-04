.class public Lcom/meizu/keyguard/BlurBitmapFactory;
.super Ljava/lang/Object;
.source "BlurBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlackColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 5
    .param p0, "alpha"    # F

    .prologue
    const/high16 v4, -0x1000000

    .line 324
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

    .line 325
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1
.end method

.method public static returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
        }
    .end annotation

    .prologue
    .line 23
    const/16 v0, 0x8

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static returnBlurBitmap(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "bit"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;
        }
    .end annotation

    .prologue
    .line 43
    mul-int/lit8 v2, p1, 0x5

    :try_start_0
    invoke-static {p0, v2, p2}, Lcom/meizu/keyguard/BlurBitmapFactory;->stackBlurSingleThreadProcessed(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;

    invoke-direct {v2}, Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError;-><init>()V

    throw v2

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 46
    return-object p0
.end method

.method public static returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "alpha"    # F

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "copy":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    .end local v2    # "copy":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v2

    .line 307
    .restart local v2    # "copy":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 308
    .local v2, "copy":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 309
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 311
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->getBlackColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    .line 312
    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 313
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "copy":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v3

    .line 316
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method private static small(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bit"    # F

    .prologue
    const/4 v1, 0x0

    .line 263
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private static stackBlurSingleThreadProcessed(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "bit"    # F

    .prologue
    .line 55
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_0

    .line 56
    const/4 v4, 0x0

    return-object v4

    .line 59
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->small(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 62
    .local v5, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 64
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 65
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    add-int/lit8 v36, v5, -0x1

    .line 70
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 71
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 72
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 74
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 75
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 76
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 78
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 80
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 81
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 82
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 83
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 84
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 83
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/16 v39, 0x0

    .local v39, "yi":I
    const/16 v41, 0x0

    .line 89
    .local v41, "yw":I
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v14, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 94
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 98
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_1
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 99
    const/4 v13, 0x0

    .local v13, "bsum":I
    const/16 v20, 0x0

    .local v20, "gsum":I
    const/16 v29, 0x0

    .local v29, "rsum":I
    const/4 v12, 0x0

    .local v12, "boutsum":I
    const/16 v19, 0x0

    .local v19, "goutsum":I
    const/16 v28, 0x0

    .local v28, "routsum":I
    const/4 v11, 0x0

    .local v11, "binsum":I
    const/16 v18, 0x0

    .local v18, "ginsum":I
    const/16 v27, 0x0

    .line 100
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    .line 101
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 102
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 103
    .local v30, "sir":[I
    const/high16 v4, 0xff0000

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    const/4 v6, 0x0

    aput v4, v30, v6

    .line 104
    const v4, 0xff00

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    const/4 v6, 0x1

    aput v4, v30, v6

    .line 105
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    const/4 v6, 0x2

    aput v4, v30, v6

    .line 106
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 107
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 108
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 109
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 110
    if-lez v22, :cond_2

    .line 111
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 112
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 113
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 100
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 115
    :cond_2
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 116
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 117
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_3

    .line 120
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_3
    move/from16 v32, p1

    .line 122
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_4
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 124
    aget v4, v16, v29

    aput v4, v24, v39

    .line 125
    aget v4, v16, v20

    aput v4, v17, v39

    .line 126
    aget v4, v16, v13

    aput v4, v10, v39

    .line 128
    sub-int v29, v29, v28

    .line 129
    sub-int v20, v20, v19

    .line 130
    sub-int/2addr v13, v12

    .line 132
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 133
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 135
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 136
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 137
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 139
    if-nez v38, :cond_4

    .line 140
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 142
    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 144
    .restart local v23    # "p":I
    const/high16 v4, 0xff0000

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    const/4 v6, 0x0

    aput v4, v30, v6

    .line 145
    const v4, 0xff00

    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    const/4 v6, 0x1

    aput v4, v30, v6

    .line 146
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    const/4 v6, 0x2

    aput v4, v30, v6

    .line 148
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 149
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 150
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 152
    add-int v29, v29, v27

    .line 153
    add-int v20, v20, v18

    .line 154
    add-int/2addr v13, v11

    .line 156
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 157
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 159
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 160
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 161
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 163
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 164
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 165
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 167
    add-int/lit8 v39, v39, 0x1

    .line 122
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_4

    .line 169
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_5
    add-int v41, v41, v5

    .line 98
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 172
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_6
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 173
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    const/16 v20, 0x0

    .restart local v20    # "gsum":I
    const/16 v29, 0x0

    .restart local v29    # "rsum":I
    const/4 v12, 0x0

    .restart local v12    # "boutsum":I
    const/16 v19, 0x0

    .restart local v19    # "goutsum":I
    const/16 v28, 0x0

    .restart local v28    # "routsum":I
    const/4 v11, 0x0

    .restart local v11    # "binsum":I
    const/16 v18, 0x0

    .restart local v18    # "ginsum":I
    const/16 v27, 0x0

    .line 174
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 175
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    .line 176
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 178
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 180
    .restart local v30    # "sir":[I
    aget v4, v24, v39

    const/4 v6, 0x0

    aput v4, v30, v6

    .line 181
    aget v4, v17, v39

    const/4 v6, 0x1

    aput v4, v30, v6

    .line 182
    aget v4, v10, v39

    const/4 v6, 0x2

    aput v4, v30, v6

    .line 184
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 186
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 187
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 188
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 190
    if-lez v22, :cond_8

    .line 191
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 192
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 193
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 200
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 201
    add-int v40, v40, v5

    .line 175
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 195
    :cond_8
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 196
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 197
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_7

    .line 205
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_9
    move/from16 v39, v37

    .line 206
    move/from16 v32, p1

    .line 207
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_8
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 208
    aget v4, v3, v39

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    .line 209
    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    .line 208
    or-int/2addr v4, v6

    .line 209
    aget v6, v16, v13

    .line 208
    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 211
    sub-int v29, v29, v28

    .line 212
    sub-int v20, v20, v19

    .line 213
    sub-int/2addr v13, v12

    .line 215
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 216
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 218
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 219
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 220
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 222
    if-nez v37, :cond_a

    .line 223
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 225
    :cond_a
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 227
    .restart local v23    # "p":I
    aget v4, v24, v23

    const/4 v6, 0x0

    aput v4, v30, v6

    .line 228
    aget v4, v17, v23

    const/4 v6, 0x1

    aput v4, v30, v6

    .line 229
    aget v4, v10, v23

    const/4 v6, 0x2

    aput v4, v30, v6

    .line 231
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 232
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 233
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 235
    add-int v29, v29, v27

    .line 236
    add-int v20, v20, v18

    .line 237
    add-int/2addr v13, v11

    .line 239
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 240
    aget-object v30, v31, v32

    .line 242
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 246
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 247
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 248
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 250
    add-int v39, v39, v5

    .line 207
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_8

    .line 172
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 254
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_c
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    .local v2, "resizeBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 256
    return-object v2
.end method
