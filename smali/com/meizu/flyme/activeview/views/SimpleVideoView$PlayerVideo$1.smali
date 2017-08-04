.class Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo$1;
.super Ljava/lang/Object;
.source "SimpleVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo$1;->this$1:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo$1;->this$1:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->this$0:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 102
    return-void
.end method
