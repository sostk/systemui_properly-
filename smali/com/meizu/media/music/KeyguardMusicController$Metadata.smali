.class public Lcom/meizu/media/music/KeyguardMusicController$Metadata;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field albumTitle:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field artistAlbumTitle:Ljava/lang/String;

.field bitmap:Landroid/graphics/Bitmap;

.field duration:J

.field trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const-string/jumbo v0, "MEIZU Music"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    .line 237
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iput-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "MEIZU Music"

    iput-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    .line 248
    iput-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artistAlbumTitle:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->bitmap:Landroid/graphics/Bitmap;

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->duration:J

    .line 245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, " albumTitle="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "artistAlbumTitle"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->artistAlbumTitle:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, " duration="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget-wide v2, p0, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->duration:J

    .line 255
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "]"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
