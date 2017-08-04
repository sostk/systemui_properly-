.class public Lcom/meizu/flyme/activeview/json/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field private static final ANIMATION_2D_ARRAY_LENGTH:I = 0x2

.field private static final ANIMATION_3D_ARRAY_LENGTH:I = 0x3


# instance fields
.field private blur:Ljava/lang/Float;

.field private duration:I

.field private id:Ljava/lang/String;

.field private interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

.field private mTrackPathValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private opacity:Ljava/lang/Integer;

.field private repeat:Z

.field private repeatCount:I

.field private repeatMode:Ljava/lang/String;

.field private rotate3d:[Ljava/lang/Float;

.field private rotateCenter:[Ljava/lang/String;

.field private rotateCenterValue:[F

.field private scale2d:[Ljava/lang/Float;

.field private startTime:I

.field private trackPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private trackPointUnit:Ljava/lang/String;

.field private transform2d:[Ljava/lang/String;

.field private transform2dValue:[Ljava/lang/Float;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2dValue:[Ljava/lang/Float;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotate3d:[Ljava/lang/Float;

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenterValue:[F

    .line 30
    new-array v0, v1, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->scale2d:[Ljava/lang/Float;

    .line 43
    return-void
.end method


# virtual methods
.method public getBlur()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->blur:Ljava/lang/Float;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterpolator()Lcom/meizu/flyme/activeview/json/Interpolator;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->opacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeatCount:I

    return v0
.end method

.method public getRepeatMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeatMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRotate3d()[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotate3d:[Ljava/lang/Float;

    return-object v0
.end method

.method public getRotateCenter()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    return-object v0
.end method

.method public getRotateCenterValue(Landroid/content/Context;)[F
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 117
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenterValue:[F

    return-object v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 119
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenterValue:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    goto :goto_1
.end method

.method public getScale2d()[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->scale2d:[Ljava/lang/Float;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->startTime:I

    return v0
.end method

.method public getTrackPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    return-object v0
.end method

.method public getTrackPathValue(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->mTrackPathValue:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->mTrackPathValue:Ljava/util/List;

    return-object v3

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->mTrackPathValue:Ljava/util/List;

    .line 169
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .line 170
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, 0x2

    .line 171
    new-array v2, v3, [F

    .line 172
    .local v2, "tempValue":[F
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 173
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v6

    aput v3, v2, v6

    .line 174
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPointUnit:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 178
    :goto_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->mTrackPathValue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPointUnit:Ljava/lang/String;

    aget v4, v2, v5

    invoke-static {p1, v3, v4}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    .line 176
    iget-object v3, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPointUnit:Ljava/lang/String;

    aget v4, v2, v6

    invoke-static {p1, v3, v4}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    goto :goto_1
.end method

.method public getTrackPointUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPointUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getTransform2d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransform2dValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 143
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2dValue:[Ljava/lang/Float;

    return-object v1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 144
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 145
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2dValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeat()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeat:Z

    return v0
.end method

.method public setBlur(Ljava/lang/Float;)V
    .locals 0
    .param p1, "blur"    # Ljava/lang/Float;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->blur:Ljava/lang/Float;

    .line 227
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->duration:I

    .line 83
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setInterpolator(Lcom/meizu/flyme/activeview/json/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lcom/meizu/flyme/activeview/json/Interpolator;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setOpacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "opacity"    # Ljava/lang/Integer;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->opacity:Ljava/lang/Integer;

    .line 155
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0
    .param p1, "repeat"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeat:Z

    .line 203
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeatCount:I

    .line 211
    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatMode"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->repeatMode:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setRotate3d([Ljava/lang/Float;)V
    .locals 0
    .param p1, "rotate3d"    # [Ljava/lang/Float;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotate3d:[Ljava/lang/Float;

    .line 107
    return-void
.end method

.method public setRotateCenter([Ljava/lang/String;)V
    .locals 2
    .param p1, "rotateCenter"    # [Ljava/lang/String;

    .prologue
    .line 110
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->rotateCenter:[Ljava/lang/String;

    .line 114
    return-void

    .line 111
    :cond_0
    return-void
.end method

.method public setScale2d([Ljava/lang/Float;)V
    .locals 0
    .param p1, "scale2d"    # [Ljava/lang/Float;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->scale2d:[Ljava/lang/Float;

    .line 95
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "startTime"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->startTime:I

    .line 75
    return-void
.end method

.method public setTrackPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "trackPath":Ljava/util/List;, "Ljava/util/List<[F>;"
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPath:Ljava/util/List;

    .line 187
    return-void
.end method

.method public setTrackPointUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackPointUnit"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->trackPointUnit:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setTransform2d([Ljava/lang/String;)V
    .locals 2
    .param p1, "transform2d"    # [Ljava/lang/String;

    .prologue
    .line 136
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->transform2d:[Ljava/lang/String;

    .line 140
    return-void

    .line 137
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Animation;->type:Ljava/lang/String;

    .line 55
    return-void
.end method
