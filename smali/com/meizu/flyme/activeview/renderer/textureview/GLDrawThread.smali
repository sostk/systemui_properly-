.class Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GLDrawThread"

.field private static THREAD_SLEEP_TIME:I

.field private static lock1:Ljava/lang/Object;


# instance fields
.field private ISVISIBIE:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field private mHandler:Landroid/os/Handler;

.field private mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

.field private mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->lock1:Ljava/lang/Object;

    const/4 v0, 0x5

    .line 165
    sput v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->THREAD_SLEEP_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "renderer"    # Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;
    .param p3, "shouldRender"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 157
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 158
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 159
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->ISVISIBIE:Z

    .line 207
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 208
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    .line 209
    iput-object p3, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    iput-object p4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method private destoryGL()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 271
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 272
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 273
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 274
    return-void
.end method

.method public static getSleepTime()I
    .locals 1

    .prologue
    .line 203
    sget v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->THREAD_SLEEP_TIME:I

    return v0
.end method

.method private initGL()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 214
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 216
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 217
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_1

    .line 221
    new-array v8, v11, [I

    .line 222
    .local v8, "version":[I
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    .line 226
    new-array v2, v0, [I

    const/16 v0, 0x3020

    aput v0, v2, v10

    const/16 v0, 0x20

    aput v0, v2, v4

    const/16 v0, 0x3021

    aput v0, v2, v11

    const/4 v0, 0x3

    aput v9, v2, v0

    const/16 v0, 0x3022

    aput v0, v2, v12

    const/4 v0, 0x5

    aput v9, v2, v0

    const/4 v0, 0x6

    const/16 v1, 0x3023

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v9, v2, v0

    const/16 v0, 0x3024

    aput v0, v2, v9

    const/16 v0, 0x9

    aput v9, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v12, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3033

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v12, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 239
    .local v2, "configAttribs":[I
    new-array v5, v4, [I

    .line 240
    .local v5, "numConfigs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 241
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 246
    new-array v6, v0, [I

    const/16 v0, 0x3098

    aput v0, v6, v10

    aput v11, v6, v4

    const/16 v0, 0x3038

    aput v0, v6, v11

    .line 250
    .local v6, "contextAttribs":[I
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v10

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 251
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v10

    iget-object v9, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v10, 0x0

    invoke-interface {v0, v1, v4, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 252
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    .local v7, "error":I
    const/16 v0, 0x300b

    .line 254
    if-eq v7, v0, :cond_5

    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglCreateWindowSurface failed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    .end local v2    # "configAttribs":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "numConfigs":[I
    .end local v6    # "contextAttribs":[I
    .end local v7    # "error":I
    .end local v8    # "version":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglGetdisplay failed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    .restart local v8    # "version":[I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglInitialize failed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    .restart local v2    # "configAttribs":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v5    # "numConfigs":[I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglChooseConfig failed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    .restart local v6    # "contextAttribs":[I
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 267
    return-void

    .line 255
    .restart local v7    # "error":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    .end local v7    # "error":I
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglMakeCurrent failed : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSleepTime(I)V
    .locals 0
    .param p0, "time"    # I

    .prologue
    .line 199
    sput p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->THREAD_SLEEP_TIME:I

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->initGL()V

    .line 174
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    if-nez v0, :cond_1

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_2

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->destoryGL()V

    .line 196
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    iget v1, v1, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mWidth:I

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    iget v2, v2, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->renderInit(II)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    if-nez v0, :cond_3

    .line 190
    :goto_1
    :try_start_0
    sget v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->THREAD_SLEEP_TIME:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0

    .line 181
    :cond_3
    sget-object v1, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->lock1:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mRenderer:Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->drawFrame()V

    .line 183
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 184
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->ISVISIBIE:Z

    if-eqz v0, :cond_4

    .line 188
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 185
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->ISVISIBIE:Z

    .line 186
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
