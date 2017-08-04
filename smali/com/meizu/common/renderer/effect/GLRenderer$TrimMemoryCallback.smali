.class Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
.super Lcom/meizu/common/renderer/functor/InvokeFunctor;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrimMemoryCallback"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;-><init>()V

    .line 175
    iput p1, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    .line 176
    return-void
.end method


# virtual methods
.method protected onInvoke(I)V
    .locals 6
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 181
    :try_start_0
    sget-boolean v2, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    if-nez v2, :cond_0

    .line 183
    :goto_0
    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    const/16 v4, 0x50

    if-lt v2, v4, :cond_1

    .line 184
    .local v1, "hasEglContext":Z
    :goto_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$200()Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    move-result-object v0

    .line 186
    .local v0, "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    if-nez v0, :cond_2

    .line 190
    :goto_2
    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-static {v2, v1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->freeAllFunctorResouces(IZ)V

    .line 191
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$300()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v2

    if-nez v2, :cond_3

    .line 194
    :goto_3
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$400()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v2

    if-nez v2, :cond_4

    .line 197
    :goto_4
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$500()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v2

    if-nez v2, :cond_5

    .line 201
    :goto_5
    if-eqz v1, :cond_6

    .line 205
    :goto_6
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/renderer/effect/GLRecycler;->clearGarbage(Z)V

    .line 206
    monitor-exit v3

    .line 207
    return-void

    .end local v0    # "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .end local v1    # "hasEglContext":Z
    :cond_0
    const-string/jumbo v2, "glrenderer"

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trimResources level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/4 v1, 0x1

    .line 183
    goto :goto_1

    .line 187
    .restart local v0    # "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .restart local v1    # "hasEglContext":Z
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v0, v2, v1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->trimResources(IZ)V

    goto :goto_2

    .line 192
    :cond_3
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$300()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v2

    iget v4, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v2, v4, v1}, Lcom/meizu/common/renderer/effect/TexturePool;->trimResources(IZ)V

    goto :goto_3

    .line 195
    :cond_4
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$400()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v2

    iget v4, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v2, v4, v1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->trimResources(IZ)V

    goto :goto_4

    .line 198
    :cond_5
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$500()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v2

    iget v4, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v2, v4, v1}, Lcom/meizu/common/renderer/effect/TextureCache;->trimResources(IZ)V

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 202
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$202(Lcom/meizu/common/renderer/effect/GLCanvasImpl;)Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    const/4 v2, 0x0

    .line 203
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$602(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method
