.class public Lcom/meizu/common/renderer/effect/render/GLSLRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "GLSLRender.java"


# static fields
.field private static final VERTEX:Ljava/lang/String; = "attribute vec3 position; void main() { gl_Position = vec4(position, 1.0); }"

.field private static final VERTICES:[F

.field private static VERTICES_BUFFER:Ljava/nio/FloatBuffer;


# instance fields
.field private mAPosition:I

.field private mHasOrigin:Z

.field private mHasParameter1:Z

.field private mHasParameter2:Z

.field private mHasParameter3:Z

.field private mHasResolution:Z

.field private mHasTime:Z

.field private mOrigin:[F

.field private mParameter1:F

.field private mParameter2:F

.field private mParameter3:F

.field private mProgram:I

.field private mResolution:[F

.field private mTime:F

.field private mUOriginHandle:I

.field private mUParameter1:I

.field private mUParameter2:I

.field private mUParameter3:I

.field private mUResolutionHandle:I

.field private mUTimeHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v0, 0x8

    .line 19
    new-array v0, v0, [F

    aput v2, v0, v4

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES:[F

    .line 176
    sget-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    .line 177
    sget-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 178
    sget-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;Ljava/lang/String;)V
    .locals 3
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;
    .param p2, "glsl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    .line 39
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mTime:F

    .line 40
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter1:F

    .line 41
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter2:F

    .line 42
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter3:F

    .line 43
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mResolution:[F

    .line 44
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mOrigin:[F

    .line 50
    invoke-virtual {p0, p2}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->initProgram(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 172
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 3
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 56
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getParameter1()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter1:F

    return v0
.end method

.method public getParameter2()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter2:F

    return v0
.end method

.method public getParameter3()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter3:F

    return v0
.end method

.method public getTime()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mTime:F

    return v0
.end method

.method protected getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected initProgram(Ljava/lang/String;)V
    .locals 2
    .param p1, "glsl"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "attribute vec3 position; void main() { gl_Position = vec4(position, 1.0); }"

    .line 61
    invoke-static {v0, p1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    .line 62
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 64
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mAPosition:I

    const-string/jumbo v0, "time"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasTime:Z

    const-string/jumbo v0, "resolution"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasResolution:Z

    const-string/jumbo v0, "origin"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasOrigin:Z

    const-string/jumbo v0, "parameter1"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter1:Z

    const-string/jumbo v0, "parameter2"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter2:Z

    const-string/jumbo v0, "parameter3"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter3:Z

    .line 73
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasTime:Z

    if-nez v0, :cond_2

    .line 76
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasResolution:Z

    if-nez v0, :cond_3

    .line 79
    :goto_2
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasOrigin:Z

    if-nez v0, :cond_4

    .line 82
    :goto_3
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter1:Z

    if-nez v0, :cond_5

    .line 85
    :goto_4
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter2:Z

    if-nez v0, :cond_6

    .line 88
    :goto_5
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter3:Z

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "parameter3"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter3:I

    goto :goto_0

    .line 74
    :cond_2
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUTimeHandle:I

    goto :goto_1

    .line 77
    :cond_3
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "resolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUResolutionHandle:I

    goto :goto_2

    .line 80
    :cond_4
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "origin"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUOriginHandle:I

    goto :goto_3

    .line 83
    :cond_5
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "parameter1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter1:I

    goto :goto_4

    .line 86
    :cond_6
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    const-string/jumbo v1, "parameter2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter2:I

    goto :goto_5
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 8
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 123
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mAPosition:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 124
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mAPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasTime:Z

    if-nez v0, :cond_0

    .line 128
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter1:Z

    if-nez v0, :cond_1

    .line 131
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter2:Z

    if-nez v0, :cond_2

    .line 134
    :goto_2
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasParameter3:Z

    if-nez v0, :cond_3

    .line 137
    :goto_3
    iget-object v6, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 138
    .local v6, "e":Lcom/meizu/common/renderer/effect/op/DrawOp;
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasResolution:Z

    if-nez v0, :cond_4

    .line 143
    :goto_4
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mHasOrigin:Z

    if-nez v0, :cond_5

    .line 148
    :goto_5
    return-void

    .line 126
    .end local v6    # "e":Lcom/meizu/common/renderer/effect/op/DrawOp;
    :cond_0
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUTimeHandle:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mTime:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 129
    :cond_1
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter1:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    .line 132
    :cond_2
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter2:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2

    .line 135
    :cond_3
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUParameter3:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter3:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_3

    .line 139
    .restart local v6    # "e":Lcom/meizu/common/renderer/effect/op/DrawOp;
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mResolution:[F

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 140
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mResolution:[F

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float v1, v1

    aput v1, v0, v7

    .line 141
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUResolutionHandle:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mResolution:[F

    invoke-static {v0, v7, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_4

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mOrigin:[F

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawOp;->x:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 145
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mOrigin:[F

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawOp;->y:I

    int-to-float v1, v1

    aput v1, v0, v7

    .line 146
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mUOriginHandle:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mOrigin:[F

    invoke-static {v0, v7, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_5
.end method

.method public setParameter1(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 99
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter1:F

    .line 100
    return-void
.end method

.method public setParameter2(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter2:F

    .line 103
    return-void
.end method

.method public setParameter3(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mParameter3:F

    .line 106
    return-void
.end method

.method public setTime(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mTime:F

    .line 96
    return-void
.end method

.method public trimResources(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 153
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 155
    iput v3, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    .line 156
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mKey:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_0
.end method

.method public valid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 163
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/GLSLRender;->mProgram:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
