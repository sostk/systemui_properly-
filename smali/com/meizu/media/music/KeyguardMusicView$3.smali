.class Lcom/meizu/media/music/KeyguardMusicView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get20(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 346
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->resetCurrentPosition()V

    .line 360
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->updateProgressBar()Z

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->restartUpdateProgressBarIfNeeded()V

    .line 354
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 378
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 369
    if-nez p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->resetMetadata()V

    .line 371
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->updateMetadata()V

    .line 372
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap7(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 373
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$3;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->hideLyricContent()V

    .line 367
    :cond_0
    return-void
.end method
