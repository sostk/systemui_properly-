.class public Lcom/meizu/common/widget/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/VideoTextureView$1;,
        Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;
    }
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/VideoTextureView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/VideoTextureView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/VideoTextureView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/VideoTextureView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/VideoTextureView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/VideoTextureView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/VideoTextureView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p0}, Lcom/meizu/common/widget/VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 47
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

    .line 67
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 68
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->start()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 89
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 116
    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 124
    return-void
.end method

.method public updateSourceUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 58
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 60
    new-instance v0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 61
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->start()V

    .line 62
    return-void
.end method
