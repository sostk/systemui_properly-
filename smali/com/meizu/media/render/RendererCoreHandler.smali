.class public Lcom/meizu/media/render/RendererCoreHandler;
.super Landroid/os/Handler;
.source "RendererCoreHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/render/RendererCoreHandler$SceneSize;
    }
.end annotation


# instance fields
.field private final CONFIG_SPEC:[I

.field private mBaseRender:Lcom/meizu/media/render/BaseRender;

.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final mEGLThreadBlockVar:Landroid/os/ConditionVariable;

.field private mIsInitBaseRender:Z

.field private mIsRendering:Z

.field private mIsSizeChanged:Z

.field private mNewRender:Lcom/meizu/media/render/BaseRender;

.field private mSceneWindow:Landroid/graphics/SurfaceTexture;

.field private mSceneWindowHeight:I

.field private mSceneWindowWidth:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 42
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 43
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 45
    iput-boolean v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    .line 46
    iput-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    .line 47
    iput-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mNewRender:Lcom/meizu/media/render/BaseRender;

    .line 48
    iput-boolean v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsInitBaseRender:Z

    .line 49
    iput-boolean v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    .line 247
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->CONFIG_SPEC:[I

    .line 53
    return-void

    .line 247
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 252
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 253
    .local v5, "numConfig":[I
    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    aget v10, v5, v4

    .line 257
    .local v10, "numConfigs":I
    if-gtz v10, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 261
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v8, p0, Lcom/meizu/media/render/RendererCoreHandler;->CONFIG_SPEC:[I

    move-object v6, p1

    move-object v7, p2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private doCreateSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 239
    .local v0, "textures":[I
    array-length v1, v0

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 240
    new-instance v1, Landroid/graphics/SurfaceTexture;

    aget v2, v0, v3

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 241
    invoke-static {}, Lcom/meizu/media/render/RenderManager;->getInstance()Lcom/meizu/media/render/RenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/render/RenderManager;->getRendererContext()Lcom/meizu/media/render/RendererContext;

    move-result-object v1

    .line 242
    aget v2, v0, v3

    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 241
    invoke-virtual {v1, v2, v3}, Lcom/meizu/media/render/RendererContext;->setCameraPreviewTexture(ILandroid/graphics/SurfaceTexture;)V

    .line 237
    return-void
.end method

.method private doInitGL(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 8
    .param p1, "sharedContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 162
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 163
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 164
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_0

    .line 165
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "eglGetDisplay failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_0
    new-array v2, v5, [I

    .line 168
    .local v2, "version":[I
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "eglInitialize failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_1
    const/16 v3, 0x3098

    const/16 v4, 0x3038

    filled-new-array {v3, v5, v4}, [I

    move-result-object v0

    .line 172
    .local v0, "attribList":[I
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0, v3, v4}, Lcom/meizu/media/render/RendererCoreHandler;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 173
    .local v1, "eglConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 174
    if-nez p1, :cond_2

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 173
    .end local p1    # "sharedContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_2
    invoke-interface {v3, v4, v1, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 176
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v3, v4, :cond_4

    .line 177
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "failed to createContext"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 180
    iget-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindow:Landroid/graphics/SurfaceTexture;

    .line 179
    invoke-interface {v3, v4, v1, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 181
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 182
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "failed to createWindowSurface"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_6
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 185
    iget-object v7, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 184
    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 186
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "failed to eglMakeCurrent"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_7
    return-void
.end method

.method private doReleaseGL()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 216
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    invoke-virtual {v0}, Lcom/meizu/media/render/BaseRender;->onDestroyed()Z

    .line 219
    :cond_0
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    .line 220
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mNewRender:Lcom/meizu/media/render/BaseRender;

    .line 221
    iput-boolean v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsInitBaseRender:Z

    .line 222
    iput-boolean v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z

    .line 223
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 224
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 223
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 225
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 226
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 227
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 228
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 229
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 230
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 231
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 233
    iput-object v5, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 215
    :cond_1
    return-void
.end method

.method private doRender()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mNewRender:Lcom/meizu/media/render/BaseRender;

    if-eq v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    invoke-virtual {v0}, Lcom/meizu/media/render/BaseRender;->onDestroyed()Z

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mNewRender:Lcom/meizu/media/render/BaseRender;

    iput-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    .line 196
    iput-boolean v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsInitBaseRender:Z

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    if-eqz v0, :cond_4

    .line 199
    iget-boolean v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsInitBaseRender:Z

    if-nez v0, :cond_2

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsInitBaseRender:Z

    .line 201
    iput-boolean v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z

    .line 202
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    iget v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowWidth:I

    iget v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/render/BaseRender;->onCreated(II)Z

    .line 204
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z

    if-eqz v0, :cond_3

    .line 205
    iput-boolean v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z

    .line 206
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    .line 207
    iget v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowWidth:I

    iget v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowHeight:I

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/render/BaseRender;->onSizeChanged(II)Z

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mBaseRender:Lcom/meizu/media/render/BaseRender;

    invoke-virtual {v0}, Lcom/meizu/media/render/BaseRender;->onRender()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 190
    :cond_4
    return-void
.end method


# virtual methods
.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(I)V

    .line 83
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindow:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 98
    :goto_1
    return-void

    .line 102
    :pswitch_0
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iput-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindow:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    iget-object v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;

    .line 106
    .local v1, "size":Lcom/meizu/media/render/RendererCoreHandler$SceneSize;
    iget v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowWidth:I

    iget v3, v1, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->width:I

    if-ne v2, v3, :cond_1

    .line 107
    iget v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowHeight:I

    iget v3, v1, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->height:I

    if-eq v2, v3, :cond_0

    .line 108
    :cond_1
    iget v2, v1, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->width:I

    iput v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowWidth:I

    .line 109
    iget v2, v1, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;->height:I

    iput v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mSceneWindowHeight:I

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsSizeChanged:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    .end local v1    # "size":Lcom/meizu/media/render/RendererCoreHandler$SceneSize;
    :catchall_0
    move-exception v2

    .line 141
    iget-object v3, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 140
    throw v2

    .line 114
    :pswitch_2
    :try_start_4
    iget-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    if-nez v2, :cond_0

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    .line 116
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0, v2}, Lcom/meizu/media/render/RendererCoreHandler;->doInitGL(Ljavax/microedition/khronos/egl/EGLContext;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    if-eqz v2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/meizu/media/render/RendererCoreHandler;->doRender()V

    goto :goto_0

    .line 125
    :pswitch_4
    iget-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    if-eqz v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/meizu/media/render/RendererCoreHandler;->doReleaseGL()V

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    goto :goto_0

    .line 131
    :pswitch_5
    iget-boolean v2, p0, Lcom/meizu/media/render/RendererCoreHandler;->mIsRendering:Z

    if-eqz v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/meizu/media/render/RendererCoreHandler;->doCreateSurfaceTexture()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initSceneWindow(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "sceneWindow"    # Landroid/graphics/SurfaceTexture;
    .param p2, "sceneWindowWidth"    # I
    .param p3, "sceneWindowHeight"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(ILjava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;

    invoke-direct {v0, p0, p2, p3}, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;-><init>(Lcom/meizu/media/render/RendererCoreHandler;II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public sendMessageAsync(I)V
    .locals 0
    .param p1, "msg"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/meizu/media/render/RendererCoreHandler;->sendEmptyMessage(I)Z

    .line 157
    return-void
.end method

.method public sendMessageSync(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/meizu/media/render/RendererCoreHandler;->sendEmptyMessage(I)Z

    .line 148
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 145
    return-void
.end method

.method public sendMessageSync(ILjava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/render/RendererCoreHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    iget-object v0, p0, Lcom/meizu/media/render/RendererCoreHandler;->mEGLThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 151
    return-void
.end method

.method public setRender(Lcom/meizu/media/render/BaseRender;)V
    .locals 0
    .param p1, "render"    # Lcom/meizu/media/render/BaseRender;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/media/render/RendererCoreHandler;->mNewRender:Lcom/meizu/media/render/BaseRender;

    .line 69
    return-void
.end method

.method public setSceneSize(II)V
    .locals 2
    .param p1, "sceneWindowWidth"    # I
    .param p2, "sceneWindowHeight"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/media/render/RendererCoreHandler$SceneSize;-><init>(Lcom/meizu/media/render/RendererCoreHandler;II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public startRender(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .param p1, "sharedContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 74
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public stopRender()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageSync(I)V

    .line 89
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/RendererCoreHandler;->sendMessageAsync(I)V

    .line 77
    return-void
.end method
