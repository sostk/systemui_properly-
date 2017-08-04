.class Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;
.super Ljava/lang/Thread;
.source "SimpleVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/views/SimpleVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;


# direct methods
.method private constructor <init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView;Lcom/meizu/flyme/activeview/views/SimpleVideoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView;
    .param p2, "x1"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;-><init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$102(Lcom/meizu/flyme/activeview/views/SimpleVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 95
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$200(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 96
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v3}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$300(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 98
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo$1;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo$1;-><init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 104
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 105
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
