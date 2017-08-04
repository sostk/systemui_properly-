.class public Lcom/meizu/media/render/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# instance fields
.field private mRender:Lcom/meizu/media/render/BaseRender;

.field private mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

.field private mRendererCoreHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCoreHandler;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    return-object v1
.end method

.method public init(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "sceneWindow"    # Landroid/graphics/SurfaceTexture;
    .param p2, "sceneWindowWidth"    # I
    .param p3, "sceneWindowHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RendererCore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Lcom/meizu/media/render/RendererCoreHandler;

    .line 25
    iget-object v1, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/meizu/media/render/RendererCoreHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    .line 26
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/media/render/RendererCoreHandler;->initSceneWindow(Landroid/graphics/SurfaceTexture;II)V

    .line 29
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCore;->mRender:Lcom/meizu/media/render/BaseRender;

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/RendererCoreHandler;->setRender(Lcom/meizu/media/render/BaseRender;)V

    .line 30
    iput-object v2, p0, Lcom/meizu/media/render/RendererCore;->mRender:Lcom/meizu/media/render/BaseRender;

    .line 21
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 79
    iput-object v1, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iput-object v1, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    .line 76
    :cond_0
    return-void
.end method

.method public setRender(Lcom/meizu/media/render/BaseRender;)V
    .locals 1
    .param p1, "render"    # Lcom/meizu/media/render/BaseRender;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0, p1}, Lcom/meizu/media/render/RendererCoreHandler;->setRender(Lcom/meizu/media/render/BaseRender;)V

    .line 41
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/meizu/media/render/RendererCore;->mRender:Lcom/meizu/media/render/BaseRender;

    goto :goto_0
.end method

.method public setSceneSize(II)V
    .locals 1
    .param p1, "sceneWindowWidth"    # I
    .param p2, "sceneWindowHeight"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/media/render/RendererCoreHandler;->setSceneSize(II)V

    .line 34
    :cond_0
    return-void
.end method

.method public startup(Lcom/meizu/media/render/RendererCore;)V
    .locals 2
    .param p1, "sharedCore"    # Lcom/meizu/media/render/RendererCore;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    .line 52
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCoreHandler;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 51
    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/media/render/RendererCoreHandler;->startRender(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 49
    :cond_0
    return-void

    .line 53
    :cond_1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCoreHandler;->stopRender()V

    .line 70
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/meizu/media/render/RendererCore;->mRendererCoreHandler:Lcom/meizu/media/render/RendererCoreHandler;

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCoreHandler;->update()V

    .line 57
    :cond_0
    return-void
.end method
