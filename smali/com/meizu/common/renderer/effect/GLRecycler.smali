.class public Lcom/meizu/common/renderer/effect/GLRecycler;
.super Ljava/lang/Object;
.source "GLRecycler.java"


# static fields
.field private static sBuffer:[I


# instance fields
.field private final mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mProgramGarbage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 16
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 17
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 18
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearGarbage(Z)V
    .locals 5
    .param p1, "hasEglConext"    # Z

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 75
    .local v1, "ids":Lcom/meizu/common/renderer/effect/SynchronizedIntArray;
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 81
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 87
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 92
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 93
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_7

    .line 98
    :goto_3
    if-nez p1, :cond_9

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 104
    return-void

    .line 76
    :cond_1
    if-nez p1, :cond_2

    .line 77
    :goto_4
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_4

    .line 82
    :cond_3
    if-nez p1, :cond_4

    .line 83
    :goto_5
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    goto :goto_5

    .line 88
    :cond_5
    if-nez p1, :cond_6

    .line 89
    :goto_6
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    goto :goto_2

    .line 88
    :cond_6
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    goto :goto_6

    .line 94
    :cond_7
    if-nez p1, :cond_8

    .line 95
    :goto_7
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    goto :goto_3

    .line 94
    :cond_8
    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    goto :goto_7

    .line 99
    :cond_9
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, "id":I
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_8
.end method

.method public deleteBuffer(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    if-eqz p2, :cond_1

    .line 37
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    .line 38
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_0
.end method

.method public deleteFrameBuffer(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v2, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    if-eqz p2, :cond_1

    .line 57
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    .line 58
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_0
.end method

.method public deleteProgram(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    if-eqz p2, :cond_1

    .line 67
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteRenderBuffer(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v2, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 44
    if-eqz p2, :cond_1

    .line 47
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    .line 48
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_0
.end method

.method public deleteTexture(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 27
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    .line 28
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_0
.end method
