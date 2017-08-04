.class public Lcom/meizu/media/render/gles/GLES20Utils;
.super Ljava/lang/Object;
.source "GLES20Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    return-void
.end method

.method public static clear(FFFF)V
    .locals 1
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 43
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 41
    return-void
.end method

.method public static deleteFramebuffer(I)V
    .locals 3
    .param p0, "framebuffer"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    new-array v0, v2, [I

    .line 16
    .local v0, "framebuffers":[I
    aput p0, v0, v1

    .line 17
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 18
    const-string/jumbo v1, "glDeleteFramebuffer"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLES20Utils;->checkGlError(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static setFramebuffer(II)V
    .locals 5
    .param p0, "framebuffer"    # I
    .param p1, "texture"    # I

    .prologue
    const v4, 0x8d40

    const/4 v3, 0x0

    .line 22
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 23
    invoke-static {v4, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    const-string/jumbo v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLES20Utils;->checkGlError(Ljava/lang/String;)V

    .line 26
    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 25
    invoke-static {v4, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 28
    const-string/jumbo v1, "glFramebufferTexture2D"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLES20Utils;->checkGlError(Ljava/lang/String;)V

    .line 30
    invoke-static {v4}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 31
    .local v0, "status":I
    const v1, 0x8cd5

    if-eq v0, v1, :cond_1

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    .line 33
    const-string/jumbo v2, "Failed to initialize framebuffer object"

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v0    # "status":I
    :cond_0
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 37
    const-string/jumbo v1, "glBindFramebuffer"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLES20Utils;->checkGlError(Ljava/lang/String;)V

    .line 21
    :cond_1
    return-void
.end method
