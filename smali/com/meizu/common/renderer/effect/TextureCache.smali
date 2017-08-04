.class public Lcom/meizu/common/renderer/effect/TextureCache;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "TextureCache.java"


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/renderer/effect/texture/BitmapTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 40
    new-instance v0, Lcom/meizu/common/renderer/effect/TextureCache$1;

    const/high16 v1, 0x2000000

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/renderer/effect/TextureCache$1;-><init>(Lcom/meizu/common/renderer/effect/TextureCache;I)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/TextureCache;->mCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/Bitmap;)Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 17
    if-nez p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/TextureCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;

    .line 20
    .local v1, "texture":Lcom/meizu/common/renderer/effect/texture/BitmapTexture;
    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getGenerationId()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 27
    :goto_0
    return-object v1

    .line 21
    :cond_2
    new-instance v1, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;

    .end local v1    # "texture":Lcom/meizu/common/renderer/effect/texture/BitmapTexture;
    invoke-direct {v1, p1}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .restart local v1    # "texture":Lcom/meizu/common/renderer/effect/texture/BitmapTexture;
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/TextureCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "glrenderer"

    const-string/jumbo v3, "bitmap generation is changed"

    .line 24
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v1, p1}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public resize(I)V
    .locals 2
    .param p1, "sizeM"    # I

    .prologue
    const/16 v0, 0x80

    .line 31
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 32
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TextureCache;->mCache:Landroid/util/LruCache;

    mul-int/lit16 v1, p1, 0x400

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->resize(I)V

    .line 33
    return-void
.end method

.method public trimResources(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TextureCache;->mCache:Landroid/util/LruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 38
    return-void
.end method
