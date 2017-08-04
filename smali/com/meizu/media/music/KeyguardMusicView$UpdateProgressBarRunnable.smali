.class Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method private constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;-><init>(Lcom/meizu/media/music/KeyguardMusicView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->playPositionForwardByStep()V

    .line 263
    invoke-virtual {p0}, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->updateOnce()Z

    move-result v0

    .line 264
    .local v0, "progressing":Z
    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1, p0}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/meizu/media/music/KeyguardMusicView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_0
    return-void
.end method

.method public updateOnce()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->updateProgressBar()Z

    move-result v0

    return v0
.end method
