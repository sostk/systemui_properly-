.class public Lcom/meizu/media/music/support/LrcCell;
.super Ljava/lang/Object;
.source "LrcCell.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/meizu/media/music/support/LrcCell;",
        ">;"
    }
.end annotation


# instance fields
.field private mLrcData:Ljava/lang/String;

.field private mLrcTime:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcTime:I

    .line 10
    iput-object p2, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcData:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/meizu/media/music/support/LrcCell;)I
    .locals 2
    .param p1, "another"    # Lcom/meizu/media/music/support/LrcCell;

    .prologue
    .line 14
    iget v0, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcTime:I

    iget v1, p1, Lcom/meizu/media/music/support/LrcCell;->mLrcTime:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lcom/meizu/media/music/support/LrcCell;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/support/LrcCell;->compareTo(Lcom/meizu/media/music/support/LrcCell;)I

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcTime:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/media/music/support/LrcCell;->mLrcData:Ljava/lang/String;

    .line 25
    return-void
.end method
