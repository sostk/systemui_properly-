.class public Lcom/meizu/common/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static sStatusBarHeight:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionBarHomeAsUpOnScrolling(Landroid/app/Activity;IIZIII)V
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "closeDrawableRes"    # I
    .param p2, "openDrawableRes"    # I
    .param p3, "isOpened"    # Z
    .param p4, "curX"    # I
    .param p5, "beginX"    # I
    .param p6, "endX"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 317
    if-nez p0, :cond_1

    .line 318
    :cond_0
    return-void

    .line 317
    :cond_1
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v13, v14, :cond_0

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 320
    .local v4, "closeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 321
    .local v10, "openDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    .line 322
    :cond_2
    return-void

    .line 321
    :cond_3
    if-eqz v10, :cond_2

    .line 323
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_4

    .line 327
    move-object v6, v4

    .line 328
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_5

    .line 329
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 330
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 331
    .local v11, "rect":Landroid/graphics/Rect;
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 332
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    iget v14, v11, Landroid/graphics/Rect;->right:I

    sub-int v8, v13, v14

    .line 333
    .local v8, "endLength":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 334
    .local v3, "beginLength":I
    move/from16 v0, p4

    int-to-float v13, v0

    sub-int v14, p6, p5

    int-to-float v14, v14

    div-float v9, v13, v14

    .line 335
    .local v9, "offset":F
    sub-int v13, v8, v3

    int-to-float v13, v13

    mul-float/2addr v13, v9

    int-to-float v14, v3

    add-float/2addr v13, v14

    float-to-int v7, v13

    .line 336
    .local v7, "drawableWidth":I
    if-nez p3, :cond_6

    .line 337
    :goto_1
    sget-object v13, Lcom/meizu/common/R$styleable;->MZTheme:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 338
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    const v14, 0x32a5e7

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 339
    .local v12, "themeColor":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const v13, 0xa8a8a8

    const/4 v14, 0x1

    .line 340
    invoke-static {v13, v12, v9, v14}, Lcom/meizu/common/util/ResourceUtils;->getGradualColor(IIFI)I

    move-result v5

    .local v5, "color":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 341
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v6, v13, v14, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    new-instance v13, Landroid/graphics/LightingColorFilter;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v6, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 343
    return-void

    .line 324
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "beginLength":I
    .end local v5    # "color":I
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "drawableWidth":I
    .end local v8    # "endLength":I
    .end local v9    # "offset":F
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "themeColor":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 325
    return-void

    .line 328
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v6, v10

    goto :goto_0

    .line 336
    .restart local v3    # "beginLength":I
    .restart local v7    # "drawableWidth":I
    .restart local v8    # "endLength":I
    .restart local v9    # "offset":F
    .restart local v11    # "rect":Landroid/graphics/Rect;
    :cond_6
    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v13

    goto :goto_1
.end method

