.class Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;
.super Ljava/lang/Thread;
.source "VideoTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/VideoTextureView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/VideoTextureView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/VideoTextureView;
    .param p2, "x1"    # Lcom/meizu/common/widget/VideoTextureView$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v1, v2}, Lcom/meizu/common/widget/VideoTextureView;->access$102(Lcom/meizu/common/widget/VideoTextureView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 97
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v2}, Lcom/meizu/common/widget/VideoTextureView;->access$200(Lcom/meizu/common/widget/VideoTextureView;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 98
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v3}, Lcom/meizu/common/widget/VideoTextureView;->access$300(Lcom/meizu/common/widget/VideoTextureView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 99
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 100
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;-><init>(Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 107
    iget-object v1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v1}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
