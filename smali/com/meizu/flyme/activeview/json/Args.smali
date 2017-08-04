.class public Lcom/meizu/flyme/activeview/json/Args;
.super Ljava/lang/Object;
.source "Args.java"


# static fields
.field private static final PATH_ARRAY_LENGTH:I = 0x4


# instance fields
.field private frequency:F

.field private path:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/Args;->path:[F

    .line 12
    return-void
.end method


# virtual methods
.method public getFrequency()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/flyme/activeview/json/Args;->frequency:F

    return v0
.end method

.method public getPath()[F
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Args;->path:[F

    return-object v0
.end method

.method public setFrequency(F)V
    .locals 0
    .param p1, "frq"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/flyme/activeview/json/Args;->frequency:F

    .line 27
    return-void
.end method

.method public setPath([F)V
    .locals 2
    .param p1, "path"    # [F

    .prologue
    .line 19
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Args;->path:[F

    .line 23
    return-void

    .line 20
    :cond_0
    return-void
.end method
