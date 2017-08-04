.class public Lcom/meizu/flyme/activeview/json/Style;
.super Ljava/lang/Object;
.source "Style.java"


# instance fields
.field private background:Ljava/lang/String;

.field private border:Ljava/lang/String;

.field private colorPrimary:I

.field private height:Ljava/lang/String;

.field private mBackgroundColorValue:I

.field private mBorderValue:F

.field private mHeightValue:F

.field private mRadiusValue:F

.field private mWidthValue:F

.field private radius:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColorValue()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->background:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mBackgroundColorValue:I

    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->background:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->background:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mBackgroundColorValue:I

    goto :goto_0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderValue()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mBorderValue:F

    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mBorderValue:F

    goto :goto_0
.end method

.method public getColorPrimary()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->colorPrimary:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightValue(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->height:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mHeightValue:F

    return v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->height:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->height:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mHeightValue:F

    goto :goto_0
.end method

.method public getRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusValue()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mRadiusValue:F

    return v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mRadiusValue:F

    goto :goto_0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->width:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthValue(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->width:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mWidthValue:F

    return v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->width:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Style;->width:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Style;->mWidthValue:F

    goto :goto_0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Style;->background:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 0
    .param p1, "border"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Style;->border:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setColorPrimary(I)V
    .locals 0
    .param p1, "colorPrimary"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Style;->colorPrimary:I

    .line 91
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Style;->height:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRadius(Ljava/lang/String;)V
    .locals 0
    .param p1, "radius"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Style;->radius:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Style;->width:Ljava/lang/String;

    .line 35
    return-void
.end method
