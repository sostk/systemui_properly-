.class public Lcom/meizu/common/renderer/effect/texture/RawTexture;
.super Lcom/meizu/common/renderer/effect/texture/Texture;
.source "RawTexture.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v0, 0x1908

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(III)V

    .line 21
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->setSize(II)V

    const/16 v0, 0x1907

    .line 15
    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->setOpaque(Z)V

    .line 16
    iput p3, p0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->mFormat:I

    .line 17
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 15
    goto :goto_0
.end method


# virtual methods
.method protected upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 10
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->sTextureId:[I

    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 27
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->getTarget()I

    move-result v0

    sget-object v2, Lcom/meizu/common/renderer/effect/texture/RawTexture;->sTextureId:[I

    aget v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->initTexParameter(II)V

    const/16 v0, 0xde1

    .line 29
    iget v2, p0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->mFormat:I

    .line 33
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->getWidth()I

    move-result v3

    .line 34
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->mFormat:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    .line 29
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 39
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/RawTexture;->mId:I

    .line 40
    invoke-virtual {p0, p1, v9}, Lcom/meizu/common/renderer/effect/texture/RawTexture;->setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V

    goto :goto_0
.end method
