.class Lcom/meizu/media/music/KeyguardMusicController$3;
.super Lcom/meizu/media/music/support/IMusicSupportListener$Stub;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicController;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicController;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$3;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricChanged()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$3;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap2(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 172
    return-void
.end method

.method public onPlayListCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onPlayStateChnaged(ZZ)V
    .locals 0
    .param p1, "playing"    # Z
    .param p2, "buffering"    # Z

    .prologue
    .line 160
    return-void
.end method

.method public onPlayingSongChanged(Lcom/meizu/media/music/support/SupportSongItem;)V
    .locals 0
    .param p1, "song"    # Lcom/meizu/media/music/support/SupportSongItem;

    .prologue
    .line 164
    return-void
.end method
