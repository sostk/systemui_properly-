.class public Lcom/meizu/sharewidget/utils/ViewAttributeUtils;
.super Ljava/lang/Object;
.source "ViewAttributeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBackgroundDrawable(Lcom/meizu/sharewidget/utils/ColorUiInterface;Landroid/content/res/Resources$Theme;I)V
    .locals 4
    .param p0, "ci"    # Lcom/meizu/sharewidget/utils/ColorUiInterface;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "paramInt"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [I

    aput p2, v2, v3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 39
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p0, :cond_0

    .line 43
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void

    .line 41
    :cond_0
    invoke-interface {p0}, Lcom/meizu/sharewidget/utils/ColorUiInterface;->getTargetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static applyTextColor(Lcom/meizu/sharewidget/utils/ColorUiInterface;Landroid/content/res/Resources$Theme;I)V
    .locals 4
    .param p0, "ci"    # Lcom/meizu/sharewidget/utils/ColorUiInterface;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "paramInt"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    new-array v2, v2, [I

    aput p2, v2, v3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 49
    .local v0, "resourceId":I
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 49
    :cond_1
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/meizu/sharewidget/utils/ColorUiInterface;->getTargetView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static getAttributeValue(Landroid/util/AttributeSet;I)I
    .locals 6
    .param p0, "attr"    # Landroid/util/AttributeSet;
    .param p1, "paramInt"    # I

    .prologue
    .line 16
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 17
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v4, -0x1

    .line 26
    return v4

    .line 18
    :cond_0
    invoke-interface {p0, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 17
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 22
    .local v3, "value":I
    return v3
.end method

.method public static getBackgroundAttibute(Landroid/util/AttributeSet;)I
    .locals 1
    .param p0, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x10100d4

    .line 30
    invoke-static {p0, v0}, Lcom/meizu/sharewidget/utils/ViewAttributeUtils;->getAttributeValue(Landroid/util/AttributeSet;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorAttribute(Landroid/util/AttributeSet;)I
    .locals 1
    .param p0, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010098

    .line 34
    invoke-static {p0, v0}, Lcom/meizu/sharewidget/utils/ViewAttributeUtils;->getAttributeValue(Landroid/util/AttributeSet;I)I

    move-result v0

    return v0
.end method
