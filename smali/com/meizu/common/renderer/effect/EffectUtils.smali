.class public Lcom/meizu/common/renderer/effect/EffectUtils;
.super Ljava/lang/Object;
.source "EffectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glFillBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->loadLibraryIfNeeded()V

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/meizu/common/renderer/effect/EffectUtils;->native_glReadPixels(Ljava/lang/Object;II)V

    .line 46
    return-void

    .line 40
    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not mutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadFromFileVertexOnly(Ljava/lang/String;)[[F
    .locals 32
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    const/16 v29, 0x2

    .line 49
    move/from16 v0, v29

    new-array v9, v0, [[F

    .line 51
    .local v9, "gledeInfo":[[F
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v5, "alv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "alFaceIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, "alvResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "alt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v4, "altResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :try_start_0
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getAppContext()Landroid/content/Context;

    move-result-object v29

    .line 59
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 60
    .local v11, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v7, "br":Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "temps":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 117
    .local v15, "size":I
    new-array v0, v15, [F

    move-object/from16 v19, v0

    .local v19, "vXYZ":[F
    const/4 v10, 0x0

    .line 118
    .local v10, "i":I
    :goto_1
    if-lt v10, v15, :cond_4

    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 123
    new-array v0, v15, [F

    move-object/from16 v16, v0

    .local v16, "tST":[F
    const/4 v10, 0x0

    .line 124
    :goto_2
    if-lt v10, v15, :cond_5

    const/16 v29, 0x0

    .line 131
    aput-object v19, v9, v29

    const/16 v29, 0x1

    .line 132
    aput-object v16, v9, v29

    .line 138
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "i":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v14    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "size":I
    .end local v16    # "tST":[F
    .end local v17    # "temps":Ljava/lang/String;
    .end local v19    # "vXYZ":[F
    :goto_3
    return-object v9

    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v14    # "isr":Ljava/io/InputStreamReader;
    .restart local v17    # "temps":Ljava/lang/String;
    :cond_1
    const-string/jumbo v29, "[ ]+"

    .line 65
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "tempsa":[Ljava/lang/String;
    const/16 v29, 0x0

    .line 66
    aget-object v29, v18, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "v"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    const/16 v29, 0x0

    .line 70
    aget-object v29, v18, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "vt"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const/16 v29, 0x0

    .line 73
    aget-object v29, v18, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "f"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    const/16 v29, 0x3

    .line 74
    move/from16 v0, v29

    new-array v12, v0, [I

    .local v12, "index":[I
    const/16 v29, 0x0

    const/16 v30, 0x1

    .line 75
    aget-object v30, v18, v30

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v12, v29

    const/16 v29, 0x0

    .line 76
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .local v20, "x0":F
    const/16 v29, 0x0

    .line 77
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v23

    .local v23, "y0":F
    const/16 v29, 0x0

    .line 78
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v26

    .line 79
    .local v26, "z0":F
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x1

    const/16 v30, 0x2

    .line 83
    aget-object v30, v18, v30

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v12, v29

    const/16 v29, 0x1

    .line 84
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .local v21, "x1":F
    const/16 v29, 0x1

    .line 85
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v24

    .local v24, "y1":F
    const/16 v29, 0x1

    .line 86
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v27

    .line 87
    .local v27, "z1":F
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x2

    const/16 v30, 0x3

    .line 91
    aget-object v30, v18, v30

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v12, v29

    const/16 v29, 0x2

    .line 92
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .local v22, "x2":F
    const/16 v29, 0x2

    .line 93
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v25

    .local v25, "y2":F
    const/16 v29, 0x2

    .line 94
    aget v29, v12, v29

    mul-int/lit8 v29, v29, 0x3

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v28

    .line 95
    .local v28, "z2":F
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x0

    .line 99
    aget v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x1

    .line 100
    aget v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x2

    .line 101
    aget v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x1

    .line 103
    aget-object v29, v18, v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v13, v29, -0x1

    .line 104
    .local v13, "indexTex":I
    mul-int/lit8 v29, v13, 0x2

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    mul-int/lit8 v29, v13, 0x2

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x2

    .line 107
    aget-object v29, v18, v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v13, v29, -0x1

    .line 108
    mul-int/lit8 v29, v13, 0x2

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    mul-int/lit8 v29, v13, 0x2

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x3

    .line 111
    aget-object v29, v18, v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v13, v29, -0x1

    .line 112
    mul-int/lit8 v29, v13, 0x2

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    mul-int/lit8 v29, v13, 0x2

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 137
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "index":[I
    .end local v13    # "indexTex":I
    .end local v14    # "isr":Ljava/io/InputStreamReader;
    .end local v17    # "temps":Ljava/lang/String;
    .end local v18    # "tempsa":[Ljava/lang/String;
    .end local v20    # "x0":F
    .end local v21    # "x1":F
    .end local v22    # "x2":F
    .end local v23    # "y0":F
    .end local v24    # "y1":F
    .end local v25    # "y2":F
    .end local v26    # "z0":F
    .end local v27    # "z1":F
    .end local v28    # "z2":F
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v29, "load error"

    const-string/jumbo v30, "load error"

    .line 135
    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v14    # "isr":Ljava/io/InputStreamReader;
    .restart local v17    # "temps":Ljava/lang/String;
    .restart local v18    # "tempsa":[Ljava/lang/String;
    :cond_2
    const/16 v29, 0x1

    .line 67
    :try_start_1
    aget-object v29, v18, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x2

    .line 68
    aget-object v29, v18, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x3

    .line 69
    aget-object v29, v18, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/16 v29, 0x1

    .line 71
    aget-object v29, v18, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v29, 0x2

    .line 72
    aget-object v29, v18, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    .end local v18    # "tempsa":[Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v15    # "size":I
    .restart local v19    # "vXYZ":[F
    :cond_4
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    aput v29, v19, v10

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 125
    .restart local v16    # "tST":[F
    :cond_5
    rem-int/lit8 v29, v10, 0x2

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    .line 128
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    aput v29, v16, v10

    .line 124
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 126
    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Float;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    aput v29, v16, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private static native native_glReadPixels(Ljava/lang/Object;II)V
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation
.end method

.method public static view2Window([FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p0, "m"    # [F
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    const/16 v8, 0xd

    const/16 v6, 0xc

    const/high16 v7, 0x3f000000    # 0.5f

    .line 22
    if-eqz p2, :cond_0

    .line 23
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aget v5, p0, v6

    add-float v1, v4, v5

    .line 24
    .local v1, "left":F
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aget v5, p0, v8

    add-float v3, v4, v5

    .line 25
    .local v3, "top":F
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aget v5, p0, v6

    add-float v2, v4, v5

    .line 26
    .local v2, "right":F
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    aget v5, p0, v8

    add-float v0, v4, v5

    .line 27
    .local v0, "bottom":F
    add-float v4, v1, v7

    float-to-int v4, v4

    add-float v5, v3, v7

    float-to-int v5, v5

    add-float v6, v2, v7

    float-to-int v6, v6

    add-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    return-void

    .line 22
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    return-void
.end method

.method public static window2View([FFFFFLandroid/graphics/Rect;)V
    .locals 8
    .param p0, "m"    # [F
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F
    .param p5, "dst"    # Landroid/graphics/Rect;

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/high16 v7, 0x3f000000    # 0.5f

    .line 31
    if-eqz p5, :cond_0

    .line 32
    aget v4, p0, v5

    sub-float v1, p1, v4

    .line 33
    .local v1, "left":F
    aget v4, p0, v6

    sub-float v3, p2, v4

    .line 34
    .local v3, "top":F
    aget v4, p0, v5

    sub-float v2, p3, v4

    .line 35
    .local v2, "right":F
    aget v4, p0, v6

    sub-float v0, p4, v4

    .line 36
    .local v0, "bottom":F
    add-float v4, v1, v7

    float-to-int v4, v4

    add-float v5, v3, v7

    float-to-int v5, v5

    add-float v6, v2, v7

    float-to-int v6, v6

    add-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    return-void

    .line 31
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    return-void
.end method
