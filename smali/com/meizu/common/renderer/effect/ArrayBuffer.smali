.class public Lcom/meizu/common/renderer/effect/ArrayBuffer;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "ArrayBuffer.java"


# instance fields
.field protected mBufferID:[I

.field protected mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;Ljava/nio/FloatBuffer;)V
    .locals 4
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;
    .param p2, "buffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const v3, 0x8892

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 14
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    .line 18
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 19
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 21
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x88e4

    .line 20
    invoke-static {v3, v0, p2, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 24
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 25
    return-void
.end method


# virtual methods
.method public bindSelf()V
    .locals 3

    .prologue
    const v0, 0x8892

    .line 41
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v0, 0x50

    .line 47
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/ArrayBuffer;->trimResources(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/Resource;->finalize()V

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 49
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/Resource;->finalize()V

    throw v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public trimResources(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/ArrayBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteBuffer(IZ)V

    .line 35
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mBufferID:[I

    aput v2, v0, v2

    .line 36
    iput-object v3, p0, Lcom/meizu/common/renderer/effect/ArrayBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_0
.end method
