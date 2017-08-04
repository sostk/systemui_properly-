.class public Lcom/meizu/common/renderer/effect/ShaderUtils;
.super Ljava/lang/Object;
.source "ShaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-nez v0, :cond_0

    .line 101
    return-void

    :cond_0
    const-string/jumbo v1, "glrenderer"

    .line 98
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

    .line 99
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

.method public static createComputeProgram(Ljava/lang/String;)I
    .locals 6
    .param p0, "computeSource"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x91b9

    .line 71
    invoke-static {v3, p0}, Lcom/meizu/common/renderer/effect/ShaderUtils;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "computeShader":I
    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 77
    .local v2, "program":I
    if-nez v2, :cond_2

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 73
    .end local v2    # "program":I
    :cond_1
    return v4

    .line 78
    .restart local v2    # "program":I
    :cond_2
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v3, "glAttachShader"

    .line 79
    invoke-static {v3}, Lcom/meizu/common/renderer/effect/ShaderUtils;->checkGlError(Ljava/lang/String;)V

    .line 80
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 81
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string/jumbo v3, "glDeleteShader"

    .line 82
    invoke-static {v3}, Lcom/meizu/common/renderer/effect/ShaderUtils;->checkGlError(Ljava/lang/String;)V

    .line 83
    new-array v1, v5, [I

    .local v1, "linkStatus":[I
    const v3, 0x8b82

    .line 84
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 85
    aget v3, v1, v4

    if-eq v3, v5, :cond_0

    const-string/jumbo v3, "glrenderer"

    const-string/jumbo v4, "Could not link program: "

    .line 86
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "glrenderer"

    .line 87
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    .line 89
    goto :goto_0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x8b31

    .line 38
    invoke-static {v4, p0}, Lcom/meizu/common/renderer/effect/ShaderUtils;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 40
    .local v3, "vertexShader":I
    if-eqz v3, :cond_1

    const v4, 0x8b30

    .line 43
    invoke-static {v4, p1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "pixelShader":I
    if-eqz v1, :cond_2

    .line 48
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 49
    .local v2, "program":I
    if-nez v2, :cond_3

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 41
    .end local v1    # "pixelShader":I
    .end local v2    # "program":I
    :cond_1
    return v5

    .line 45
    .restart local v1    # "pixelShader":I
    :cond_2
    return v5

    .line 50
    .restart local v2    # "program":I
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    .line 51
    invoke-static {v4}, Lcom/meizu/common/renderer/effect/ShaderUtils;->checkGlError(Ljava/lang/String;)V

    .line 52
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v4, "glAttachShader"

    .line 53
    invoke-static {v4}, Lcom/meizu/common/renderer/effect/ShaderUtils;->checkGlError(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 55
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 56
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string/jumbo v4, "glDeleteShader"

    .line 57
    invoke-static {v4}, Lcom/meizu/common/renderer/effect/ShaderUtils;->checkGlError(Ljava/lang/String;)V

    .line 58
    new-array v0, v6, [I

    .local v0, "linkStatus":[I
    const v4, 0x8b82

    .line 59
    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 60
    aget v4, v0, v5

    if-eq v4, v6, :cond_0

    const-string/jumbo v4, "glrenderer"

    const-string/jumbo v5, "Could not link program: "

    .line 61
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "glrenderer"

    .line 62
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    .line 64
    goto :goto_0
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 106
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 107
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 109
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 114
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 116
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

    .line 117
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 121
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buff":[B
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 111
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

    .line 120
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 119
    .end local v5    # "result":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 120
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

.method public static loadFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 129
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "i":I
    :goto_0
    const/4 v6, -0x1

    .line 131
    if-ne v2, v6, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 142
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 132
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 140
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, ""

    .line 139
    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 20
    .local v1, "shader":I
    if-nez v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 21
    :cond_1
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    .line 23
    new-array v0, v2, [I

    .local v0, "compiled":[I
    const v2, 0x8b81

    .line 24
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 25
    aget v2, v0, v3

    if-nez v2, :cond_0

    const-string/jumbo v2, "glrenderer"

    .line 26
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

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "glrenderer"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "glrenderer"

    .line 29
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    .line 31
    goto :goto_0
.end method
