.class public Lcom/meizu/common/util/ContactHeaderUtils;
.super Ljava/lang/Object;
.source "ContactHeaderUtils.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BG_COLOR:I = -0xab51aa

.field private static final DEFAULT_BORDER_COLOR:I = -0x1

.field private static final colorArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x242c5

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x6a3d0

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x11d6cf

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0x9fac16

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xda7016

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xde3f32

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0xbd4092

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "checkText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v2, ""

    .line 272
    .local v2, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 279
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .local v0, "c":C
    const/16 v4, 0x61

    .line 282
    if-le v4, v0, :cond_3

    .line 285
    :cond_0
    :goto_0
    move-object v2, v1

    .line 288
    .end local v0    # "c":C
    .end local v1    # "firstLetter":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    .line 273
    goto :goto_1

    .restart local v3    # "text":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    .line 277
    goto :goto_1

    .restart local v0    # "c":C
    .restart local v1    # "firstLetter":Ljava/lang/String;
    :cond_3
    const/16 v4, 0x7a

    .line 282
    if-gt v0, v4, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;IILjava/lang/Object;Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "content"    # Ljava/lang/Object;
    .param p4, "background"    # Ljava/lang/Object;
    .param p5, "bordercolor"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    new-array v3, v1, [Ljava/lang/Object;

    .line 49
    .local v3, "obj":[Ljava/lang/Object;
    new-array v4, v1, [Ljava/lang/Object;

    .line 50
    .local v4, "bg":[Ljava/lang/Object;
    aput-object p3, v3, v0

    .line 51
    aput-object p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/ContactHeaderUtils;->createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createContactHeaderDrawable(Landroid/content/res/Resources;II[Ljava/lang/Object;[Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 41
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "content"    # [Ljava/lang/Object;
    .param p4, "background"    # [Ljava/lang/Object;
    .param p5, "bordercolor"    # I

    .prologue
    const/16 v27, 0x1

    .line 68
    .local v27, "mIconCount":I
    if-nez p3, :cond_0

    :goto_0
    const/16 v36, 0x3

    .line 70
    move/from16 v0, v27

    move/from16 v1, v36

    if-gt v0, v1, :cond_1

    .line 71
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v36

    move-object/from16 v0, v36

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v8, "density":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v8

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v35, v0

    .line 73
    .local v35, "width":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v8

    move/from16 v0, v36

    float-to-int v12, v0

    .line 74
    .local v12, "height":I
    float-to-int v0, v8

    move/from16 v36, v0

    add-int/lit8 v23, v36, 0x1

    .line 75
    .local v23, "mBorderWidth":I
    const/4 v14, 0x0

    .local v14, "isDefaultIcon":Z
    const/16 v36, 0x1

    .line 76
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .line 79
    :goto_2
    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v26, "mDrawableRect":Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 81
    .local v22, "mBorderRect":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v18, "mBitmapPaint":Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v20, "mBorderPaint":Landroid/graphics/Paint;
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v24, "mCoverBorderPaint":Landroid/graphics/Paint;
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .local v30, "mTextBgPaint":Landroid/graphics/Paint;
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .local v31, "mTextPaint":Landroid/graphics/Paint;
    const/16 v19, -0x1

    .local v19, "mBorderColor":I
    const/16 v36, -0x1

    .line 87
    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    :goto_3
    const/4 v9, 0x0

    .local v9, "det":F
    const/16 v17, 0x0

    .local v17, "mBitmap":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .local v16, "mBitMapShader":Landroid/graphics/BitmapShader;
    const/16 v28, 0x0

    .local v28, "mShaderMatrix":Landroid/graphics/Matrix;
    const v15, -0xab51aa

    .local v15, "mBgColor":I
    const-string/jumbo v29, ""

    .line 97
    .local v29, "mText":Ljava/lang/String;
    sget-object v36, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 99
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v7, "canvas":Landroid/graphics/Canvas;
    sget-object v36, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    const/16 v36, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v36, -0xab51aa

    .line 104
    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    const/16 v36, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    sget-object v36, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v36, -0x1

    .line 109
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v36, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/16 v36, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    sget-object v36, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    const/16 v36, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v36, 0x19000000

    .line 120
    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v36, 0x3f800000    # 1.0f

    .line 121
    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    const/16 v36, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    const/16 v36, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v36, 0x3

    .line 129
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    :goto_4
    const/16 v36, 0x2

    .line 131
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_5

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 134
    add-int/lit8 v38, v27, 0x1

    mul-int v38, v38, v35

    mul-int/lit8 v39, v27, 0x2

    div-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    add-int/lit8 v39, v27, 0x1

    mul-int v39, v39, v12

    mul-int/lit8 v40, v27, 0x2

    div-int v39, v39, v40

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v36

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v36, v36, v37

    const/high16 v37, 0x3f800000    # 1.0f

    sub-float v36, v36, v37

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v37

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 137
    .local v21, "mBorderRadius":F
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 138
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v26

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 139
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v36

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v37

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .local v25, "mDrawableRadius":F
    const/16 v36, 0x3

    .line 142
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    :goto_6
    const/16 v36, 0x2

    .line 143
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    :goto_7
    const/16 v36, 0x1

    .line 144
    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 146
    :goto_8
    add-int/lit8 v13, v27, -0x1

    .end local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v28    # "mShaderMatrix":Landroid/graphics/Matrix;
    .local v13, "i":I
    :goto_9
    if-gez v13, :cond_9

    .line 243
    return-object v6

    .line 69
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "density":F
    .end local v9    # "det":F
    .end local v12    # "height":I
    .end local v13    # "i":I
    .end local v14    # "isDefaultIcon":Z
    .end local v15    # "mBgColor":I
    .end local v18    # "mBitmapPaint":Landroid/graphics/Paint;
    .end local v19    # "mBorderColor":I
    .end local v20    # "mBorderPaint":Landroid/graphics/Paint;
    .end local v21    # "mBorderRadius":F
    .end local v22    # "mBorderRect":Landroid/graphics/RectF;
    .end local v23    # "mBorderWidth":I
    .end local v24    # "mCoverBorderPaint":Landroid/graphics/Paint;
    .end local v25    # "mDrawableRadius":F
    .end local v26    # "mDrawableRect":Landroid/graphics/RectF;
    .end local v29    # "mText":Ljava/lang/String;
    .end local v30    # "mTextBgPaint":Landroid/graphics/Paint;
    .end local v31    # "mTextPaint":Landroid/graphics/Paint;
    .end local v35    # "width":I
    :cond_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    goto/16 :goto_0

    :cond_1
    const/16 v27, 0x3

    .line 70
    goto/16 :goto_1

    .restart local v8    # "density":F
    .restart local v12    # "height":I
    .restart local v14    # "isDefaultIcon":Z
    .restart local v23    # "mBorderWidth":I
    .restart local v35    # "width":I
    :cond_2
    const/16 v23, 0x0

    .line 76
    goto/16 :goto_2

    .line 87
    .restart local v18    # "mBitmapPaint":Landroid/graphics/Paint;
    .restart local v19    # "mBorderColor":I
    .restart local v20    # "mBorderPaint":Landroid/graphics/Paint;
    .restart local v22    # "mBorderRect":Landroid/graphics/RectF;
    .restart local v24    # "mCoverBorderPaint":Landroid/graphics/Paint;
    .restart local v26    # "mDrawableRect":Landroid/graphics/RectF;
    .restart local v30    # "mTextBgPaint":Landroid/graphics/Paint;
    .restart local v31    # "mTextPaint":Landroid/graphics/Paint;
    :cond_3
    move/from16 v19, p5

    goto/16 :goto_3

    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "det":F
    .restart local v15    # "mBgColor":I
    .restart local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    .restart local v17    # "mBitmap":Landroid/graphics/Bitmap;
    .restart local v28    # "mShaderMatrix":Landroid/graphics/Matrix;
    .restart local v29    # "mText":Ljava/lang/String;
    :cond_4
    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 130
    mul-int/lit8 v38, v35, 0x21

    div-int/lit8 v38, v38, 0x2e

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-int/lit8 v39, v12, 0x21

    div-int/lit8 v39, v39, 0x2e

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_4

    :cond_5
    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 132
    mul-int/lit8 v38, v35, 0x26

    div-int/lit8 v38, v38, 0x2e

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-int/lit8 v39, v12, 0x26

    div-int/lit8 v39, v39, 0x2e

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_5

    .line 142
    .restart local v21    # "mBorderRadius":F
    .restart local v25    # "mDrawableRadius":F
    :cond_6
    mul-int/lit8 v36, v35, 0xd

    div-int/lit8 v36, v36, 0x5c

    add-int v36, v36, v23

    move/from16 v0, v36

    int-to-float v9, v0

    goto :goto_6

    .line 143
    :cond_7
    mul-int/lit8 v36, v35, 0x8

    div-int/lit8 v36, v36, 0x5c

    div-int/lit8 v37, v23, 0x2

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v9, v0

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    .line 144
    goto :goto_8

    .line 147
    .end local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v28    # "mShaderMatrix":Landroid/graphics/Matrix;
    .restart local v13    # "i":I
    :cond_9
    const/4 v14, 0x0

    .line 148
    if-nez p3, :cond_f

    .line 149
    :cond_a
    if-nez p3, :cond_10

    .line 153
    :cond_b
    :goto_a
    if-nez p3, :cond_11

    .line 154
    :cond_c
    sget v36, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 155
    .local v17, "mBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    .line 162
    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_b
    if-nez p4, :cond_13

    .line 165
    :cond_e
    :goto_c
    if-nez v17, :cond_14

    .line 178
    :goto_d
    if-eqz v13, :cond_16

    .line 202
    add-int/lit8 v36, v27, -0x1

    move/from16 v0, v36

    if-eq v13, v0, :cond_1b

    .line 222
    if-nez v17, :cond_1f

    .line 233
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    :goto_e
    if-nez v23, :cond_21

    .line 239
    :goto_f
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :goto_10
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_9

    .line 148
    :cond_f
    aget-object v36, p3, v13

    if-eqz v36, :cond_a

    aget-object v36, p3, v13

    move-object/from16 v0, v36

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v36, v0

    if-nez v36, :cond_a

    .line 157
    aget-object v36, p3, v13

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v36, v0

    if-nez v36, :cond_12

    .line 159
    aget-object v36, p3, v13

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    move/from16 v36, v0

    if-eqz v36, :cond_d

    .line 160
    aget-object v36, p3, v13

    check-cast v36, Landroid/graphics/drawable/Drawable;

    invoke-static/range {v36 .. v36}, Lcom/meizu/common/util/ContactHeaderUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    .restart local v17    # "mBitmap":Landroid/graphics/Bitmap;
    goto :goto_b

    .line 149
    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_10
    aget-object v36, p3, v13

    if-eqz v36, :cond_b

    .line 150
    aget-object v36, p3, v13

    check-cast v36, Ljava/lang/String;

    invoke-static/range {v36 .. v36}, Lcom/meizu/common/util/ContactHeaderUtils;->checkText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 151
    aget-object v36, p3, v13

    check-cast v36, Ljava/lang/String;

    invoke-static/range {v36 .. v36}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_a

    .line 153
    :cond_11
    aget-object v36, p3, v13

    if-eqz v36, :cond_c

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_c

    goto/16 :goto_b

    .line 158
    :cond_12
    aget-object v17, p3, v13

    check-cast v17, Landroid/graphics/Bitmap;

    .restart local v17    # "mBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_b

    .line 162
    .end local v17    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_13
    aget-object v36, p4, v13

    if-eqz v36, :cond_e

    .line 163
    aget-object v36, p4, v13

    check-cast v36, Ljava/lang/String;

    invoke-static/range {v36 .. v36}, Lcom/meizu/common/util/ContactHeaderUtils;->getColorByText(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_c

    .line 167
    :cond_14
    new-instance v16, Landroid/graphics/BitmapShader;

    sget-object v36, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v37, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 169
    .local v16, "mBitMapShader":Landroid/graphics/BitmapShader;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v37

    mul-float v36, v36, v37

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v37

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    cmpl-float v36, v36, v37

    if-lez v36, :cond_15

    .line 170
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v36

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v34, v36, v37

    .line 174
    .local v34, "scale":F
    :goto_11
    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    .line 175
    .local v28, "mShaderMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v28

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 176
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_d

    .line 172
    .end local v28    # "mShaderMatrix":Landroid/graphics/Matrix;
    .end local v34    # "scale":F
    :cond_15
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v36

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v34, v36, v37

    .restart local v34    # "scale":F
    goto :goto_11

    .line 179
    .end local v16    # "mBitMapShader":Landroid/graphics/BitmapShader;
    .end local v34    # "scale":F
    :cond_16
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_17

    .line 188
    if-nez v17, :cond_18

    .line 197
    :goto_12
    if-nez v23, :cond_1a

    .line 201
    :goto_13
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 181
    :cond_17
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0x3feccccccccccccdL    # 0.9

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 184
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v37, v0

    sub-float v11, v36, v37

    .local v11, "fontTotalHeight":F
    const/high16 v36, 0x40000000    # 2.0f

    .line 185
    div-float v36, v11, v36

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v37, v0

    sub-float v33, v36, v37

    .line 186
    .local v33, "offY":F
    div-int/lit8 v36, v12, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v33

    const/high16 v37, 0x40000000    # 2.0f

    sub-float v32, v36, v37

    .line 187
    .local v32, "newY":F
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v32

    move-object/from16 v3, v31

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 189
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v11    # "fontTotalHeight":F
    .end local v32    # "newY":F
    .end local v33    # "offY":F
    :cond_18
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v37

    sub-float v36, v36, v37

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    sub-float v36, v36, v9

    int-to-float v0, v12

    move/from16 v37, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 191
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    if-nez v14, :cond_19

    .line 195
    :goto_14
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 193
    :cond_19
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_14

    .line 199
    :cond_1a
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 203
    :cond_1b
    if-nez v17, :cond_1c

    .line 214
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    :goto_15
    if-nez v23, :cond_1e

    .line 220
    :goto_16
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 204
    :cond_1c
    if-nez v14, :cond_1d

    .line 208
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v37

    sub-float v36, v36, v37

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    add-float v36, v36, v9

    int-to-float v0, v12

    move/from16 v37, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 210
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_15

    .line 205
    :cond_1d
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_15

    .line 218
    :cond_1e
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v9

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 223
    :cond_1f
    if-nez v14, :cond_20

    .line 227
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v37

    sub-float v36, v36, v37

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    int-to-float v0, v12

    move/from16 v37, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v38

    sub-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    move-object/from16 v0, v28

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 228
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 229
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_e

    .line 224
    :cond_20
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_e

    .line 237
    :cond_21
    div-int/lit8 v36, v35, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-int/lit8 v37, v12, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_f
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 292
    if-eqz p0, :cond_0

    .line 296
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 303
    :try_start_0
    instance-of v2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_2

    .line 306
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 293
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v5

    .line 297
    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x2

    .line 304
    :try_start_1
    sget-object v4, Lcom/meizu/common/util/ContactHeaderUtils;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "ContactHeaderUtils "

    const-string/jumbo v3, "getBitmapFromDrawable  OutOfMemoryError !"

    .line 311
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-object v5
.end method

.method public static getColorByText(Ljava/lang/String;)I
    .locals 4
    .param p0, "colorText"    # Ljava/lang/String;

    .prologue
    const v1, -0xab51aa

    .local v1, "result":I
    const/4 v0, 0x5

    .line 256
    .local v0, "index":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 261
    :goto_1
    return v1

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    array-length v3, v3

    rem-int v0, v2, v3

    goto :goto_0

    .line 259
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ContactHeaderUtils;->colorArray:[I

    aget v1, v2, v0

    goto :goto_1
.end method
