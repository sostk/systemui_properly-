.class public Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;
.super Ljava/lang/Object;
.source "OpenGLUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenGLUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProgram(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexSourceRawId"    # I
    .param p2, "fragmentSourceRawId"    # I

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const v3, 0x8b31

    .line 102
    invoke-static {v3, p0}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->buildShader(ILjava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "vertexShader":I
    if-eqz v2, :cond_0

    const v3, 0x8b30

    .line 107
    invoke-static {v3, p1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->buildShader(ILjava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "fragmentShader":I
    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 113
    .local v1, "program":I
    if-eqz v1, :cond_2

    .line 117
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 118
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 119
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 121
    return v1

    .line 104
    .end local v0    # "fragmentShader":I
    .end local v1    # "program":I
    :cond_0
    return v4

    .line 109
    .restart local v0    # "fragmentShader":I
    :cond_1
    return v4

    .line 114
    .restart local v1    # "program":I
    :cond_2
    return v4
.end method

.method public static buildShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 126
    .local v0, "shader":I
    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    .line 133
    new-array v1, v2, [I

    .local v1, "status":[I
    const v2, 0x8b81

    .line 134
    invoke-static {v0, v2, v1, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 135
    aget v2, v1, v4

    if-eqz v2, :cond_1

    .line 141
    return v0

    .line 127
    .end local v1    # "status":[I
    :cond_0
    return v4

    .restart local v1    # "status":[I
    :cond_1
    const-string/jumbo v2, "OpenGLUtils"

    .line 136
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 138
    return v4
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-nez v0, :cond_0

    .line 363
    return-void

    :cond_0
    const-string/jumbo v1, "ES20_ERROR"

    .line 360
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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
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
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexShaderHandle"    # I
    .param p1, "fragmentShaderHandle"    # I
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 180
    .local v2, "programHandle":I
    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 214
    return v2

    .line 182
    :cond_1
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 185
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 188
    if-nez p2, :cond_3

    .line 196
    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v4, 0x1

    .line 199
    new-array v1, v4, [I

    .local v1, "linkStatus":[I
    const v4, 0x8b82

    .line 200
    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 203
    aget v4, v1, v5

    if-nez v4, :cond_0

    const-string/jumbo v4, "OpenGLUtils"

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error compiling program: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    .line 206
    goto :goto_0

    .line 189
    .end local v1    # "linkStatus":[I
    :cond_3
    array-length v3, p2

    .local v3, "size":I
    const/4 v0, 0x0

    .line 190
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 191
    aget-object v4, p2, v0

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Error creating program."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x8b31

    .line 322
    invoke-static {v4, p0}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 323
    .local v3, "vertexShader":I
    if-eqz v3, :cond_1

    const v4, 0x8b30

    .line 328
    invoke-static {v4, p1}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "pixelShader":I
    if-eqz v1, :cond_2

    .line 334
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 335
    .local v2, "program":I
    if-nez v2, :cond_3

    .line 352
    :cond_0
    :goto_0
    return v2

    .line 325
    .end local v1    # "pixelShader":I
    .end local v2    # "program":I
    :cond_1
    return v5

    .line 331
    .restart local v1    # "pixelShader":I
    :cond_2
    return v5

    .line 337
    .restart local v2    # "program":I
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    .line 338
    invoke-static {v4}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->checkGlError(Ljava/lang/String;)V

    .line 339
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    .line 340
    invoke-static {v4}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->checkGlError(Ljava/lang/String;)V

    .line 341
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 342
    new-array v0, v6, [I

    .local v0, "linkStatus":[I
    const v4, 0x8b82

    .line 343
    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 344
    aget v4, v0, v5

    if-eq v4, v6, :cond_0

    const-string/jumbo v4, "ES20_ERROR"

    const-string/jumbo v5, "Could not link program: "

    .line 346
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ES20_ERROR"

    .line 347
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    .line 349
    goto :goto_0
.end method

.method public static genTexture()I
    .locals 1

    .prologue
    const/16 v0, 0xde1

    .line 42
    invoke-static {v0}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->genTexture(I)I

    move-result v0

    return v0
.end method

.method public static genTexture(I)I
    .locals 6
    .param p0, "textureType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xde1

    const v2, 0x46180400    # 9729.0f

    const v3, 0x8d65

    .line 46
    new-array v0, v1, [I

    .line 47
    .local v0, "genBuf":[I
    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 48
    aget v1, v0, v5

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    if-eq p0, v3, :cond_0

    const/16 v1, 0x2801

    .line 58
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 59
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const/16 v2, 0x2901

    .line 60
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    const/16 v2, 0x2901

    .line 61
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 64
    :goto_0
    aget v1, v0, v5

    return v1

    :cond_0
    const/16 v1, 0x2801

    .line 52
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 53
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 54
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    const v2, 0x812f

    .line 55
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_0
.end method

.method public static getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 149
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "i":I
    :goto_0
    const/4 v6, -0x1

    .line 151
    if-ne v2, v6, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 162
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 152
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 160
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, ""

    .line 159
    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getVertexBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "data"    # [F

    .prologue
    .line 167
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 171
    .local v1, "vertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    return-object v1
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 370
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 372
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 373
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 378
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 379
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 380
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v7, "\\r\\n"

    const-string/jumbo v8, "\n"

    .line 381
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 387
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buff":[B
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 375
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 386
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 385
    .end local v5    # "result":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buff":[B
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    goto :goto_2
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 303
    .local v1, "shader":I
    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 306
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    .line 307
    new-array v0, v2, [I

    .local v0, "compiled":[I
    const v2, 0x8b81

    .line 308
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 309
    aget v2, v0, v3

    if-nez v2, :cond_0

    const-string/jumbo v2, "ES20_ERROR"

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ES20_ERROR"

    .line 312
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    .line 314
    goto :goto_0
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 218
    new-array v2, v7, [I

    .line 219
    .local v2, "textureObjectIds":[I
    invoke-static {v7, v2, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 222
    aget v3, v2, v5

    if-eqz v3, :cond_0

    .line 226
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 227
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 235
    aget v3, v2, v5

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v4, 0x2703

    .line 237
    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    .line 238
    invoke-static {v6, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 240
    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 247
    aget v3, v2, v5

    return v3

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-string/jumbo v3, "OpenGLUtils"

    const-string/jumbo v4, "Could not create a Opengl texture object"

    .line 223
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v5

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string/jumbo v3, "OpenGLUtils"

    const-string/jumbo v4, "error to load bitmap resource"

    .line 231
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {v7, v2, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 233
    return v5
.end method

.method public static loadTexture(Landroid/content/Context;I[I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-static {}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->genTexture()I

    move-result v2

    .line 70
    .local v2, "texId":I
    if-nez v2, :cond_0

    .line 93
    :goto_0
    return v2

    .line 71
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 73
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p2, v4

    .line 80
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v3, p2, v5

    .line 83
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0xde1

    .line 87
    invoke-static {v3, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 251
    new-array v0, v5, [I

    .line 252
    .local v0, "textureObjectIds":[I
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 255
    aget v1, v0, v3

    if-eqz v1, :cond_0

    .line 260
    if-eqz p0, :cond_1

    .line 265
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2703

    .line 267
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    .line 268
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 270
    invoke-static {v4, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 277
    aget v1, v0, v3

    return v1

    :cond_0
    const-string/jumbo v1, "OpenGLUtils"

    const-string/jumbo v2, "Could not create a Opengl texture object"

    .line 256
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v3

    :cond_1
    const-string/jumbo v1, "OpenGLUtils"

    const-string/jumbo v2, "error to load bitmap resource"

    .line 261
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 263
    return v3
.end method

.method public static readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "body":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 285
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, "nextLine":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 289
    :cond_0
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 296
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v5    # "nextLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not open resource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 295
    .local v6, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Resource not found :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
