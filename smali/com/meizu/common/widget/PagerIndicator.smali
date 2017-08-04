.class public Lcom/meizu/common/widget/PagerIndicator;
.super Landroid/view/View;
.source "PagerIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PagerIndicator"


# instance fields
.field private mCurPosition:I

.field private mDistance:F

.field private mEnlargeRadius:F

.field private mFillColor:I

.field private mGravity:I

.field private mHighlightColor:I

.field private mPageOffset:F

.field private mPagerCount:I

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mSnap:Z

.field private mSnapPage:I

.field private mStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_PagerIndicator:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v7, Lcom/meizu/common/R$styleable;->PagerIndicator:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 68
    .local v6, "res":Landroid/content/res/Resources;
    sget v7, Lcom/meizu/common/R$dimen;->mc_pager_indicator_radius:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 69
    .local v5, "defaultRadius":F
    sget v7, Lcom/meizu/common/R$dimen;->mc_pager_indicator_enlarge_radius:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 70
    .local v2, "defaultEnlargeRadius":F
    sget v7, Lcom/meizu/common/R$dimen;->mc_pager_indicator_distance:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 71
    .local v1, "defaultDistance":F
    sget v7, Lcom/meizu/common/R$color;->mc_pager_indicator_fill_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 72
    .local v3, "defaultFillColor":I
    sget v7, Lcom/meizu/common/R$color;->mc_pager_indicator_highlight_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 74
    .local v4, "defaultHighlightColor":I
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcRadius:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    .line 75
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcEnlargeRadius:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    .line 76
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcDistance:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    .line 77
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcFillColor:I

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    .line 78
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcHighlightColor:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    .line 79
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcStrokeColor:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mStrokeColor:I

    .line 80
    sget v7, Lcom/meizu/common/R$styleable;->PagerIndicator_mcGravity:I

    const/16 v8, 0x11

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mGravity:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 84
    iget-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    iget v8, p0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 88
    iget-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v7, p0, Lcom/meizu/common/widget/PagerIndicator;->mPaintStroke:Landroid/graphics/Paint;

    iget v8, p0, Lcom/meizu/common/widget/PagerIndicator;->mStrokeColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    return-void
.end method

