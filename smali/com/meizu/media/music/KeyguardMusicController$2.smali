.class Lcom/meizu/media/music/KeyguardMusicController$2;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 130
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {p2}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicController;->-set5(Lcom/meizu/media/music/KeyguardMusicController;Lcom/meizu/media/music/support/IMusicSupportService;)Lcom/meizu/media/music/support/IMusicSupportService;

    .line 134
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get7(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->-get7(Lcom/meizu/media/music/KeyguardMusicController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap12(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-wrap2(Lcom/meizu/media/music/KeyguardMusicController;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->restartUpdateProgressBarIfNeeded()V

    .line 142
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->hasLrcContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_1
    :goto_0
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected, mSupportService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get11(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$2;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->requestLyric()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    const-string/jumbo v0, "KeyguardMusicController"

    const-string/jumbo v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
