.class public Lcom/meizu/media/render/BlurLayer;
.super Ljava/lang/Object;
.source "BlurLayer.java"


# instance fields
.field private mAlphaBlender:Lcom/meizu/media/render/AlphaBlenderRender;

.field private final mBlurTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/media/render/gles/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBuffer:I

.field private mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;


# virtual methods
.method public getOutputTexture()Lcom/meizu/media/render/gles/GLTexture;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v2}, Lcom/meizu/media/render/gles/GLTexture;->recyle()V

    .line 78
    iput-object v3, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    .line 80
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mBlurTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mBlurTextures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/render/gles/GLTexture;

    .line 82
    .local v1, "texture":Lcom/meizu/media/render/gles/GLTexture;
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/meizu/media/render/gles/GLTexture;->recyle()V

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "texture":Lcom/meizu/media/render/gles/GLTexture;
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mBlurTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 75
    return-void
.end method

.method public render(I)V
    .locals 10
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 59
    iget v0, p0, Lcom/meizu/media/render/BlurLayer;->mFrameBuffer:I

    iget-object v1, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v1}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/media/render/gles/GLES20Utils;->setFramebuffer(II)V

    .line 61
    const v8, 0x3dcccccd    # 0.1f

    .line 62
    .local v8, "ceilStep":F
    div-int/lit8 v9, p1, 0xa

    .line 63
    .local v9, "id":I
    mul-int/lit8 v0, v9, 0xa

    sub-int v0, p1, v0

    int-to-float v0, v0

    mul-float v7, v0, v8

    .line 64
    .local v7, "alpha":F
    iget-object v0, p0, Lcom/meizu/media/render/BlurLayer;->mAlphaBlender:Lcom/meizu/media/render/AlphaBlenderRender;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/meizu/media/render/BlurLayer;->mAlphaBlender:Lcom/meizu/media/render/AlphaBlenderRender;

    iget-object v1, p0, Lcom/meizu/media/render/BlurLayer;->mBlurTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/render/gles/GLTexture;

    .line 66
    iget-object v2, p0, Lcom/meizu/media/render/BlurLayer;->mBlurTextures:Ljava/util/ArrayList;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/render/gles/GLTexture;

    iget-object v4, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v4}, Lcom/meizu/media/render/gles/GLTexture;->getWidth()I

    move-result v5

    .line 67
    iget-object v4, p0, Lcom/meizu/media/render/BlurLayer;->mOutputTexture:Lcom/meizu/media/render/gles/GLTexture;

    invoke-virtual {v4}, Lcom/meizu/media/render/gles/GLTexture;->getHeight()I

    move-result v6

    move v4, v3

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/meizu/media/render/AlphaBlenderRender;->render(Lcom/meizu/media/render/gles/GLTexture;Lcom/meizu/media/render/gles/GLTexture;IIIIF)V

    .line 58
    :cond_0
    return-void
.end method
