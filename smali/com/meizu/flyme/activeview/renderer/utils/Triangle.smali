.class public Lcom/meizu/flyme/activeview/renderer/utils/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# static fields
.field static mMMatrix:[F

.field public static mMVPMatrix:[F

.field public static mProjMatrix:[F

.field public static mVMatrix:[F


# instance fields
.field fileFrag:Ljava/lang/String;

.field fileVertes:Ljava/lang/String;

.field mColorBuffer:Ljava/nio/FloatBuffer;

.field mFragmentShader:Ljava/lang/String;

.field mProgram:I

.field public mResolutionx:F

.field public mResolutiony:F

.field mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertexShader:Ljava/lang/String;

.field maColorHandle:I

.field maPositionHandle:I

.field muMVPMatrixHandle:I

.field muTimeHandle:I

.field mvResolutionHandle:I

.field vCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 16
    new-array v0, v1, [F

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProjMatrix:[F

    .line 17
    new-array v0, v1, [F

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVMatrix:[F

    .line 32
    new-array v0, v1, [F

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMMatrix:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mv"    # Landroid/content/Context;
    .param p2, "vertesFile"    # Ljava/lang/String;
    .param p3, "fragFile"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutionx:F

    .line 28
    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutiony:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->vCount:I

    .line 44
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->initVertexData()V

    .line 45
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->fileVertes:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->fileFrag:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->fileVertes:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->fileFrag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->initShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static getFianlMatrix([F)[F
    .locals 6
    .param p0, "spec"    # [F

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x10

    .line 142
    new-array v0, v0, [F

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMVPMatrix:[F

    .line 143
    sget-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMVPMatrix:[F

    sget-object v2, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVMatrix:[F

    move v3, v1

    move-object v4, p0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 144
    sget-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMVPMatrix:[F

    sget-object v2, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProjMatrix:[F

    sget-object v4, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 145
    sget-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMVPMatrix:[F

    return-object v0
.end method


# virtual methods
.method public drawSelf()V
    .locals 11

    .prologue
    const/16 v10, 0x1406

    const/4 v9, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 110
    sget-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMMatrix:[F

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 111
    sget-object v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMMatrix:[F

    invoke-static {v0, v1, v2, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 113
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->muMVPMatrixHandle:I

    const/4 v2, 0x1

    sget-object v3, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mMMatrix:[F

    invoke-static {v3}, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->getFianlMatrix([F)[F

    move-result-object v3

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    rem-long/2addr v2, v4

    long-to-float v8, v2

    .line 116
    .local v8, "time":F
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->muTimeHandle:I

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v8, v2

    const v3, 0x3c8efa2e

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 117
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mvResolutionHandle:I

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutionx:F

    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutiony:F

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 119
    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maPositionHandle:I

    const/4 v3, 0x3

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v10

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 127
    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maColorHandle:I

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mColorBuffer:Ljava/nio/FloatBuffer;

    move v3, v9

    move v4, v10

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 136
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maColorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->vCount:I

    invoke-static {v9, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 139
    return-void
.end method

.method public initShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mv"    # Landroid/content/Context;
    .param p2, "fileVertes"    # Ljava/lang/String;
    .param p3, "fileFrag"    # Ljava/lang/String;

    .prologue
    .line 96
    sget v0, Lcom/meizu/flyme/activeview/R$raw;->vertex:I

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/activeview/R$raw;->frag4:I

    invoke-static {p1, v1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    .line 98
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maPositionHandle:I

    .line 99
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    const-string/jumbo v1, "aColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->maColorHandle:I

    .line 100
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->muMVPMatrixHandle:I

    .line 102
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->muTimeHandle:I

    .line 103
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProgram:I

    const-string/jumbo v1, "resolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mvResolutionHandle:I

    .line 105
    return-void
.end method

.method public initVertexData()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 52
    iput v9, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->vCount:I

    const/16 v4, 0x12

    .line 53
    new-array v3, v4, [F

    aput v7, v3, v8

    const/4 v4, 0x1

    aput v7, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v7, v3, v4

    const/4 v4, 0x5

    aput v5, v3, v4

    aput v6, v3, v9

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v5, v3, v4

    const/16 v4, 0x9

    aput v6, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v5, v3, v4

    const/16 v4, 0xc

    aput v7, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v7, v3, v4

    const/16 v4, 0x10

    aput v7, v3, v4

    const/16 v4, 0x11

    aput v5, v3, v4

    .line 64
    .local v3, "vertices":[F
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 65
    .local v2, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 67
    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 68
    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v4, 0x18

    .line 70
    new-array v1, v4, [F

    aput v5, v1, v8

    const/4 v4, 0x1

    aput v6, v1, v4

    const/4 v4, 0x2

    aput v5, v1, v4

    const/4 v4, 0x3

    aput v5, v1, v4

    const/4 v4, 0x4

    aput v5, v1, v4

    const/4 v4, 0x5

    aput v6, v1, v4

    aput v5, v1, v9

    const/4 v4, 0x7

    aput v5, v1, v4

    const/16 v4, 0x8

    aput v5, v1, v4

    const/16 v4, 0x9

    aput v6, v1, v4

    const/16 v4, 0xa

    aput v5, v1, v4

    const/16 v4, 0xb

    aput v5, v1, v4

    const/16 v4, 0xc

    aput v5, v1, v4

    const/16 v4, 0xd

    aput v6, v1, v4

    const/16 v4, 0xe

    aput v5, v1, v4

    const/16 v4, 0xf

    aput v5, v1, v4

    const/16 v4, 0x10

    aput v5, v1, v4

    const/16 v4, 0x11

    aput v6, v1, v4

    const/16 v4, 0x12

    aput v5, v1, v4

    const/16 v4, 0x13

    aput v5, v1, v4

    const/16 v4, 0x14

    aput v5, v1, v4

    const/16 v4, 0x15

    aput v6, v1, v4

    const/16 v4, 0x16

    aput v5, v1, v4

    const/16 v4, 0x17

    aput v5, v1, v4

    .line 80
    .local v1, "colors":[F
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 83
    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 84
    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    return-void
.end method
