.class public Lcom/android/systemui/FontSizeUtils;
.super Ljava/lang/Object;
.source "FontSizeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 64
    return-void
.end method

.method public static updateFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    if-nez p1, :cond_1

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public static updateFontSize(Landroid/view/View;II)V
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "dimensId"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 31
    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "dimensId"    # I

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    :cond_0
    return-void
.end method
