.class public Lcom/meizu/media/render/GraphLayer;
.super Ljava/lang/Object;
.source "GraphLayer.java"


# instance fields
.field protected mFrameBuffer:I

.field protected mGraphTexture:Lcom/meizu/media/render/gles/GLTexture;

.field protected mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

.field protected mRender:Lcom/meizu/media/render/GraphRender;


# virtual methods
.method public getOutputTexture()Lcom/meizu/media/render/gles/GLTexture;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLTexture;->recyle()V

    .line 52
    iput-object v1, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mGraphTexture:Lcom/meizu/media/render/gles/GLTexture;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mGraphTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLTexture;->recyle()V

    .line 56
    iput-object v1, p0, Lcom/meizu/media/render/GraphLayer;->mGraphTexture:Lcom/meizu/media/render/gles/GLTexture;

    .line 49
    :cond_1
    return-void
.end method

.method public render(F)V
    .locals 7
    .param p1, "scale"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    iget v0, p0, Lcom/meizu/media/render/GraphLayer;->mFrameBuffer:I

    iget-object v1, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v1}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/media/render/gles/GLES20Utils;->setFramebuffer(II)V

    .line 42
    invoke-static {v3, v3, v3, v3}, Lcom/meizu/media/render/gles/GLES20Utils;->clear(FFFF)V

    .line 43
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mRender:Lcom/meizu/media/render/GraphRender;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/meizu/media/render/GraphLayer;->mRender:Lcom/meizu/media/render/GraphRender;

    iget-object v1, p0, Lcom/meizu/media/render/GraphLayer;->mGraphTexture:Lcom/meizu/media/render/gles/GLTexture;

    iget-object v3, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v3}, Lcom/meizu/media/render/gles/GLTexture;->getWidth()I

    move-result v4

    .line 45
    iget-object v3, p0, Lcom/meizu/media/render/GraphLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v3}, Lcom/meizu/media/render/gles/GLTexture;->getHeight()I

    move-result v5

    move v3, v2

    move v6, p1

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/media/render/GraphRender;->doRender(Lcom/meizu/media/render/gles/GLTexture;IIIIF)V

    .line 40
    :cond_0
    return-void
.end method
