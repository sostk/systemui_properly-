.class public Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;
.super Ljava/lang/Object;
.source "GraphicsAnimAttr.java"


# instance fields
.field private bitmapPath:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private colorList:[I

.field private id:Ljava/lang/String;

.field private mParticleHeightValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleWidthValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomSpeedXValue:Ljava/lang/Float;

.field private mRandomSpeedYValue:Ljava/lang/Float;

.field private mRandomXValue:Ljava/lang/Float;

.field private mRandomYValue:Ljava/lang/Float;

.field private mRegionRadiusValue:Ljava/lang/Float;

.field private mSpeedXValue:Ljava/lang/Float;

.field private mSpeedYValue:Ljava/lang/Float;

.field private mTranslationXValue:Ljava/lang/Float;

.field private mTranslationYValue:Ljava/lang/Float;

.field private mXValue:Ljava/lang/Float;

.field private mYValue:Ljava/lang/Float;

.field private particleHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private particleWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private randomSpeedX:Ljava/lang/String;

.field private randomSpeedY:Ljava/lang/String;

.field private randomX:Ljava/lang/String;

.field private randomY:Ljava/lang/String;

.field private regionRadius:Ljava/lang/String;

.field private scaleX:Ljava/lang/Float;

.field private scaleY:Ljava/lang/Float;

.field private speedX:Ljava/lang/String;

.field private speedY:Ljava/lang/String;

.field private translationX:Ljava/lang/String;

.field private translationY:Ljava/lang/String;

.field private transmitCycle:Ljava/lang/Integer;

.field private transmitNum:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->bitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColorList()[I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->colorList:[I

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParticleHeight()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    return-object v0
.end method

.method public getParticleHeightValue()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    if-nez v3, :cond_1

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleHeightValues:Ljava/util/List;

    return-object v3

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 327
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleHeightValues:Ljava/util/List;

    const/4 v0, 0x0

    .line 329
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 330
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "valueTemp":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 329
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleHeightValues:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getParticleWidth()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    return-object v0
.end method

.method public getParticleWidthValue()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    if-nez v3, :cond_1

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleWidthValues:Ljava/util/List;

    return-object v3

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 303
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleWidthValues:Ljava/util/List;

    const/4 v0, 0x0

    .line 305
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 306
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, "valueTemp":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 305
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mParticleWidthValues:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRandomSpeedX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomSpeedXValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedXValue:Ljava/lang/Float;

    return-object v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedXValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getRandomSpeedY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomSpeedYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedYValue:Ljava/lang/Float;

    return-object v0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getRandomX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomXValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomXValue:Ljava/lang/Float;

    return-object v0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomXValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getRandomY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomYValue:Ljava/lang/Float;

    return-object v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getRegionRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->regionRadius:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleX()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->scaleX:Ljava/lang/Float;

    return-object v0
.end method

.method public getScaleY()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->scaleY:Ljava/lang/Float;

    return-object v0
.end method

.method public getSpeedX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedXValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mSpeedXValue:Ljava/lang/Float;

    return-object v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mSpeedXValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getSpeedY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mSpeedYValue:Ljava/lang/Float;

    return-object v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mSpeedYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getTranslationX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationXValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mTranslationXValue:Ljava/lang/Float;

    return-object v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mTranslationXValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getTranslationY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mTranslationYValue:Ljava/lang/Float;

    return-object v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mTranslationYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getTransmitCycle()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->transmitCycle:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransmitNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->transmitNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getXValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mXValue:Ljava/lang/Float;

    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mXValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mYValue:Ljava/lang/Float;

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getmRandomSpeedYValue()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedYValue:Ljava/lang/Float;

    return-object v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->mRandomSpeedYValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->bitmapPath:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->className:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setColorList([I)V
    .locals 0
    .param p1, "colorList"    # [I

    .prologue
    .line 341
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->colorList:[I

    .line 342
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setParticleHeight(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "particleHeight":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleHeight:Ljava/util/List;

    .line 318
    return-void
.end method

.method public setParticleWidth(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "particleWidth":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->particleWidth:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setRandomSpeedX(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomSpeedX"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedX:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setRandomSpeedY(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomSpeedY"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomSpeedY:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setRandomX(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomX"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomX:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setRandomY(Ljava/lang/String;)V
    .locals 0
    .param p1, "randomY"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->randomY:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setRegionRadius(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionRadius"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->regionRadius:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setScaleX(Ljava/lang/Float;)V
    .locals 0
    .param p1, "scaleX"    # Ljava/lang/Float;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->scaleX:Ljava/lang/Float;

    .line 155
    return-void
.end method

.method public setScaleY(Ljava/lang/Float;)V
    .locals 0
    .param p1, "scaleY"    # Ljava/lang/Float;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->scaleY:Ljava/lang/Float;

    .line 163
    return-void
.end method

.method public setSpeedX(Ljava/lang/String;)V
    .locals 0
    .param p1, "speedX"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedX:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setSpeedY(Ljava/lang/String;)V
    .locals 0
    .param p1, "sppedY"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->speedY:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setTranslationX(Ljava/lang/String;)V
    .locals 0
    .param p1, "translationX"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationX:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTranslationY(Ljava/lang/String;)V
    .locals 0
    .param p1, "translationY"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->translationY:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTransmitCycle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "transmitCycle"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->transmitCycle:Ljava/lang/Integer;

    .line 263
    return-void
.end method

.method public setTransmitNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "transmitNum"    # Ljava/lang/Integer;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->transmitNum:Ljava/lang/Integer;

    .line 271
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->type:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->x:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0
    .param p1, "y"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/GraphicsAnimAttr;->y:Ljava/lang/String;

    .line 110
    return-void
.end method
