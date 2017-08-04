.class public Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;
.super Ljava/lang/Object;
.source "EngineGL.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EngineGL"


# instance fields
.field protected mMVPMatrix:[F

.field protected mModelMatrix:[F

.field protected mProgramHandle:I

.field protected mProjectionMatrix:[F

.field protected mTextutreBitmapHandle:I

.field protected mViewMatrix:[F

.field protected uMatrixHandle:I

.field protected uTextureUnitHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertesShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    .line 15
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProjectionMatrix:[F

    .line 16
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertesShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {p1, p2}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    .line 36
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 37
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 38
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 43
    return-void
.end method


# virtual methods
.method public applyMVPMatrix(Ljava/lang/String;)V
    .locals 6
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->uMatrixHandle:I

    .line 107
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 109
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->uMatrixHandle:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mMVPMatrix:[F

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 110
    return-void
.end method

.method public orthographicCamera(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 60
    return-void
.end method

.method public perspectiveCamera(FFFF)V
    .locals 6
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "zNear"    # F
    .param p4, "zFar"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 56
    return-void
.end method

.method public rotate(FFF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    move v2, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 69
    iget-object v5, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    move v6, v1

    move v7, p2

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 70
    iget-object v5, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    move v6, v1

    move v7, p3

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 72
    return-void
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 76
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 77
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 50
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 51
    return-void
.end method

.method public setBlend(ZII)V
    .locals 3
    .param p1, "flag"    # Z
    .param p2, "mode1"    # I
    .param p3, "mode2"    # I

    .prologue
    const/16 v2, 0xbe2

    const/16 v1, 0x302

    const/4 v0, 0x1

    .line 96
    if-eq p1, v0, :cond_0

    .line 100
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 98
    invoke-static {v1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0
.end method

.method public setLookAt(FFFFFFFFF)V
    .locals 11
    .param p1, "eyeX"    # F
    .param p2, "eyeY"    # F
    .param p3, "eyeZ"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "upX"    # F
    .param p8, "upY"    # F
    .param p9, "upZ"    # F

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mViewMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 64
    return-void
.end method

.method public setMaterial(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "textureUnitName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v1, 0xde1

    .line 86
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->uTextureUnitHandle:I

    .line 87
    invoke-static {p2}, Lcom/meizu/flyme/activeview/renderer/utils/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mTextutreBitmapHandle:I

    .line 88
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mTextutreBitmapHandle:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 90
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->uTextureUnitHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 92
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 81
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mModelMatrix:[F

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 82
    return-void
.end method

.method public useProgram()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 47
    return-void
.end method
