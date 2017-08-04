.class public Lcom/meizu/flyme/activeview/views/SimpleVideoView;
.super Landroid/view/TextureView;
.source "SimpleVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/views/SimpleVideoView$1;,
        Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;
    }
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/flyme/activeview/views/SimpleVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/flyme/activeview/views/SimpleVideoView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mSurface:Landroid/view/Surface;

    .line 66
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    invoke-direct {v0, p0, v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;-><init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView;Lcom/meizu/flyme/activeview/views/SimpleVideoView$1;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->start()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 80
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 87
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 114
    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mUri:Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 118
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 122
    return-void
.end method

.method public updateSourceUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mUri:Landroid/net/Uri;

    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 56
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 57
    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    new-instance v0, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    invoke-direct {v0, p0, v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;-><init>(Lcom/meizu/flyme/activeview/views/SimpleVideoView;Lcom/meizu/flyme/activeview/views/SimpleVideoView$1;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    .line 59
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->mPlayerVideo:Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView$PlayerVideo;->start()V

    .line 60
    return-void
.end method
