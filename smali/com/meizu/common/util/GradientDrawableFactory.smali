.class public Lcom/meizu/common/util/GradientDrawableFactory;
.super Ljava/lang/Object;
.source "GradientDrawableFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDarkerColor(I)I
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x3

    .line 111
    new-array v0, v1, [F

    .line 112
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 113
    aget v1, v0, v3

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 114
    aget v1, v0, v4

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 115
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getDisableColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/16 v0, 0x4c

    .line 136
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getLighterColor(I)I
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x3

    .line 98
    new-array v0, v1, [F

    .line 99
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 100
    aget v1, v0, v3

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 101
    aget v1, v0, v4

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 102
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getPressedColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x3

    .line 124
    new-array v0, v1, [F

    .line 125
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 126
    aget v1, v0, v3

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 127
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getRectStateListDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getLighterColor(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getRectStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRectStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v5, [I

    aput p1, v4, v6

    aput p2, v4, v7

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 82
    .local v0, "normal":Landroid/graphics/drawable/GradientDrawable;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v5, [I

    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v5

    aput v5, v4, v6

    invoke-static {p2}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v5

    aput v5, v4, v7

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 83
    .local v1, "pressed":Landroid/graphics/drawable/GradientDrawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 86
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v3, v7, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    new-array v3, v7, [I

    const v4, 0x101009e

    aput v4, v3, v6

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    new-array v3, v6, [I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 89
    return-object v2
.end method

.method public static getStateListDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 22
    invoke-static {p0, p1, p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_cir_btn_radius_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 34
    .local v0, "radius":I
    invoke-static {p0, p1, p2, v0}, Lcom/meizu/common/util/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I
    .param p3, "radius"    # I

    .prologue
    const v11, 0x10100a7

    const v10, 0x101009e

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v9, [I

    aput p1, v5, v7

    aput p2, v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 47
    .local v1, "normal":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v1, p3}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 48
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v9, [I

    invoke-static {p1}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v6

    aput v6, v5, v7

    invoke-static {p2}, Lcom/meizu/common/util/GradientDrawableFactory;->getPressedColor(I)I

    move-result v6

    aput v6, v5, v8

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 49
    .local v2, "pressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v2, p3}, Lcom/meizu/common/util/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$drawable;->mz_btn_corner_disable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, "disabled":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 54
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v9, [I

    aput v10, v4, v7

    neg-int v5, v11

    aput v5, v4, v8

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    new-array v4, v9, [I

    aput v10, v4, v7

    aput v11, v4, v8

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 56
    new-array v4, v8, [I

    neg-int v5, v10

    aput v5, v4, v7

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    new-array v4, v7, [I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    return-object v3
.end method

.method public static makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p1, "radius"    # I

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 147
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 148
    return-void
.end method
