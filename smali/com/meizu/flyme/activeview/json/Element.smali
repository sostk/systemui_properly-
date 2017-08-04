.class public Lcom/meizu/flyme/activeview/json/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field private static final DOM_2D_ARRAY_LENGTH:I = 0x2

.field private static final DOM_3D_ARRAY_LENGTH:I = 0x3

.field private static final DOM_RECT_ARRAY_LENGTH:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Parse_Element"


# instance fields
.field animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private background:Ljava/lang/String;

.field private blur:Ljava/lang/Float;

.field events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;"
        }
    .end annotation
.end field

.field private hover:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mBackgroundColorValue:Ljava/lang/Integer;

.field private mRadiusValue:F

.field private mRectRegion:[F

.field private opacity:Ljava/lang/Integer;

.field parallax:Lcom/meizu/flyme/activeview/json/Parallax;

.field private particle2DAttr:Lcom/meizu/flyme/activeview/json/Particle2DAttr;

.field private radius:Ljava/lang/String;

.field private rect:[Ljava/lang/String;

.field private rotate3d:[F

.field private rotateCenter:[Ljava/lang/String;

.field private rotateCenterValue:[F

.field private scale2d:[F

.field private textAttrs:Lcom/meizu/flyme/activeview/json/TextAttrs;

.field private type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->mRectRegion:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->scale2d:[F

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rotate3d:[F

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenterValue:[F

    .line 52
    return-void
.end method


# virtual methods
.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->animations:Ljava/util/List;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColorValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->background:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->mBackgroundColorValue:Ljava/lang/Integer;

    return-object v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->background:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->background:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->mBackgroundColorValue:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getBlur()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->blur:Ljava/lang/Float;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->events:Ljava/util/List;

    return-object v0
.end method

.method public getHover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->hover:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->opacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParallax()Lcom/meizu/flyme/activeview/json/Parallax;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->parallax:Lcom/meizu/flyme/activeview/json/Parallax;

    return-object v0
.end method

.method public getParticle2DAttr()Lcom/meizu/flyme/activeview/json/Particle2DAttr;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->particle2DAttr:Lcom/meizu/flyme/activeview/json/Particle2DAttr;

    return-object v0
.end method

.method public getRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->radius:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusValue(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->radius:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Element;->mRadiusValue:F

    return v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->radius:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->radius:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/flyme/activeview/json/Element;->mRadiusValue:F

    goto :goto_0
.end method

.method public getRect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    return-object v0
.end method

.method public getRectRegion(Landroid/content/Context;)[F
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    .line 79
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->mRectRegion:[F

    return-object v1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 80
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->mRectRegion:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->mRectRegion:[F

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 81
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->mRectRegion:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    goto :goto_1
.end method

.method public getRotate3d()[F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rotate3d:[F

    return-object v0
.end method

.method public getRotateCenter()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    return-object v0
.end method

.method public getRotateCenterValue()[F
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 191
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenterValue:[F

    return-object v1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 193
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenterValue:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    goto :goto_1
.end method

.method public getScale2d()[F
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->scale2d:[F

    return-object v0
.end method

.method public getTextAttrs()Lcom/meizu/flyme/activeview/json/TextAttrs;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->textAttrs:Lcom/meizu/flyme/activeview/json/TextAttrs;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Element;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "animations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Animation;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->animations:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->background:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setBlur(Ljava/lang/Float;)V
    .locals 0
    .param p1, "blur"    # Ljava/lang/Float;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->blur:Ljava/lang/Float;

    .line 234
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Event;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->events:Ljava/util/List;

    .line 165
    return-void
.end method

.method public setHover(Ljava/lang/String;)V
    .locals 0
    .param p1, "hover"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->hover:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOpacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "opacity"    # Ljava/lang/Integer;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->opacity:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setParallax(Lcom/meizu/flyme/activeview/json/Parallax;)V
    .locals 0
    .param p1, "parallax"    # Lcom/meizu/flyme/activeview/json/Parallax;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->parallax:Lcom/meizu/flyme/activeview/json/Parallax;

    .line 207
    return-void
.end method

.method public setParticle2DAttr(Lcom/meizu/flyme/activeview/json/Particle2DAttr;)V
    .locals 0
    .param p1, "graphicsAnimAttr"    # Lcom/meizu/flyme/activeview/json/Particle2DAttr;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->particle2DAttr:Lcom/meizu/flyme/activeview/json/Particle2DAttr;

    .line 222
    return-void
.end method

.method public setRadius(Ljava/lang/String;)V
    .locals 0
    .param p1, "radius"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->radius:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRect([Ljava/lang/String;)V
    .locals 0
    .param p1, "rect"    # [Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->rect:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRotate3d([F)V
    .locals 2
    .param p1, "rotate3d"    # [F

    .prologue
    .line 137
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotate3d:[F

    .line 141
    return-void

    .line 138
    :cond_0
    return-void
.end method

.method public setRotateCenter([Ljava/lang/String;)V
    .locals 2
    .param p1, "rotateCenter"    # [Ljava/lang/String;

    .prologue
    .line 184
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->rotateCenter:[Ljava/lang/String;

    .line 188
    return-void

    .line 185
    :cond_0
    return-void
.end method

.method public setScale2d([F)V
    .locals 2
    .param p1, "scale2d"    # [F

    .prologue
    .line 126
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->scale2d:[F

    .line 130
    return-void

    .line 127
    :cond_0
    return-void
.end method

.method public setTextAttrs(Lcom/meizu/flyme/activeview/json/TextAttrs;)V
    .locals 0
    .param p1, "textAttrs"    # Lcom/meizu/flyme/activeview/json/TextAttrs;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->textAttrs:Lcom/meizu/flyme/activeview/json/TextAttrs;

    .line 215
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->type:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Element;->url:Ljava/lang/String;

    .line 181
    return-void
.end method
