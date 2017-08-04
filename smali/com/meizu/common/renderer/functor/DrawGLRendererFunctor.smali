.class public Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;
.super Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.source "DrawGLRendererFunctor.java"


# instance fields
.field private mCreated:Z

.field private mHeight:I

.field private mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

.field private mTrimLevel:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mCreated:Z

    .line 20
    iput v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mWidth:I

    .line 21
    iput v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mHeight:I

    const/16 v0, 0x14

    .line 24
    iput v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mTrimLevel:I

    .line 27
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    .line 28
    return-void
.end method


# virtual methods
.method protected onDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 11
    .param p1, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 39
    .local v0, "eglContext":Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 45
    .local v1, "gl10":Ljavax/microedition/khronos/opengles/GL10;
    iget-boolean v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mCreated:Z

    if-eqz v7, :cond_2

    .line 50
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 52
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 53
    .local v6, "width":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 54
    .local v2, "height":I
    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/16 v9, 0xc

    aget v8, v8, v9

    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 55
    .local v3, "left":I
    iget v7, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    iget-object v9, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/16 v10, 0xd

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 57
    .local v5, "top":I
    invoke-static {v3, v5, v6, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 59
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mWidth:I

    if-eq v7, v6, :cond_3

    .line 60
    :cond_0
    iput v6, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mWidth:I

    .line 61
    iput v2, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mHeight:I

    .line 62
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    iget v8, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mWidth:I

    iget v9, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mHeight:I

    invoke-interface {v7, v1, v8, v9}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 65
    :goto_1
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    invoke-interface {v7, v1}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .end local v1    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    .end local v2    # "height":I
    .end local v3    # "left":I
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "top":I
    .end local v6    # "width":I
    :cond_1
    const-string/jumbo v7, "glrenderer"

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No EGLContext "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    monitor-exit p0

    return-void

    .line 46
    .restart local v1    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mCreated:Z

    .line 47
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    .line 66
    .end local v0    # "eglContext":Ljavax/microedition/khronos/egl/EGLContext;
    .end local v1    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 59
    .restart local v0    # "eglContext":Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v1    # "gl10":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "height":I
    .restart local v3    # "left":I
    .restart local v4    # "r":Landroid/graphics/Rect;
    .restart local v5    # "top":I
    .restart local v6    # "width":I
    :cond_3
    :try_start_1
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, v2, :cond_0

    goto :goto_1
.end method

.method public setTrimLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/16 v0, 0x14

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 33
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mTrimLevel:I

    .line 34
    return-void
.end method

.method public trimResources(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->trimResources(IZ)V

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mTrimLevel:I

    if-ge p1, v0, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    .line 78
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mCreated:Z

    .line 75
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->mRenderer:Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    invoke-interface {v0, p2}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;->onSurfaceReleased(Z)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
