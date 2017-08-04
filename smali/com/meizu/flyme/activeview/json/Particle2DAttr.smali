.class public Lcom/meizu/flyme/activeview/json/Particle2DAttr;
.super Ljava/lang/Object;
.source "Particle2DAttr.java"


# static fields
.field private static final ARRAY_LENGTH_2:I = 0x2


# instance fields
.field private bitmapPath:Ljava/lang/String;

.field private colors:[I

.field private heights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private mHeightValues:[F

.field private mOffsetValue:[Ljava/lang/Float;

.field private mPositionValue:[Ljava/lang/Float;

.field private mRandomSpeedValue:[Ljava/lang/Float;

.field private mRegionRadiusValue:Ljava/lang/Float;

.field private mSpeedValue:[Ljava/lang/Float;

.field private mTranslationValue:[Ljava/lang/Float;

.field private mWidthValues:[F

.field private offset:[Ljava/lang/String;

.field private position:[Ljava/lang/String;

.field private randomSpeed:[Ljava/lang/String;

.field private regionRadius:Ljava/lang/String;

.field private scale:[Ljava/lang/Float;

.field private speed:[Ljava/lang/String;

.field private translation:[Ljava/lang/String;

.field private transmitCycle:Ljava/lang/Integer;

.field private transmitNum:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private widths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mPositionValue:[Ljava/lang/Float;

    .line 25
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mTranslationValue:[Ljava/lang/Float;

    .line 28
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mSpeedValue:[Ljava/lang/Float;

    .line 31
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mRandomSpeedValue:[Ljava/lang/Float;

    .line 34
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mOffsetValue:[Ljava/lang/Float;

    .line 52
    return-void
.end method


# virtual methods
.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->bitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->colors:[I

    return-object v0
.end method

.method public getHeightValues(Landroid/content/Context;)[F
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    if-nez v3, :cond_1

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mHeightValues:[F

    return-object v3

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 254
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 255
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mHeightValues:[F

    const/4 v0, 0x0

    .line 256
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 257
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "valueTemp":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 256
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mHeightValues:[F

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    goto :goto_1
.end method

.method public getHeights()Ljava/util/List;
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
    .line 248
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 154
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mOffsetValue:[Ljava/lang/Float;

    return-object v1

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 155
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 156
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mOffsetValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getPosition()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    return-object v0
.end method

.method public getPositionValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 66
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mPositionValue:[Ljava/lang/Float;

    return-object v1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 67
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 68
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mPositionValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getRandomSpeed()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    return-object v0
.end method

.method public getRandomSpeedValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 132
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mRandomSpeedValue:[Ljava/lang/Float;

    return-object v1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 133
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 134
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 133
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mRandomSpeedValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getRegionRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->regionRadius:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionRadiusValue(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->regionRadius:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mRegionRadiusValue:Ljava/lang/Float;

    return-object v0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->regionRadius:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->regionRadius:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mRegionRadiusValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getScale()[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->scale:[Ljava/lang/Float;

    return-object v0
.end method

.method public getSpeed()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 110
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mSpeedValue:[Ljava/lang/Float;

    return-object v1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 111
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 112
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mSpeedValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getTranslation()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationValue()[Ljava/lang/Float;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 88
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mTranslationValue:[Ljava/lang/Float;

    return-object v1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    .line 89
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 90
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mTranslationValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getTransmitCycle()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->transmitCycle:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransmitNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->transmitNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthValues(Landroid/content/Context;)[F
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    if-nez v3, :cond_1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mWidthValues:[F

    return-object v3

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 230
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 231
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mWidthValues:[F

    const/4 v0, 0x0

    .line 232
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 233
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    .local v2, "valueTemp":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 232
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->mWidthValues:[F

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v0

    goto :goto_1
.end method

.method public getWidths()Ljava/util/List;
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
    .line 224
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    return-object v0
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->bitmapPath:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 268
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->colors:[I

    .line 269
    return-void
.end method

.method public setHeights(Ljava/util/List;)V
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
    .line 244
    .local p1, "heights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->heights:Ljava/util/List;

    .line 245
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->id:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setOffset([Ljava/lang/String;)V
    .locals 2
    .param p1, "offset"    # [Ljava/lang/String;

    .prologue
    .line 147
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->offset:[Ljava/lang/String;

    .line 151
    return-void

    .line 148
    :cond_0
    return-void
.end method

.method public setPosition([Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # [Ljava/lang/String;

    .prologue
    .line 59
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->position:[Ljava/lang/String;

    .line 63
    return-void

    .line 60
    :cond_0
    return-void
.end method

.method public setRandomSpeed([Ljava/lang/String;)V
    .locals 2
    .param p1, "randomSpeed"    # [Ljava/lang/String;

    .prologue
    .line 125
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->randomSpeed:[Ljava/lang/String;

    .line 129
    return-void

    .line 126
    :cond_0
    return-void
.end method

.method public setRegionRadius(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionRadius"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->regionRadius:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setScale([Ljava/lang/Float;)V
    .locals 0
    .param p1, "scale"    # [Ljava/lang/Float;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->scale:[Ljava/lang/Float;

    .line 182
    return-void
.end method

.method public setSpeed([Ljava/lang/String;)V
    .locals 2
    .param p1, "speed"    # [Ljava/lang/String;

    .prologue
    .line 103
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->speed:[Ljava/lang/String;

    .line 107
    return-void

    .line 104
    :cond_0
    return-void
.end method

.method public setTranslation([Ljava/lang/String;)V
    .locals 2
    .param p1, "translation"    # [Ljava/lang/String;

    .prologue
    .line 81
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->translation:[Ljava/lang/String;

    .line 85
    return-void

    .line 82
    :cond_0
    return-void
.end method

.method public setTransmitCycle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "transmitCycle"    # Ljava/lang/Integer;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->transmitCycle:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setTransmitNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "transmitNum"    # Ljava/lang/Integer;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->transmitNum:Ljava/lang/Integer;

    .line 198
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->type:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setWidths(Ljava/util/List;)V
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
    .line 220
    .local p1, "widths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->widths:Ljava/util/List;

    .line 221
    return-void
.end method