.method private getGradualColor(IIFI)I
    .locals 14
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I
    .param p3, "offset"    # F
    .param p4, "direction"    # I

    .prologue
    .line 161
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 162
    .local v11, "startRed":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 163
    .local v10, "startGreen":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 164
    .local v9, "startBlue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 165
    .local v8, "startAlpha":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 166
    .local v3, "endRed":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 167
    .local v2, "endGreen":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 168
    .local v1, "endBlue":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 170
    .local v0, "endAlpha":I
    if-ltz p4, :cond_0

    .line 176
    int-to-float v12, v11

    sub-int v13, v3, v11

    int-to-float v13, v13

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 177
    .local v7, "gradualRed":I
    int-to-float v12, v10

    sub-int v13, v2, v10

    int-to-float v13, v13

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 178
    .local v6, "gradualGreen":I
    int-to-float v12, v9

    sub-int v13, v1, v9

    int-to-float v13, v13

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 179
    .local v5, "gradualBlue":I
    int-to-float v12, v8

    sub-int v13, v0, v8

    int-to-float v13, v13

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 181
    .local v4, "gradualAlpha":I
    :goto_0
    invoke-static {v4, v7, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    return v12

    .line 171
    .end local v4    # "gradualAlpha":I
    .end local v5    # "gradualBlue":I
    .end local v6    # "gradualGreen":I
    .end local v7    # "gradualRed":I
    :cond_0
    int-to-float v12, v3

    sub-int v13, v3, v11

    int-to-float v13, v13

    mul-float v13, v13, p3

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 172
    .restart local v7    # "gradualRed":I
    int-to-float v12, v2

    sub-int v13, v2, v10

    int-to-float v13, v13

    mul-float v13, v13, p3

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 173
    .restart local v6    # "gradualGreen":I
    int-to-float v12, v1

    sub-int v13, v1, v9

    int-to-float v13, v13

    mul-float v13, v13, p3

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 174
    .restart local v5    # "gradualBlue":I
    int-to-float v12, v0

    sub-int v13, v0, v8

    int-to-float v13, v13

    mul-float v13, v13, p3

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "gradualAlpha":I
    goto :goto_0
.end method

.method private getGradualRadius(FFFI)F
    .locals 1
    .param p1, "startRadius"    # F
    .param p2, "endRadius"    # F
    .param p3, "offset"    # F
    .param p4, "direction"    # I

    .prologue
    .line 194
    if-ltz p4, :cond_0

    .line 197
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0

    .line 195
    :cond_0
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    .line 123
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PagerIndicator;->getWidth()I

    move-result v16

    .line 124
    .local v16, "longSize":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 126
    .local v7, "curPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    move/from16 v21, v0

    .line 129
    .local v21, "space":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    .line 130
    .local v12, "dY":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-int/lit8 v23, v5, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v21

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v15, v22, v23

    .line 131
    .local v15, "leftMost":F
    add-int/lit8 v22, v5, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    add-float v22, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    add-float v20, v22, v23

    .line 132
    .local v20, "rightMost":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x0

    .line 133
    .local v14, "iLoop":I
    :goto_0
    if-lt v14, v5, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mSnap:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move/from16 v22, v7

    :goto_1
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v10, v22, v21

    .line 143
    .local v10, "cx":F
    add-float v9, v15, v10

    .line 144
    .local v9, "curX":F
    add-int/lit8 v22, v5, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    .line 147
    add-float v19, v9, v21

    .line 150
    .local v19, "nextX":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    move/from16 v24, v0

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/PagerIndicator;->getGradualColor(IIFI)I

    move-result v6

    .line 151
    .local v6, "curColor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    move/from16 v24, v0

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/PagerIndicator;->getGradualRadius(FFFI)F

    move-result v8

    .line 152
    .local v8, "curRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v12, v8, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mFillColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mHighlightColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/PagerIndicator;->getGradualColor(IIFI)I

    move-result v17

    .line 155
    .local v17, "nextColor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/PagerIndicator;->getGradualRadius(FFFI)F

    move-result v18

    .line 156
    .local v18, "nextRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    return-void

    .line 120
    .end local v5    # "count":I
    .end local v6    # "curColor":I
    .end local v7    # "curPosition":I
    .end local v8    # "curRadius":F
    .end local v9    # "curX":F
    .end local v10    # "cx":F
    .end local v12    # "dY":F
    .end local v14    # "iLoop":I
    .end local v15    # "leftMost":F
    .end local v16    # "longSize":I
    .end local v17    # "nextColor":I
    .end local v18    # "nextRadius":F
    .end local v19    # "nextX":F
    .end local v20    # "rightMost":F
    .end local v21    # "space":F
    :cond_0
    return-void

    .line 134
    .restart local v5    # "count":I
    .restart local v7    # "curPosition":I
    .restart local v12    # "dY":F
    .restart local v14    # "iLoop":I
    .restart local v15    # "leftMost":F
    .restart local v16    # "longSize":I
    .restart local v20    # "rightMost":F
    .restart local v21    # "space":F
    :cond_1
    if-eq v7, v14, :cond_2

    .line 135
    add-int/lit8 v22, v5, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_3

    .line 136
    :goto_3
    add-int/lit8 v22, v7, 0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_2

    .line 137
    int-to-float v0, v14

    move/from16 v22, v0

    mul-float v22, v22, v21

    add-float v13, v15, v22

    .line 138
    .local v13, "drawLong":F
    move v11, v13

    .line 139
    .local v11, "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    .end local v11    # "dX":F
    .end local v13    # "drawLong":F
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 135
    :cond_3
    if-eqz v14, :cond_2

    goto :goto_3

    .line 141
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PagerIndicator;->mSnapPage:I

    move/from16 v22, v0

    goto/16 :goto_1

    .line 145
    .restart local v9    # "curX":F
    .restart local v10    # "cx":F
    :cond_5
    move/from16 v19, v15

    .restart local v19    # "nextX":F
    goto/16 :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/PagerIndicator;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 206
    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mDistance:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 207
    .local v1, "dw":I
    iget v2, p0, Lcom/meizu/common/widget/PagerIndicator;->mRadius:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/meizu/common/widget/PagerIndicator;->mEnlargeRadius:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    .line 209
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 210
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 212
    invoke-static {v1, p1, v5}, Lcom/meizu/common/widget/PagerIndicator;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/PagerIndicator;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/PagerIndicator;->setMeasuredDimension(II)V

    .line 214
    return-void
.end method

.method public setCirclePosOffset(FI)V
    .locals 0
    .param p1, "positionOffset"    # F
    .param p2, "position"    # I

    .prologue
    .line 103
    iput p2, p0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 104
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPageOffset:F

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->invalidate()V

    .line 106
    return-void
.end method

.method public setCirclePosition(I)V
    .locals 0
    .param p1, "curPosition"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mCurPosition:I

    .line 98
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnapPage:I

    .line 99
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->invalidate()V

    .line 100
    return-void
.end method

.method public setPagerCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    if-eq v0, p1, :cond_0

    .line 112
    iput p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mPagerCount:I

    .line 113
    invoke-virtual {p0}, Lcom/meizu/common/widget/PagerIndicator;->requestLayout()V

    .line 114
    return-void

    .line 110
    :cond_0
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/meizu/common/widget/PagerIndicator;->mSnap:Z

    .line 94
    return-void
.end method
