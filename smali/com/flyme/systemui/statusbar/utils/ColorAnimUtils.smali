.class public Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;
.super Ljava/lang/Object;
.source "ColorAnimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/animation/ValueAnimator;)I
    .locals 5
    .param p0, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 22
    const-string/jumbo v4, "alpha"

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23
    .local v0, "alpha":I
    const-string/jumbo v4, "red"

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 24
    .local v3, "red":I
    const-string/jumbo v4, "blue"

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    .local v1, "blue":I
    const-string/jumbo v4, "green"

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 26
    .local v2, "green":I
    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static ofColor(II)Landroid/animation/ValueAnimator;
    .locals 11
    .param p0, "fromColor"    # I
    .param p1, "endColor"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 12
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 13
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-string/jumbo v5, "alpha"

    new-array v6, v10, [I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    aput v7, v6, v8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 14
    .local v1, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "red"

    new-array v6, v10, [I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    aput v7, v6, v8

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 15
    .local v4, "pvhRed":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "blue"

    new-array v6, v10, [I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    aput v7, v6, v8

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 16
    .local v2, "pvhBlue":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "green"

    new-array v6, v10, [I

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    aput v7, v6, v8

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 17
    .local v3, "pvhGreen":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v8

    aput-object v4, v5, v9

    aput-object v2, v5, v10

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 18
    return-object v0
.end method
