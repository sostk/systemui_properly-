.class public Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "DrawGLFunctor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "glrenderer"

.field public static final kModeDraw:I = 0x0

.field public static final kModeProcess:I = 0x1

.field public static final kModeProcessNoContext:I = 0x2

.field public static final kModeSync:I = 0x3

.field private static sDrawGLFunctors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/renderer/functor/DrawGLFunctor;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sIsLibInitialized:Z

.field protected static sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

.field protected static sMethod_invokeFunctor:Ljava/lang/reflect/Method;


# instance fields
.field protected mAlpha:I

.field protected mEffectKey:Ljava/lang/String;

.field protected mNativeFunctor:J

.field private mNativeFunctorObject:[Ljava/lang/Object;

.field protected mSourceBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sIsLibInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    const-string/jumbo v0, "__none"

    .line 55
    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mEffectKey:Ljava/lang/String;

    const/16 v0, 0xff

    .line 56
    iput v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mAlpha:I

    .line 59
    invoke-static {}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->initLibrary()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->native_create(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    .line 61
    iget-wide v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/meizu/common/renderer/RendererUtils;->assertTrue(Z)V

    .line 62
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctorObject:[Ljava/lang/Object;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctorObject:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v2

    .line 68
    :goto_1
    sget-object v1, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctorObject:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-wide v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    long-to-int v3, v4

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static freeAllFunctorResouces(IZ)V
    .locals 10
    .param p0, "level"    # I
    .param p1, "hasEglConext"    # Z

    .prologue
    .line 103
    sget-object v6, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .line 105
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "removeKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 117
    return-void

    .line 107
    :cond_0
    sget-object v6, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    sget-object v7, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 108
    .local v1, "refFunctor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/meizu/common/renderer/functor/DrawGLFunctor;>;"
    if-nez v1, :cond_2

    .line 111
    :cond_1
    sget-object v6, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 109
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    invoke-virtual {v6, p0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->trimResources(IZ)V

    goto :goto_2

    .line 114
    .end local v1    # "refFunctor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/meizu/common/renderer/functor/DrawGLFunctor;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 115
    .local v2, "key":J
    sget-object v6, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sDrawGLFunctors:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1
.end method

.method private static init()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    .line 179
    invoke-static {}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->native_init()V

    const/4 v0, 0x0

    .line 182
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "android.view.DisplayListCanvas"

    .line 192
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "callDrawGLFunction2"

    const/4 v3, 0x1

    .line 193
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

    .line 197
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_3

    .line 205
    :goto_1
    return-void

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v2, "android.view.HardwareCanvas"

    .line 183
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 186
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v6, :cond_2

    const-string/jumbo v2, "callDrawGLFunction2"

    const/4 v3, 0x1

    .line 189
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "glrenderer"

    const-string/jumbo v3, "DrawGLFunctor init fail"

    .line 203
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "callDrawGLFunction"

    const/4 v3, 0x1

    .line 185
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "callDrawGLFunction"

    const/4 v3, 0x1

    .line 187
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.view.ThreadedRenderer"

    .line 198
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "invokeFunctor"

    const/4 v3, 0x2

    .line 199
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_invokeFunctor:Ljava/lang/reflect/Method;

    .line 200
    sget-object v2, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_invokeFunctor:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static declared-synchronized initLibrary()V
    .locals 2

    .prologue
    const-class v1, Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-boolean v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sIsLibInitialized:Z

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->loadLibraryIfNeeded()V

    .line 174
    invoke-static {}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->init()V

    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sIsLibInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 176
    return-void

    :cond_0
    monitor-exit v1

    .line 172
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_create(Ljava/lang/Object;)J
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation
.end method

.method private native native_destory(J)V
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation
.end method

.method private static native native_init()V
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;
    .param p2, "what"    # I
    .annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/renderer/functor/DrawGLFunctor;",
            ">;",
            "Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "functor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/meizu/common/renderer/functor/DrawGLFunctor;>;"
    if-nez p0, :cond_1

    .line 226
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    .line 228
    .local v0, "d":Lcom/meizu/common/renderer/functor/DrawGLFunctor;
    if-nez p1, :cond_2

    .line 231
    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->onInvoke(I)V

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_2
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->onDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "glrenderer"

    const-string/jumbo v1, "DrawGLFunctor only can use in hardware accelerated"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->drawFunctorInternal(Landroid/graphics/Canvas;)Z

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "glrenderer"

    const-string/jumbo v1, "DrawGLFunctor only can use in hardware accelerated"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->drawFunctorInternal(Landroid/graphics/Canvas;)Z

    goto :goto_0
.end method

.method protected drawFunctorInternal(Landroid/graphics/Canvas;)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    iget-wide v2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 93
    :cond_1
    :try_start_0
    sget-object v1, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->sMethod_callDrawGLFunction:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctorObject:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "glrenderer"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invoke callDrawGLFunction e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    :try_start_0
    iget-wide v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->trimResources(IZ)V

    .line 212
    iget-wide v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->native_destory(J)V

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mNativeFunctor:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/Resource;->finalize()V

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    .line 216
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/Resource;->finalize()V

    throw v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mAlpha:I

    return v0
.end method

.method public getEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/Render;
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mEffectKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public isBlend(Lcom/meizu/common/renderer/effect/texture/Texture;)Z
    .locals 3
    .param p1, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    const/4 v0, 0x0

    .line 142
    iget v1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mAlpha:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected onDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 11
    .param p1, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 151
    sget-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_FUNCTOR:Z

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "viewport: [%d, %d]"

    .line 153
    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 153
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "source:[%d, %d, %d, %d]"

    .line 155
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 155
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "clip:[%d, %d, %d, %d]"

    .line 158
    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipLeft:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipTop:I

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipRight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipBottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 158
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "transform: "

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 162
    .local v0, "i":I
    :goto_1
    if-lt v0, v7, :cond_1

    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "glrenderer"

    const-string/jumbo v2, "[%.1f, %.1f, %.1f, %.1f]"

    .line 163
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    add-int/lit8 v5, v0, 0x0

    aget v4, v4, v5

    .line 164
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    add-int/lit8 v5, v0, 0x4

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    add-int/lit8 v5, v0, 0x8

    aget v4, v4, v5

    .line 165
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    add-int/lit8 v5, v0, 0xc

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v10

    .line 163
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onInvoke(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 147
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mAlpha:I

    .line 135
    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mEffectKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public trimResources(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 146
    return-void
.end method