.method public static createBlurDrawable(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "background"    # Landroid/graphics/drawable/Drawable;
    .param p1, "level"    # F
    .param p2, "color"    # I

    .prologue
    .line 141
    new-instance v0, Lcom/meizu/common/drawble/BlurDrawable;

    invoke-direct {v0}, Lcom/meizu/common/drawble/BlurDrawable;-><init>()V

    .local v0, "blurDrawable":Lcom/meizu/common/drawble/BlurDrawable;
    const/4 v2, 0x0

    .line 142
    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/meizu/common/drawble/BlurDrawable;->setBlurLevel(F)V

    .line 146
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 147
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    return-object v1
.end method

.method private static createDrawable(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "background"    # I
    .param p1, "divider"    # I
    .param p2, "layerInset"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 124
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 125
    .local v7, "dividerDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v6, Lcom/meizu/common/drawble/BlurDrawable;

    invoke-direct {v6}, Lcom/meizu/common/drawble/BlurDrawable;-><init>()V

    .line 126
    .local v6, "blurDrawable":Lcom/meizu/common/drawble/BlurDrawable;
    sget-object v2, Lcom/meizu/common/drawble/BlurDrawable;->DEFAULT_BLUR_COLOR_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, v2}, Lcom/meizu/common/drawble/BlurDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 127
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    aput-object v7, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 128
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 129
    return-object v0
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 158
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 159
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1
.end method

.method public static getBackgroundAnimation(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startColor"    # I
    .param p2, "finalColor"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 228
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 229
    .local v0, "alpha":I
    move v3, p1

    .local v3, "sColor":I
    const/16 v4, 0xff

    .line 230
    if-ne v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x14

    .line 231
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 233
    :goto_0
    move v2, p2

    .line 237
    .local v2, "fColor":I
    invoke-virtual {p0, v9}, Landroid/view/View;->setHasTransientState(Z)V

    .line 238
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string/jumbo v4, "backgroundColor"

    const/4 v5, 0x2

    .line 240
    new-array v5, v5, [I

    aput v3, v5, v8

    aput v2, v5, v9

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 241
    .local v1, "colorAnim":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-wide/16 v4, 0x3e8

    .line 242
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2bc

    .line 243
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 244
    new-instance v4, Lcom/meizu/common/util/ResourceUtils$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/util/ResourceUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    return-object v1

    .line 230
    .end local v1    # "colorAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "fColor":I
    :cond_1
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static getGradualColor(IIFI)I
    .locals 14
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I
    .param p2, "offset"    # F
    .param p3, "direction"    # I

    .prologue
    .line 197
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 198
    .local v11, "startRed":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 199
    .local v10, "startGreen":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 200
    .local v9, "startBlue":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 201
    .local v8, "startAlpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 202
    .local v3, "endRed":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 203
    .local v2, "endGreen":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 204
    .local v1, "endBlue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 206
    .local v0, "endAlpha":I
    if-ltz p3, :cond_0

    .line 212
    int-to-float v12, v11

    sub-int v13, v3, v11

    int-to-float v13, v13

    mul-float v13, v13, p2

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 213
    .local v7, "gradualRed":I
    int-to-float v12, v10

    sub-int v13, v2, v10

    int-to-float v13, v13

    mul-float v13, v13, p2

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 214
    .local v6, "gradualGreen":I
    int-to-float v12, v9

    sub-int v13, v1, v9

    int-to-float v13, v13

    mul-float v13, v13, p2

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 215
    .local v5, "gradualBlue":I
    int-to-float v12, v8

    sub-int v13, v0, v8

    int-to-float v13, v13

    mul-float v13, v13, p2

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 217
    .local v4, "gradualAlpha":I
    :goto_0
    invoke-static {v4, v7, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    return v12

    .line 207
    .end local v4    # "gradualAlpha":I
    .end local v5    # "gradualBlue":I
    .end local v6    # "gradualGreen":I
    .end local v7    # "gradualRed":I
    :cond_0
    int-to-float v12, v3

    sub-int v13, v3, v11

    int-to-float v13, v13

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 208
    .restart local v7    # "gradualRed":I
    int-to-float v12, v2

    sub-int v13, v2, v10

    int-to-float v13, v13

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 209
    .restart local v6    # "gradualGreen":I
    int-to-float v12, v1

    sub-int v13, v1, v9

    int-to-float v13, v13

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 210
    .restart local v5    # "gradualBlue":I
    int-to-float v12, v0

    sub-int v13, v0, v8

    int-to-float v13, v13

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "gradualAlpha":I
    goto :goto_0
.end method

.method public static getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "mzThemeColor"

    const-string/jumbo v5, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 354
    .local v2, "id":I
    if-gtz v2, :cond_0

    .line 365
    return-object v9

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 358
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 359
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    if-eq v1, v8, :cond_1

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 361
    :cond_1
    return-object v9
.end method

.method public static getSmartBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$color;->mc_smartbar_divider:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 78
    .local v1, "divider":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$color;->mc_smartbar_background:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 79
    .local v0, "background":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mc_smartbarbar_divider_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 80
    .local v3, "smartbarDividerHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->mz_split_action_bar_default_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 81
    .local v4, "smartbarHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v2, "layerInset":Landroid/graphics/Rect;
    sub-int v5, v4, v3

    invoke-virtual {v2, v7, v7, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/ResourceUtils;->createDrawable(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    .line 75
    .end local v0    # "background":I
    .end local v1    # "divider":I
    .end local v2    # "layerInset":Landroid/graphics/Rect;
    .end local v3    # "smartbarDividerHeight":I
    .end local v4    # "smartbarHeight":I
    :cond_0
    return-object v5
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    :try_start_0
    sget-object v5, Lcom/meizu/common/util/ResourceUtils;->sStatusBarHeight:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 184
    :goto_0
    sget-object v5, Lcom/meizu/common/util/ResourceUtils;->sStatusBarHeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_0
    :try_start_1
    const-string/jumbo v5, "com.android.internal.R$dimen"

    .line 174
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .local v4, "obj":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 177
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 178
    .local v3, "id":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/meizu/common/util/ResourceUtils;->sStatusBarHeight:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "id":I
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ResurceUtils"

    const-string/jumbo v6, "get status bar height fail"

    .line 181
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->status_bar_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/meizu/common/util/ResourceUtils;->sStatusBarHeight:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 50
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 65
    return-object v7

    .line 51
    :cond_0
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    .line 52
    .local v4, "resourceId":I
    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 57
    .local v1, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-object v6

    .line 53
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "can\'t find the resourceId"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    .restart local v0    # "array":Landroid/content/res/TypedArray;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v6    # "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getTitleBarBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dividerColor"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/meizu/common/util/ResourceUtils;->getTitleBarBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleBarBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dividerColor"    # I
    .param p2, "fullScreen"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 104
    if-eqz p0, :cond_0

    .line 107
    move v1, p1

    .line 108
    .local v1, "divider":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/meizu/common/R$color;->mc_titlebar_background:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 109
    .local v0, "background":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v2, "layerInset":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/meizu/common/R$dimen;->mc_titlebar_divider_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 111
    .local v3, "titlebarDividerHeight":I
    invoke-static {p0}, Lcom/meizu/common/util/ResourceUtils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v7

    if-nez p2, :cond_1

    move v5, v6

    :goto_0
    add-int v4, v7, v5

    .line 112
    .local v4, "titlebarHeight":I
    sub-int v5, v4, v3

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/ResourceUtils;->createDrawable(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    .line 105
    .end local v0    # "background":I
    .end local v1    # "divider":I
    .end local v2    # "layerInset":Landroid/graphics/Rect;
    .end local v3    # "titlebarDividerHeight":I
    .end local v4    # "titlebarHeight":I
    :cond_0
    return-object v5

    .line 111
    .restart local v0    # "background":I
    .restart local v1    # "divider":I
    .restart local v2    # "layerInset":Landroid/graphics/Rect;
    .restart local v3    # "titlebarDividerHeight":I
    :cond_1
    invoke-static {p0}, Lcom/meizu/common/util/ResourceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    goto :goto_0
.end method

.method public static startBrightnessAnim(Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 267
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 268
    :cond_0
    instance-of v7, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_2

    .line 273
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 274
    .local v1, "bounds":Landroid/graphics/Rect;
    if-nez v1, :cond_3

    :cond_1
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "you should setBounds for drawable before start brightness anim"

    .line 275
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "fade animation will not be useful to ColorDrawable because ColorDrawable has not implement method setColorFilter"

    .line 269
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 274
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    :cond_3
    if-nez v1, :cond_4

    .line 279
    :goto_1
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 280
    .local v2, "colorMatrix":Landroid/graphics/ColorMatrix;
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .local v3, "keyframe0":Landroid/animation/Keyframe;
    const v7, 0x3e19999a    # 0.15f

    const/high16 v8, 0x420c0000    # 35.0f

    .line 281
    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .local v4, "keyframe1":Landroid/animation/Keyframe;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 282
    invoke-static {v7, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe2":Landroid/animation/Keyframe;
    const-string/jumbo v7, ""

    const/4 v8, 0x3

    .line 283
    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v3, v8, v10

    aput-object v4, v8, v11

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 284
    .local v6, "propertyValuesHolder":Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 285
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/meizu/common/util/ResourceUtils$2;

    invoke-direct {v7, v2, p0}, Lcom/meizu/common/util/ResourceUtils$2;-><init>(Landroid/graphics/ColorMatrix;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x226

    .line 296
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 274
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v3    # "keyframe0":Landroid/animation/Keyframe;
    .end local v4    # "keyframe1":Landroid/animation/Keyframe;
    .end local v5    # "keyframe2":Landroid/animation/Keyframe;
    .end local v6    # "propertyValuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1
.end method
