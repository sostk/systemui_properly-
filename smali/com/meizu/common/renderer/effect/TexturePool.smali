.class public Lcom/meizu/common/renderer/effect/TexturePool;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "TexturePool.java"


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/meizu/common/renderer/effect/texture/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    return-void
.end method

.method private addNew(Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 77
    return-void
.end method

.method private removeLocation(I)V
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 81
    .local v0, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    iget v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 82
    return-void
.end method

.method private removeOldest(Z)V
    .locals 3
    .param p1, "hasEglContext"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 86
    .local v0, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    iget v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 87
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->releaseResources(Z)V

    .line 88
    return-void
.end method


# virtual methods
.method public get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "hasEglContext"    # Z

    .prologue
    .line 28
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    const/4 v2, -0x1

    .line 31
    .local v2, "location":I
    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    :goto_1
    const/4 v5, -0x1

    .line 40
    if-ne v2, v5, :cond_4

    const v5, 0x881a

    .line 43
    if-ne p3, v5, :cond_5

    .line 45
    :cond_0
    new-instance v4, Lcom/meizu/common/renderer/effect/texture/StorageTexture;

    invoke-direct {v4, p1, p2, p3}, Lcom/meizu/common/renderer/effect/texture/StorageTexture;-><init>(III)V

    .local v4, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    move-object v3, v4

    .line 50
    .end local v4    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :goto_2
    monitor-exit p0

    return-object v3

    .line 32
    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v5

    if-eq v5, p1, :cond_3

    .line 31
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 32
    :cond_3
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    .line 33
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    .line 34
    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v5}, Lcom/meizu/common/renderer/effect/texture/Texture;->getFormat()I

    move-result v5

    if-ne v5, p3, :cond_2

    .line 35
    move v2, v1

    goto :goto_1

    .line 41
    :cond_4
    iget-object v5, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/meizu/common/renderer/effect/texture/Texture;

    move-object v3, v0

    .line 42
    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    invoke-direct {p0, v2}, Lcom/meizu/common/renderer/effect/TexturePool;->removeLocation(I)V

    goto :goto_2

    .line 50
    .end local v1    # "i":I
    .end local v3    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :catchall_0
    move-exception v5

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "i":I
    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :cond_5
    const v5, 0x8814

    .line 43
    if-eq p3, v5, :cond_0

    .line 47
    :try_start_1
    new-instance v4, Lcom/meizu/common/renderer/effect/texture/RawTexture;

    invoke-direct {v4, p1, p2, p3}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    move-object v3, v4

    .end local v4    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .local v3, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    goto :goto_2
.end method

.method public get(IIZ)Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hasEglContext"    # Z

    .prologue
    const/16 v0, 0x1908

    .line 55
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V
    .locals 3
    .param p1, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->resetBounds()V

    .line 62
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/TexturePool;->addNew(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 68
    :goto_1
    iget v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    iget v2, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mMaxSize:I

    if-gt v1, v2, :cond_3

    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 60
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 62
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 64
    :cond_2
    monitor-exit p0

    return-void

    .line 69
    :cond_3
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/effect/TexturePool;->removeOldest(Z)V

    goto :goto_1

    .line 71
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

    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 24
    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mMaxSize:I

    .line 25
    return-void
.end method

.method public trimResources(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->trimResources(IZ)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
