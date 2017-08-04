.class Lcom/meizu/media/music/KeyguardMusicController$5;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


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
    .line 610
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 3
    .param p1, "clearing"    # Z

    .prologue
    .line 613
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientChange clearing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap3(Lcom/meizu/media/music/KeyguardMusicController;Z)V

    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get6(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicController$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController$Metadata;->clear()V

    .line 612
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 669
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientMetadataUpdate metadataEditor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->resetCurrentPosition()V

    .line 671
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap12(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap4(Lcom/meizu/media/music/KeyguardMusicController;Landroid/media/RemoteController$MetadataEditor;)V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap0(Lcom/meizu/media/music/KeyguardMusicController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap1(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 668
    :cond_2
    return-void

    .line 681
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap10(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 622
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientPlaybackStateUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 623
    const-string/jumbo v2, ", meizu music = "

    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 623
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v2

    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-set0(Lcom/meizu/media/music/KeyguardMusicController;I)I

    .line 625
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientPlaybackStateUpdate mCurrentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get2(Lcom/meizu/media/music/KeyguardMusicController;)J

    move-result-wide v2

    .line 625
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap6(Lcom/meizu/media/music/KeyguardMusicController;I)V

    .line 628
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 630
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap1(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap10(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 641
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientPlaybackStateUpdate state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 642
    const-string/jumbo v2, ", stateChangeTimeMs = "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    const-string/jumbo v2, ", currentPosMs = "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    const-string/jumbo v2, ", speed = "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    const-string/jumbo v2, ", meizu music = "

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v2}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v2

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p4, p5}, Lcom/meizu/media/music/KeyguardMusicController;->-set1(Lcom/meizu/media/music/KeyguardMusicController;J)J

    .line 646
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p6}, Lcom/meizu/media/music/KeyguardMusicController;->-set2(Lcom/meizu/media/music/KeyguardMusicController;F)F

    .line 647
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-set0(Lcom/meizu/media/music/KeyguardMusicController;I)I

    .line 648
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    .line 649
    long-to-int v1, p2

    long-to-int v2, p4

    float-to-int v3, p6

    .line 648
    invoke-static {v0, p1, v1, v2, v3}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap5(Lcom/meizu/media/music/KeyguardMusicController;IIII)V

    .line 650
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    .line 652
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMeizuMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap1(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get0(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap10(Lcom/meizu/media/music/KeyguardMusicController;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 3
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 662
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientTransportControlUpdate transportControlFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$5;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap7(Lcom/meizu/media/music/KeyguardMusicController;I)V

    .line 661
    return-void
.end method
