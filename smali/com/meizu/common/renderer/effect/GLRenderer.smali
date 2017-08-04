.class public Lcom/meizu/common/renderer/effect/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;,
        Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_BLUR:Z

.field public static final DEBUG_FUNCTOR:Z

.field public static final DEBUG_RESOURCE:Z

.field public static final DENSITY:I

.field public static final TAG:Ljava/lang/String; = "glrenderer"

.field public static final TRIM_MEMORY_COMPLETE:I = 0x50

.field public static final TRIM_MEMORY_MODERATE:I = 0x3c

.field public static final TRIM_MEMORY_UI_HIDDEN:I = 0x14

.field private static sAppContext:Landroid/app/Application;

.field private static sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

.field private static sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

.field private static sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

.field private static sInitialized:Z

.field private static sLibraryName:Ljava/lang/String;

.field private static final sSync:Ljava/lang/Object;

.field private static sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

.field private static sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

.field private static sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

.field private static sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

.field private static sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "sys.debug.glrenderer_blur"

    .line 26
    invoke-static {v0, v2}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    const-string/jumbo v0, "sys.debug.glrenderer_functor"

    .line 27
    invoke-static {v0, v2}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_FUNCTOR:Z

    const-string/jumbo v0, "sys.debug.glrenderer_resource"

    .line 28
    invoke-static {v0, v2}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0x1e0

    .line 32
    invoke-static {v0, v1}, Lcom/meizu/common/renderer/SystemProperty;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const-string/jumbo v0, "glrenderer"

    .line 34
    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    .line 35
    sput-boolean v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    .line 48
    new-instance v0, Lcom/meizu/common/renderer/effect/GLRecycler;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/GLRecycler;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .prologue
    .line 23
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method static synthetic access$200()Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/renderer/effect/GLCanvasImpl;)Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    .prologue
    .line 23
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    return-object p0
.end method

.method static synthetic access$300()Lcom/meizu/common/renderer/effect/TexturePool;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    return-object v0
.end method

.method static synthetic access$400()Lcom/meizu/common/renderer/effect/FrameBufferPool;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    return-object v0
.end method

.method static synthetic access$500()Lcom/meizu/common/renderer/effect/TextureCache;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    return-object v0
.end method

.method static synthetic access$602(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 23
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    return v0
.end method

.method static synthetic access$800()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .prologue
    .line 23
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method static synthetic access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .prologue
    .line 23
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    return-object v0
.end method

.method public static getBitmapTextureCache()Lcom/meizu/common/renderer/effect/TextureCache;
    .locals 4

    .prologue
    .line 131
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    return-object v0

    .line 132
    :cond_0
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    new-instance v0, Lcom/meizu/common/renderer/effect/TextureCache;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/TextureCache;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    .line 134
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    sget v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const/16 v3, 0x280

    if-lt v0, v3, :cond_1

    const/16 v0, 0x48

    :goto_1
    invoke-virtual {v2, v0}, Lcom/meizu/common/renderer/effect/TextureCache;->resize(I)V

    .line 135
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/16 v0, 0x2a

    .line 134
    goto :goto_1
.end method

.method public static getCanvas()Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_0
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 84
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    if-nez v0, :cond_0

    .line 90
    monitor-exit v2

    return-object v1

    .line 85
    :cond_0
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    if-eqz v1, :cond_1

    .line 88
    :goto_0
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    monitor-exit v2

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    invoke-direct {v1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;-><init>()V

    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    sget-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 99
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_2

    .line 107
    :goto_0
    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 108
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    monitor-exit v2

    return-object v1

    .line 96
    .end local v0    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_0
    monitor-exit v2

    return-object v4

    .restart local v0    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_1
    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v3, "This thread is no EGLContext."

    .line 100
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v2

    return-object v4

    .line 104
    :cond_2
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/meizu/common/renderer/RendererUtils;->assertTrue(Z)V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;
    .locals 4

    .prologue
    .line 143
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    return-object v0

    .line 144
    :cond_0
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    new-instance v0, Lcom/meizu/common/renderer/effect/FrameBufferPool;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/FrameBufferPool;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    .line 146
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    sget v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const/16 v3, 0x280

    if-lt v0, v3, :cond_1

    const/16 v0, 0x3c

    :goto_1
    invoke-virtual {v2, v0}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->resize(I)V

    .line 147
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/16 v0, 0x20

    .line 146
    goto :goto_1
.end method

.method public static getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 116
    return-object v1

    .line 114
    :cond_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;
    .locals 4

    .prologue
    .line 121
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    return-object v0

    .line 122
    :cond_0
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    new-instance v0, Lcom/meizu/common/renderer/effect/TexturePool;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/TexturePool;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    .line 124
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    sget v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const/16 v3, 0x280

    if-lt v0, v3, :cond_1

    const/16 v0, 0x3c

    :goto_1
    invoke-virtual {v2, v0}, Lcom/meizu/common/renderer/effect/TexturePool;->resize(I)V

    .line 125
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/16 v0, 0x20

    .line 124
    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/common/renderer/effect/GLRenderer;->initialize(Landroid/content/Context;Z)V

    .line 54
    return-void
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayed"    # Z

    .prologue
    .line 57
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    .line 60
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    new-instance v2, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;-><init>(Lcom/meizu/common/renderer/effect/GLRenderer$1;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 61
    if-eqz p1, :cond_1

    .line 64
    :goto_0
    monitor-exit v1

    .line 65
    return-void

    .line 58
    :cond_0
    monitor-exit v1

    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->loadLibraryIfNeeded()V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static invokeFunctor(Lcom/meizu/common/renderer/functor/InvokeFunctor;)V
    .locals 0
    .param p0, "functor"    # Lcom/meizu/common/renderer/functor/InvokeFunctor;

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invoke()V

    goto :goto_0
.end method

.method public static loadLibraryIfNeeded()V
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 72
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    if-eqz v0, :cond_1

    .line 76
    :goto_0
    monitor-exit v1

    .line 77
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Please call it after initialize. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_1
    :try_start_1
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static setLibraryName(Ljava/lang/String;)V
    .locals 0
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 161
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    .line 162
    return-void
.end method
