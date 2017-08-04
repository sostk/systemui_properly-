.class public Lcom/meizu/media/render/RenderView;
.super Landroid/view/TextureView;
.source "RenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/meizu/media/render/RenderManager$IRenderObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/render/RenderView$RenderViewListener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/meizu/media/render/RenderView$RenderViewListener;

.field protected mRenderModeType:I

.field protected final mRendererCore:Lcom/meizu/media/render/RendererCore;

.field protected mSharedCore:Lcom/meizu/media/render/RendererCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/meizu/media/render/RendererCore;

    invoke-direct {v0}, Lcom/meizu/media/render/RendererCore;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/meizu/media/render/RendererCore;

    invoke-direct {v0}, Lcom/meizu/media/render/RendererCore;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Lcom/meizu/media/render/RendererCore;

    invoke-direct {v0}, Lcom/meizu/media/render/RendererCore;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    .line 27
    return-void
.end method


# virtual methods
.method public getRendererCore()Lcom/meizu/media/render/RendererCore;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/meizu/media/render/RendererCore;)V
    .locals 1
    .param p1, "sharedCore"    # Lcom/meizu/media/render/RendererCore;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/media/render/RenderView;->mSharedCore:Lcom/meizu/media/render/RendererCore;

    .line 41
    invoke-virtual {p0, p0}, Lcom/meizu/media/render/RenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 42
    invoke-static {}, Lcom/meizu/media/render/RenderManager;->getInstance()Lcom/meizu/media/render/RenderManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/media/render/RenderManager;->addObserver(Lcom/meizu/media/render/RenderManager$IRenderObserver;)V

    .line 39
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/media/render/RendererCore;->init(Landroid/graphics/SurfaceTexture;II)V

    .line 75
    iget v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    iget-object v1, p0, Lcom/meizu/media/render/RenderView;->mSharedCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/RendererCore;->startup(Lcom/meizu/media/render/RendererCore;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mListener:Lcom/meizu/media/render/RenderView$RenderViewListener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mListener:Lcom/meizu/media/render/RenderView$RenderViewListener;

    invoke-interface {v0}, Lcom/meizu/media/render/RenderView$RenderViewListener;->onRenderViewCreated()V

    .line 73
    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mListener:Lcom/meizu/media/render/RenderView$RenderViewListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mListener:Lcom/meizu/media/render/RenderView$RenderViewListener;

    invoke-interface {v0}, Lcom/meizu/media/render/RenderView$RenderViewListener;->onRenderViewDestroy()V

    .line 88
    :cond_0
    iget v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->stop()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->release()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0, p2, p3}, Lcom/meizu/media/render/RendererCore;->setSceneSize(II)V

    .line 100
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->update()V

    .line 97
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 104
    return-void
.end method

.method public setRender(Lcom/meizu/media/render/BaseRender;)V
    .locals 1
    .param p1, "render"    # Lcom/meizu/media/render/BaseRender;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0, p1}, Lcom/meizu/media/render/RendererCore;->setRender(Lcom/meizu/media/render/BaseRender;)V

    .line 45
    return-void
.end method

.method public setRenderModeType(I)V
    .locals 2
    .param p1, "renderModeType"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    .line 56
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/meizu/media/render/RenderView;->mRenderModeType:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->stop()V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/render/RenderView;->mRendererCore:Lcom/meizu/media/render/RendererCore;

    iget-object v1, p0, Lcom/meizu/media/render/RenderView;->mSharedCore:Lcom/meizu/media/render/RendererCore;

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/RendererCore;->startup(Lcom/meizu/media/render/RendererCore;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
