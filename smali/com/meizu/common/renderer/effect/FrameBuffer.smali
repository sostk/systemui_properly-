.class public Lcom/meizu/common/renderer/effect/FrameBuffer;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "FrameBuffer.java"


# instance fields
.field protected mDepth:Z

.field protected mFrameBufferID:[I

.field protected mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

.field protected mRenderBufferID:[I

.field protected mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 16
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    .line 17
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;-><init>(IIZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 16
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    .line 17
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    .line 22
    new-instance v0, Lcom/meizu/common/renderer/effect/texture/RawTexture;

    invoke-direct {v0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(II)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 23
    iput-boolean p3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    .line 24
    return-void
.end method


# virtual methods
.method public clear(Lcom/meizu/common/renderer/effect/GLCanvas;FFFF)V
    .locals 3
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F
    .param p5, "alpha"    # F

    .prologue
    const v2, 0x8d40

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 67
    invoke-static {p2, p3, p4, p5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 68
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 69
    invoke-interface {p1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getFrameBufferId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 70
    return-void
.end method

.method public fillBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/meizu/common/renderer/effect/EffectUtils;->glFillBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getDepth()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    mul-int/2addr v0, v1

    return v0

    .line 74
    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x6

    .line 76
    goto :goto_0
.end method

.method public getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    return v0
.end method

.method public isEGL()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 9
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/4 v8, 0x1

    const v7, 0x8d41

    const v6, 0x8d40

    const/4 v5, 0x0

    .line 27
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v2, :cond_1

    .line 31
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v2, :cond_2

    .line 57
    :goto_1
    return-void

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eq v2, p1, :cond_0

    const-string/jumbo v2, "glrenderer"

    const-string/jumbo v3, "FrameBuffer is not release when EGLContext changed."

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x50

    .line 29
    invoke-virtual {p0, v2, v8}, Lcom/meizu/common/renderer/effect/FrameBuffer;->trimResources(IZ)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v1

    .line 33
    .local v1, "width":I
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v0

    .line 34
    .local v0, "height":I
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    .line 35
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 36
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    aget v2, v2, v5

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    const/16 v3, 0xde1

    .line 37
    iget-object v4, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 40
    invoke-virtual {v4}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v4

    .line 37
    invoke-static {v6, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 43
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aput v5, v2, v5

    .line 44
    iget-boolean v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    if-nez v2, :cond_3

    .line 54
    :goto_2
    invoke-interface {p1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->getFrameBufferId()I

    move-result v2

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 55
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_1

    .line 45
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    invoke-static {v8, v2, v5}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 46
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v2, v2, v5

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v2, 0x81a5

    .line 47
    invoke-static {v7, v2, v1, v0}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v2, 0x8d00

    .line 48
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v3, v3, v5

    invoke-static {v6, v2, v7, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 52
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    goto :goto_2
.end method

.method public resetTextureBounds()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->resetBounds()V

    goto :goto_0
.end method

.method public trimResources(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->trimResources(IZ)V

    .line 113
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteFrameBuffer(IZ)V

    .line 114
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    if-nez v0, :cond_2

    .line 118
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    aput v2, v0, v2

    .line 119
    iput-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v1, v1, v2

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteRenderBuffer(IZ)V

    .line 116
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aput v2, v0, v2

    goto :goto_1
.end method
