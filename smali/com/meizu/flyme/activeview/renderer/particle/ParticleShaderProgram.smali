.class public Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;
.super Ljava/lang/Object;
.source "ParticleShaderProgram.java"


# static fields
.field protected static final ALPHA_FILTER:Ljava/lang/String; = "u_Alpha"

.field protected static final A_COLOR:Ljava/lang/String; = "a_Color"

.field protected static final A_DIRECTION_VECTOR:Ljava/lang/String; = "a_DirectionVector"

.field protected static final A_PARTICLE_START_TIME:Ljava/lang/String; = "a_ParticleStartTime"

.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final COLOR_COMPONENT_COUNT:I = 0x3

.field private static final PARTICLE_START_TIME_COMPONENT_COUNT:I = 0x1

.field protected static final POINT_SIZE:Ljava/lang/String; = "u_PointSize"

.field private static final POSITION_COMPONENT_COUNT:I = 0x3

.field private static final STRIDE:I = 0x28

.field private static final TOTAL_COMPONENT_COUNT:I = 0xa

.field protected static final TYPE:Ljava/lang/String; = "u_Type"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field protected static final U_TIME:Ljava/lang/String; = "u_Time"

.field private static final VECTOR_COMPONENT_COUNT:I = 0x3


# instance fields
.field private aColorLocation:I

.field private aDirectionVectorLocation:I

.field private aParticleStartTimeLocation:I

.field private aPositionLocation:I

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

.field private mFragmentShader:Ljava/lang/String;

.field mProgram:I

.field private mVboID:[I

.field private mVertexShader:Ljava/lang/String;

.field private uAlphaFiltrHandel:I

.field private uMatrixLocation:I

.field private uPointSizeHandel:I

.field private uTextureUnitLocation:I

.field private uTimeLocation:I

.field private uTypeHandel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    .line 64
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mContext:Landroid/content/Context;

    sget v2, Lcom/meizu/flyme/activeview/R$raw;->particle_vsh:I

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mContext:Landroid/content/Context;

    sget v3, Lcom/meizu/flyme/activeview/R$raw;->particle_fsh:I

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    .line 66
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->initShader()V

    .line 67
    return-void
.end method


# virtual methods
.method public bindData(Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;)V
    .locals 9
    .param p1, "shooter"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .prologue
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0x28

    const v8, 0x8892

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 116
    iget-object v6, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    invoke-static {v0, v6, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 121
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getVertexArrayBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getVertexArrayBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    const v7, 0x88e8

    invoke-static {v8, v0, v6, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 124
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 129
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aPositionLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 130
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aPositionLocation:I

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 133
    const/16 v5, 0xc

    .line 136
    .local v5, "mDataOffset":I
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 137
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aColorLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aColorLocation:I

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 141
    add-int/lit8 v5, v5, 0xc

    .line 144
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 145
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aDirectionVectorLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aDirectionVectorLocation:I

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 149
    add-int/lit8 v5, v5, 0xc

    .line 152
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    aget v0, v0, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 153
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aParticleStartTimeLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 154
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aParticleStartTimeLocation:I

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 158
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 159
    return-void
.end method

.method public draw(Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;)V
    .locals 3
    .param p1, "shooter"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getCurrentParticleCount()I

    move-result v0

    invoke-static {v2, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v0, 0x1

    .line 164
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mVboID:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 166
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aPositionLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 167
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aColorLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 168
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aDirectionVectorLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 169
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aParticleStartTimeLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 170
    return-void
.end method

.method public getEngine()Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    return-object v0
.end method

.method public getParticleTypeAttributeLocation()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uTypeHandel:I

    return v0
.end method

.method public initShader()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "u_Time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uTimeLocation:I

    .line 71
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aPositionLocation:I

    .line 72
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "a_Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aColorLocation:I

    .line 73
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "a_DirectionVector"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aDirectionVectorLocation:I

    .line 74
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "a_ParticleStartTime"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->aParticleStartTimeLocation:I

    .line 75
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "u_Type"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uTypeHandel:I

    .line 76
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "u_PointSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uPointSizeHandel:I

    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uAlphaFiltrHandel:I

    .line 78
    return-void
.end method

.method public setAlphaFilter(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uAlphaFiltrHandel:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 110
    return-void
.end method

.method public setMaterial(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    const-string/jumbo v1, "u_TextureUnit"

    invoke-virtual {v0, v1, p1}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->setMaterial(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public setParticleTypeUniforms(F)V
    .locals 1
    .param p1, "type"    # F

    .prologue
    .line 101
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uTypeHandel:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 102
    return-void
.end method

.method public setPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uPointSizeHandel:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 106
    return-void
.end method

.method public setUniforms(F)V
    .locals 2
    .param p1, "elapsedTime"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    const-string/jumbo v1, "u_Matrix"

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->applyMVPMatrix(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->uTimeLocation:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 90
    return-void
.end method

.method public useProgram()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->mEngine:Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->useProgram()V

    .line 82
    return-void
.end method
