.class public Lcom/meizu/common/renderer/effect/texture/BitmapTexture;
.super Lcom/meizu/common/renderer/effect/texture/Texture;
.source "BitmapTexture.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mContentChanged:Z

.field protected mGenerationID:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mGenerationID:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getBytes()I
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mFormat:I

    const/16 v2, 0x1908

    if-eq v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mGenerationID:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    if-nez p1, :cond_2

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/meizu/common/renderer/RendererUtils;->assertTrue(Z)V

    .line 26
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_3

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mGenerationID:I

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->setSize(II)V

    .line 31
    iput-boolean v1, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mContentChanged:Z

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    const/16 v0, 0x1908

    :goto_1
    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mFormat:I

    .line 36
    :goto_2
    return-void

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v0

    iget v2, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mGenerationID:I

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_4
    const v0, 0x8d62

    .line 32
    goto :goto_1
.end method

.method protected upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/16 v5, 0xde1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mContentChanged:Z

    if-nez v0, :cond_2

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->sTextureId:[I

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 47
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getTarget()I

    move-result v0

    sget-object v1, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->sTextureId:[I

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->initTexParameter(II)V

    .line 48
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mId:I

    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 50
    iput-object v3, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p0, p1, v4}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V

    .line 52
    iput-boolean v2, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mContentChanged:Z

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getTarget()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v2, v2, v2, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 56
    iput-object v3, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    iput-boolean v2, p0, Lcom/meizu/common/renderer/effect/texture/BitmapTexture;->mContentChanged:Z

    goto :goto_0
.end method
