.class Lcom/meizu/media/music/KeyguardMusicController$1;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 99
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$1;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$1;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$1;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get5(Lcom/meizu/media/music/KeyguardMusicController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$1;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap8(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 101
    :cond_0
    return-void
.end method
