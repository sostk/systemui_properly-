.class Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;->this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo$1;->this$1:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    iget-object v0, v0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->this$0:Lcom/meizu/common/widget/VideoTextureView;

    invoke-static {v0}, Lcom/meizu/common/widget/VideoTextureView;->access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 104
    return-void
.end method
