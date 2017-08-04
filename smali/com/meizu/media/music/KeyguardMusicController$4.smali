.class Lcom/meizu/media/music/KeyguardMusicController$4;
.super Landroid/os/Handler;
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
    .line 566
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 569
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    goto :goto_0

    .line 577
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap3(Lcom/meizu/media/music/KeyguardMusicController;Z)V

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->-set0(Lcom/meizu/media/music/KeyguardMusicController;I)I

    .line 581
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get1(Lcom/meizu/media/music/KeyguardMusicController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap6(Lcom/meizu/media/music/KeyguardMusicController;I)V

    .line 582
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0, v4}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    goto :goto_0

    .line 587
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-set0(Lcom/meizu/media/music/KeyguardMusicController;I)I

    .line 588
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get1(Lcom/meizu/media/music/KeyguardMusicController;)I

    move-result v1

    .line 589
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 588
    invoke-static {v0, v1, v3, v2, v3}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap5(Lcom/meizu/media/music/KeyguardMusicController;IIII)V

    .line 590
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0, v4}, Lcom/meizu/media/music/KeyguardMusicController;->showOrHideKeyguardMusicView(Z)V

    goto :goto_0

    .line 595
    :pswitch_4
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap7(Lcom/meizu/media/music/KeyguardMusicController;I)V

    goto :goto_0

    .line 598
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-static {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap4(Lcom/meizu/media/music/KeyguardMusicController;Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 601
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get9(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/media/RemoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get9(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/media/RemoteController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "register remote controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap11(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 604
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$4;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap9(Lcom/meizu/media/music/KeyguardMusicController;)V

    goto/16 :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
