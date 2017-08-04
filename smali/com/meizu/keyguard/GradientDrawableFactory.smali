.class public Lcom/meizu/keyguard/GradientDrawableFactory;
.super Ljava/lang/Object;
.source "GradientDrawableFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPressedColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 91
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 92
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 93
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 94
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->mz_cir_btn_radius_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 32
    .local v0, "radius":I
    invoke-static {p0, p1, p2, v0}, Lcom/meizu/keyguard/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leftColor"    # I
    .param p2, "rightColor"    # I
    .param p3, "radius"    # I

    .prologue
    .line 44
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    const/4 v8, 0x1

    aput p2, v7, v8

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 45
    .local v2, "normal":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v2, p3}, Lcom/meizu/keyguard/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 46
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-static {p1}, Lcom/meizu/keyguard/GradientDrawableFactory;->getPressedColor(I)I

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {p2}, Lcom/meizu/keyguard/GradientDrawableFactory;->getPressedColor(I)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-direct {v3, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 47
    .local v3, "pressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v3, p3}, Lcom/meizu/keyguard/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 48
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->mz_cir_btn_color_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$color;->mz_cir_btn_color_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-direct {v0, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 49
    .local v0, "disabled":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0, p3}, Lcom/meizu/keyguard/GradientDrawableFactory;->makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V

    .line 50
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 51
    .local v5, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v4, 0x10100a7

    .line 52
    .local v4, "pressed_state":I
    const v1, 0x101009e

    .line 53
    .local v1, "enabled_state":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 52
    const v7, 0x101009e

    .line 53
    const/4 v8, 0x0

    aput v7, v6, v8

    neg-int v7, v4

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 54
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 52
    const v7, 0x101009e

    .line 54
    const/4 v8, 0x0

    aput v7, v6, v8

    .line 51
    const v7, 0x10100a7

    .line 54
    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-virtual {v5, v6, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    const/4 v6, 0x1

    new-array v6, v6, [I

    neg-int v7, v1

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {v5, v6, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 56
    return-object v5
.end method

.method public static makeRoundRect(Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p1, "radius"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 105
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 103
    return-void
.end method
