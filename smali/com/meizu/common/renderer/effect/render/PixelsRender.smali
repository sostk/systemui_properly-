.class public abstract Lcom/meizu/common/renderer/effect/render/PixelsRender;
.super Lcom/meizu/common/renderer/effect/render/ShaderRender;
.source "PixelsRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

.field private static final VERTICES:[F

.field private static VERTICES_BUFFER:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v0, 0xc

    .line 19
    new-array v0, v0, [F

    aput v2, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    const/16 v0, 0x8

    .line 20
    new-array v0, v0, [F

    aput v2, v0, v4

    aput v2, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    .line 124
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->init()V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 26
    return-void
.end method

.method private static init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    .line 115
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 116
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    .line 119
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    return-void
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 46
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->drawTexture(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected drawTexture(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)V
    .locals 5
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;
    .param p2, "drawOp"    # Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .prologue
    const/4 v4, 0x0

    .line 84
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 86
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const v1, 0x84c0

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 92
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-boolean v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureH:Z

    iget-boolean v3, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->updateTransformMatrix(Lcom/meizu/common/renderer/effect/GLCanvas;ZZ)V

    .line 94
    iget v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->x:I

    if-eqz v0, :cond_2

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->x:I

    int-to-float v1, v1

    iget v2, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    int-to-float v1, v1

    iget v2, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/StateMachine;->scale(FFF)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 100
    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 103
    return-void

    .line 86
    :cond_1
    return-void

    .line 94
    :cond_2
    iget v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->y:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected initProgram()V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    .line 31
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 33
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformMVPMatrixH:I

    .line 34
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformSTMatrixH:I

    .line 35
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformAlphaH:I

    .line 36
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformTextureH:I

    .line 37
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributePositionH:I

    .line 38
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mProgram:I

    const-string/jumbo v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributeTexCoorH:I

    .line 42
    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 7
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/16 v2, 0x1406

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 52
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributePositionH:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    .line 57
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 52
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 59
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributeTexCoorH:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 59
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 66
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 69
    invoke-interface {v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/StateMachine;->getFinalMatrix()[F

    move-result-object v1

    .line 66
    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 72
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 75
    invoke-interface {v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object v1

    .line 72
    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 77
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformTextureH:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 78
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mUniformAlphaH:I

    iget v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 79
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 80
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 81
    return-void
.end method
