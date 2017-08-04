.class public Lcom/meizu/flyme/activeview/json/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# static fields
.field private static final PARAMETER_2D_ARRAY_LENGTH:I = 0x2


# instance fields
.field private duration:I

.field private interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

.field private range:[Ljava/lang/String;

.field private rangeValue:[Ljava/lang/Float;

.field private sensitivity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Parameter;->rangeValue:[Ljava/lang/Float;

    .line 22
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Parameter;->duration:I

    return v0
.end method

.method public getInterpolator()Lcom/meizu/flyme/activeview/json/Interpolator;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Parameter;->interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

    return-object v0
.end method

.method public getRange()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    return-object v0
.end method

.method public getRangeValue(Landroid/content/Context;)[Ljava/lang/Float;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 60
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->rangeValue:[Ljava/lang/Float;

    return-object v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 61
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 62
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 61
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->rangeValue:[Ljava/lang/Float;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getSensitivity()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Parameter;->sensitivity:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->duration:I

    .line 26
    return-void
.end method

.method public setInterpolator(Lcom/meizu/flyme/activeview/json/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lcom/meizu/flyme/activeview/json/Interpolator;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->interpolator:Lcom/meizu/flyme/activeview/json/Interpolator;

    .line 46
    return-void
.end method

.method public setRange([Ljava/lang/String;)V
    .locals 2
    .param p1, "range"    # [Ljava/lang/String;

    .prologue
    .line 53
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->range:[Ljava/lang/String;

    .line 57
    return-void

    .line 54
    :cond_0
    return-void
.end method

.method public setSensitivity(I)V
    .locals 0
    .param p1, "sensitivity"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Parameter;->sensitivity:I

    .line 34
    return-void
.end method
