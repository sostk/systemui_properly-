.class public Lcom/meizu/common/renderer/effect/FrameBufferPool;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "FrameBufferPool.java"


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/meizu/common/renderer/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    .line 13
    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    .line 14
    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    return-void
.end method

.method private addNew(Lcom/meizu/common/renderer/effect/FrameBuffer;)V
    .locals 2
    .param p1, "frameBuffer"    # Lcom/meizu/common/renderer/effect/FrameBuffer;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    iget v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 66
    return-void
.end method

.method private removeLocation(I)V
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 70
    .local v0, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 71
    return-void
.end method

.method private removeOldest(Z)V
    .locals 3
    .param p1, "hasEglContext"    # Z

    .prologue
    .line 74
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 75
    .local v0, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 76
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->releaseResources(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hasEglContext"    # Z

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get(IIZZ)Lcom/meizu/common/renderer/effect/FrameBuffer;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # Z
    .param p4, "hasEglContext"    # Z

    .prologue
    .line 26
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    const/4 v4, -0x1

    .line 29
    .local v4, "location":I
    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    :goto_1
    const/4 v5, -0x1

    .line 37
    if-ne v4, v5, :cond_3

    .line 41
    new-instance v2, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-direct {v2, p1, p2, p3}, Lcom/meizu/common/renderer/effect/FrameBuffer;-><init>(IIZ)V

    .local v2, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    move-object v1, v2

    .line 43
    .end local v2    # "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    .local v1, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    :goto_2
    monitor-exit p0

    return-object v1

    .line 30
    .local v1, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getWidth()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 29
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 30
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    .line 31
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getHeight()I

    move-result v5

    if-ne v5, p2, :cond_1

    iget-object v5, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    .line 32
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getDepth()Z

    move-result v5

    if-ne v5, p3, :cond_1

    .line 33
    move v4, v3

    goto :goto_1

    .line 38
    :cond_3
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-object v1, v0

    .line 39
    .local v1, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    invoke-direct {p0, v4}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->removeLocation(I)V

    goto :goto_2

    .line 43
    .end local v1    # "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V
    .locals 3
    .param p1, "frameBuffer"    # Lcom/meizu/common/renderer/effect/FrameBuffer;
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->resetTextureBounds()V

    .line 51
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->addNew(Lcom/meizu/common/renderer/effect/FrameBuffer;)V

    .line 57
    :goto_1
    iget v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    iget v2, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    if-gt v1, v2, :cond_3

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 52
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_2
    monitor-exit p0

    return-void

    .line 58
    :cond_3
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->removeOldest(Z)V

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resize(I)V
    .locals 2
    .param p1, "sizeM"    # I

    .prologue
    const/16 v0, 0x80

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 18
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    .line 19
    return-void
.end method

.method public trimResources(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    .line 82
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    .line 86
    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/meizu/common/renderer/effect/FrameBuffer;->trimResources(IZ)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
