.class Lcom/meizu/media/music/KeyguardMusicView$1;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;


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
    .line 172
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 1
    .param p1, "clearing"    # Z

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->clearMetadata()V

    .line 174
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get12(Lcom/meizu/media/music/KeyguardMusicView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->-set1(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-set2(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 246
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->updateMetadata()V

    .line 247
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0, v2}, Lcom/meizu/media/music/KeyguardMusicView;->-set2(Lcom/meizu/media/music/KeyguardMusicView;Z)Z

    .line 240
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap10(Lcom/meizu/media/music/KeyguardMusicView;Z)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 190
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getCurrentSpeed()F

    move-result v1

    float-to-int v1, v1

    .line 188
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/meizu/media/music/KeyguardMusicView$1;->onClientPlaybackStateUpdateWithDetails(IIII)V

    .line 181
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap10(Lcom/meizu/media/music/KeyguardMusicView;Z)V

    .line 186
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get18(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/widget/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/CircleProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onClientPlaybackStateUpdateWithDetails(IIII)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # I
    .param p3, "currentPosMs"    # I
    .param p4, "speed"    # I

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap10(Lcom/meizu/media/music/KeyguardMusicView;Z)V

    .line 198
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->updateProgressBar()Z

    .line 199
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 200
    .local v0, "isPlaying":Z
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get19(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 201
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get10(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/MarqueeTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get10(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/MarqueeTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/media/music/MarqueeTextView;->setScrollState(Z)V

    .line 209
    .end local v0    # "isPlaying":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get20(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/music/KeyguardMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1, p1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap11(Lcom/meizu/media/music/KeyguardMusicView;I)V

    .line 212
    const-string/jumbo v1, "KeyguardMusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientPlaybackStateUpdate(state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, ", stateChangeTimeMs="

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    const-string/jumbo v3, ", currentPosMs="

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    const-string/jumbo v3, ", speed="

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    const-string/jumbo v3, ")"

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1, p1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap1(Lcom/meizu/media/music/KeyguardMusicView;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get9(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 222
    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicView;->-get20(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicView$UpdateProgressBarRunnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/meizu/media/music/KeyguardMusicView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_2
    return-void

    .line 199
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isPlaying":Z
    goto/16 :goto_0

    .line 206
    .end local v0    # "isPlaying":Z
    :cond_4
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1, v2}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap10(Lcom/meizu/media/music/KeyguardMusicView;Z)V

    .line 207
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get18(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/widget/CircleProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/CircleProgressBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 2
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get16(Lcom/meizu/media/music/KeyguardMusicView;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicView;->-set5(Lcom/meizu/media/music/KeyguardMusicView;I)I

    .line 232
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->updateMetadata()V

    .line 229
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    const/16 v1, 0xbd

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-set5(Lcom/meizu/media/music/KeyguardMusicView;I)I

    goto :goto_0
.end method

.method public onLyricChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 251
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get11(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v0, "KeyguardMusicView"

    const-string/jumbo v1, "onLyricChanged ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get11(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get11(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$1;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get11(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    :cond_0
    return-void
.end method
