.class Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerListener"
.end annotation


# instance fields
.field IsSurfaceViewDestroy:Z

.field isSurfaceViewAvailable:Z

.field private mRender:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

.field public mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mTexture:Landroid/graphics/SurfaceTexture;

.field private mThread:Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;

.field final synthetic this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;)V
    .locals 2
    .param p2, "render"    # Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->IsSurfaceViewDestroy:Z

    .line 95
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->isSurfaceViewAvailable:Z

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mRender:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    .line 102
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mRender:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    invoke-virtual {v0, p2, p3}, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->setWidthAndHeight(II)V

    .line 106
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 107
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mRender:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    invoke-static {v3}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->access$000(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;-><init>(Landroid/graphics/SurfaceTexture;Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mThread:Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;

    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mThread:Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->start()V

    .line 112
    iput-boolean v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->IsSurfaceViewDestroy:Z

    .line 113
    iput-boolean v5, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->isSurfaceViewAvailable:Z

    .line 115
    invoke-static {}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GLTextureView"

    const-string/jumbo v1, "SurfaceTextureAvailable"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mThread:Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;

    .line 124
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->isSurfaceViewAvailable:Z

    .line 125
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->IsSurfaceViewDestroy:Z

    .line 126
    invoke-static {}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return v2

    :cond_0
    const-string/jumbo v0, "GLTextureView"

    const-string/jumbo v1, "SurfaceTextureDestroyed"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mRender:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    invoke-virtual {v0, p2, p3}, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->renderChanged(II)V

    .line 134
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 138
    return-void
.end method
