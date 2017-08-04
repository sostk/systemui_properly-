.class public Lcom/meizu/media/music/support/LrcContent;
.super Ljava/util/ArrayList;
.source "LrcContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/meizu/media/music/support/LrcCell;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private by:Ljava/lang/String;

.field private offset:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlbum(Ljava/lang/String;)V
    .locals 1
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->album:Ljava/lang/String;

    .line 61
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->album:Ljava/lang/String;

    goto :goto_0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->artist:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->artist:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "by"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/meizu/media/music/support/LrcContent;->by:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->title:Ljava/lang/String;

    .line 69
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object v0, p0, Lcom/meizu/media/music/support/LrcContent;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public sort()Lcom/meizu/media/music/support/LrcContent;
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 30
    return-object p0
.end method
