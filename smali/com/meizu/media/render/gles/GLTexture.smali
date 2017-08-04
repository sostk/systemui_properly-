.class public Lcom/meizu/media/render/gles/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"


# instance fields
.field private mHeight:I

.field private mTarget:I

.field private mTexture:I

.field private mWidth:I


# direct methods
.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 197
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

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/meizu/media/render/gles/GLTexture;->mHeight:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/meizu/media/render/gles/GLTexture;->mTarget:I

    return v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/media/render/gles/GLTexture;->mTexture:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/media/render/gles/GLTexture;->mWidth:I

    return v0
.end method

.method public recyle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget v1, p0, Lcom/meizu/media/render/gles/GLTexture;->mTexture:I

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 187
    .local v0, "textures":[I
    iget v1, p0, Lcom/meizu/media/render/gles/GLTexture;->mTexture:I

    aput v1, v0, v2

    .line 188
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 189
    const-string/jumbo v1, "glDeleteTextures"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLTexture;->checkGlError(Ljava/lang/String;)V

    .line 190
    iput v2, p0, Lcom/meizu/media/render/gles/GLTexture;->mTexture:I

    .line 184
    .end local v0    # "textures":[I
    :cond_0
    return-void
.end method
