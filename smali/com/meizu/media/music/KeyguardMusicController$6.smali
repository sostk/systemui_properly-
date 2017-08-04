.class Lcom/meizu/media/music/KeyguardMusicController$6;
.super Landroid/os/Handler;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/music/KeyguardMusicController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicController;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicController;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 274
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "Add listener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get10(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportListener$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/meizu/media/music/support/IMusicSupportService;->addListener(Lcom/meizu/media/music/support/IMusicSupportListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "Music service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :pswitch_1
    const-string/jumbo v1, "KeyguardMusicController"

    const-string/jumbo v2, "Remove listener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_1
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get10(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportListener$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/meizu/media/music/support/IMusicSupportService;->removeListener(Lcom/meizu/media/music/support/IMusicSupportListener;)V

    .line 292
    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$6;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/meizu/media/music/KeyguardMusicController;->-set5(Lcom/meizu/media/music/KeyguardMusicController;Lcom/meizu/media/music/support/IMusicSupportService;)Lcom/meizu/media/music/support/IMusicSupportService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
