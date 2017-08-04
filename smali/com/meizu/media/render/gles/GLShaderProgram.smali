.class public Lcom/meizu/media/render/gles/GLShaderProgram;
.super Ljava/lang/Object;
.source "GLShaderProgram.java"


# static fields
.field public static final POS_VERTICES:[F

.field public static final TEX_VERTICES:[F


# instance fields
.field protected mIsRendering:Z

.field protected mPosCoordHandle:I

.field protected mPosVertices:Ljava/nio/FloatBuffer;

.field protected mProgram:I

.field protected mTexCoordHandle:I

.field protected mTexVertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 12
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/media/render/gles/GLShaderProgram;->POS_VERTICES:[F

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/media/render/gles/GLShaderProgram;->TEX_VERTICES:[F

    .line 9
    return-void

    .line 12
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 14
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vs"    # Ljava/lang/String;
    .param p2, "fs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    .line 25
    invoke-static {p1, p2}, Lcom/meizu/media/render/gles/GLShaderProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    .line 26
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    const-string/jumbo v1, "a_position"

    .line 27
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosCoordHandle:I

    .line 30
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    const-string/jumbo v1, "a_texcoord"

    .line 29
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexCoordHandle:I

    .line 24
    :cond_0
    return-void
.end method

.method protected static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 175
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

    .line 172
    :cond_0
    return-void
.end method

.method protected static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vs"    # Ljava/lang/String;
    .param p1, "fs"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/meizu/media/render/gles/GLShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 144
    .local v4, "vertexShaderHandle":I
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/meizu/media/render/gles/GLShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "fragmentShaderHandle":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 146
    .local v3, "program":I
    if-eqz v3, :cond_0

    .line 147
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 148
    const-string/jumbo v5, "glAttachShader vertexShaderHandle"

    invoke-static {v5}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 149
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 150
    const-string/jumbo v5, "glAttachShader fragmentShaderHandle"

    invoke-static {v5}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 151
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 152
    new-array v2, v7, [I

    .line 153
    .local v2, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v3, v5, v2, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 154
    aget v5, v2, v6

    if-eq v5, v7, :cond_0

    .line 155
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "info":Ljava/lang/String;
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 157
    const/4 v3, 0x0

    .line 158
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not link program: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "linkStatus":[I
    :cond_0
    return v3
.end method

.method protected static createVerticesBuffer([FI)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "vertices"    # [F
    .param p1, "bytes"    # I

    .prologue
    .line 166
    array-length v1, p0

    mul-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 167
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    return-object v0
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    .line 126
    .local v2, "shader":I
    if-eqz v2, :cond_0

    .line 127
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 128
    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 129
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 130
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 131
    aget v3, v0, v4

    if-nez v3, :cond_0

    .line 132
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "info":Ljava/lang/String;
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 134
    const/4 v2, 0x0

    .line 135
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 136
    const-string/jumbo v5, ":"

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    .end local v0    # "compiled":[I
    .end local v1    # "info":Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method public beginScene()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 72
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v0, :cond_1

    .line 73
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 74
    const-string/jumbo v0, "glUseProgram"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/meizu/media/render/gles/GLShaderProgram;->POS_VERTICES:[F

    .line 78
    const/4 v1, 0x4

    .line 77
    invoke-static {v0, v1}, Lcom/meizu/media/render/gles/GLShaderProgram;->createVerticesBuffer([FI)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    .line 80
    :cond_0
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosCoordHandle:I

    .line 81
    iget-object v5, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    .line 80
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 82
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 83
    const-string/jumbo v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 85
    iput-boolean v6, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    .line 86
    iput-boolean v6, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    return v0
.end method

.method public endScene()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/meizu/media/render/gles/GLShaderProgram;->TEX_VERTICES:[F

    invoke-static {v0, v6}, Lcom/meizu/media/render/gles/GLShaderProgram;->createVerticesBuffer([FI)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 97
    :cond_0
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexCoordHandle:I

    .line 98
    iget-object v5, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 97
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 99
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 100
    const-string/jumbo v0, "vertex attribute setup"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x5

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 103
    const-string/jumbo v0, "glDrawArrays"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 104
    iput-boolean v3, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    .line 91
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 111
    const-string/jumbo v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 112
    iput v2, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    iput-object v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mPosVertices:Ljava/nio/FloatBuffer;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    iput-object v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 108
    :cond_2
    return-void
.end method

.method public setHostValue(Ljava/lang/String;F)V
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "obj"    # F

    .prologue
    .line 65
    iget v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    if-eq p1, v1, :cond_0

    .line 66
    iget v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "varHandle":I
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 64
    .end local v0    # "varHandle":I
    :cond_0
    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;III)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "texture"    # I
    .param p4, "target"    # I

    .prologue
    .line 54
    iget v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    if-eqz v1, :cond_0

    .line 55
    const v1, 0x84c0

    add-int/2addr v1, p2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    const-string/jumbo v1, "glActiveTexture"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 57
    invoke-static {p4, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    const-string/jumbo v1, "glBindTexture"

    invoke-static {v1}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 59
    iget v1, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "varHandle":I
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 53
    .end local v0    # "varHandle":I
    :cond_0
    return-void
.end method

.method public setTexVertices([F)V
    .locals 1
    .param p1, "texVertices"    # [F

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->createVerticesBuffer([FI)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 40
    :cond_0
    return-void
.end method

.method public setViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mProgram:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/media/render/gles/GLShaderProgram;->mIsRendering:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 49
    const-string/jumbo v0, "glViewport"

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->checkGlError(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
