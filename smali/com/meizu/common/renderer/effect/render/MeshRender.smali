.class public abstract Lcom/meizu/common/renderer/effect/render/MeshRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "MeshRender.java"


# instance fields
.field private final UNIT_SIZE:F

.field private mCols:I

.field private mRows:I

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexCount:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/16 v1, 0xc

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->UNIT_SIZE:F

    .line 20
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    .line 21
    iput v1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    .line 24
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/MeshRender;->initMesh()V

    .line 25
    return-void
.end method

.method private initMesh()V
    .locals 20

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v11, v19, v18

    .line 81
    .local v11, "stepX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v12, v19, v18

    .line 82
    .local v12, "stepY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    mul-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexCount:I

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    new-array v15, v0, [F

    .local v15, "vertices":[F
    const/4 v4, 0x0

    .local v4, "count":I
    const/4 v7, 0x0

    .line 87
    .local v7, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [F

    .line 121
    .local v14, "texcoords":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v10, v19, v18

    .line 122
    .local v10, "sizew":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v9, v19, v18

    .local v9, "sizeh":F
    const/4 v2, 0x0

    .local v2, "c":I
    const/4 v6, 0x0

    .line 124
    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_2

    .line 149
    array-length v0, v15

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Lcom/meizu/common/renderer/effect/render/MeshRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    array-length v0, v14

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Lcom/meizu/common/renderer/effect/render/MeshRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/renderer/effect/render/MeshRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    return-void

    .end local v2    # "c":I
    .end local v6    # "i":I
    .end local v9    # "sizeh":F
    .end local v10    # "sizew":F
    .end local v14    # "texcoords":[F
    :cond_0
    const/4 v6, 0x0

    .line 88
    .restart local v6    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_1

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 89
    :cond_1
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v11

    const/high16 v19, -0x40800000    # -1.0f

    add-float v16, v19, v18

    .line 90
    .local v16, "zsx":F
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v18, v18, v12

    const/high16 v19, -0x40800000    # -1.0f

    add-float v17, v19, v18

    .line 93
    .local v17, "zsy":F
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .local v5, "count":I
    aput v16, v15, v4

    .line 94
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    aput v17, v15, v5

    .line 95
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v4

    .line 97
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    aput v16, v15, v5

    .line 98
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    add-float v18, v17, v12

    aput v18, v15, v4

    .line 99
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v5

    .line 101
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    add-float v18, v16, v11

    aput v18, v15, v4

    .line 102
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    aput v17, v15, v5

    .line 103
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v4

    .line 105
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    add-float v18, v16, v11

    aput v18, v15, v5

    .line 106
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    aput v17, v15, v4

    .line 107
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v5

    .line 109
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    aput v16, v15, v4

    .line 110
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    add-float v18, v17, v12

    aput v18, v15, v5

    .line 111
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v4

    .line 113
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    add-float v18, v16, v11

    aput v18, v15, v5

    .line 114
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "count":I
    .restart local v5    # "count":I
    add-float v18, v17, v12

    aput v18, v15, v4

    .line 115
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    const/16 v18, 0x0

    aput v18, v15, v5

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .end local v16    # "zsx":F
    .end local v17    # "zsy":F
    .restart local v2    # "c":I
    .restart local v9    # "sizeh":F
    .restart local v10    # "sizew":F
    .restart local v14    # "texcoords":[F
    :cond_2
    const/4 v7, 0x0

    .line 125
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_3

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 126
    :cond_3
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v8, v18, v10

    .line 127
    .local v8, "s":F
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v13, v18, v9

    .line 129
    .local v13, "t":F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .local v3, "c":I
    aput v8, v14, v2

    .line 130
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    aput v13, v14, v3

    .line 132
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    aput v8, v14, v2

    .line 133
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    add-float v18, v13, v9

    aput v18, v14, v3

    .line 135
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    add-float v18, v8, v10

    aput v18, v14, v2

    .line 136
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    aput v13, v14, v3

    .line 138
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    add-float v18, v8, v10

    aput v18, v14, v2

    .line 139
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    aput v13, v14, v3

    .line 141
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    aput v8, v14, v2

    .line 142
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    add-float v18, v13, v9

    aput v18, v14, v3

    .line 144
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    add-float v18, v8, v10

    aput v18, v14, v2

    .line 145
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    add-float v18, v13, v9

    aput v18, v14, v3

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected drawTexture(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)V
    .locals 5
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;
    .param p2, "drawOp"    # Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .prologue
    const/4 v4, 0x0

    .line 37
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 39
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const v1, 0x84c0

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/render/MeshRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/MeshRender;->onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 44
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-boolean v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureH:Z

    iget-boolean v3, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->updateTransformMatrix(Lcom/meizu/common/renderer/effect/GLCanvas;ZZ)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/MeshRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/4 v0, 0x4

    .line 47
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexCount:I

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/MeshRender;->onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 50
    return-void

    .line 39
    :cond_0
    return-void
.end method

.method protected getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setGrid(II)V
    .locals 1
    .param p1, "cols"    # I
    .param p2, "rows"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    if-eq v0, p1, :cond_1

    .line 29
    :cond_0
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mCols:I

    .line 30
    iput p2, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    .line 31
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/MeshRender;->initMesh()V

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_1
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mRows:I

    if-ne v0, p2, :cond_0

    goto :goto_0
.end method

.method protected updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 12
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 54
    iget v11, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 55
    .local v11, "width":I
    iget v10, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .local v10, "height":I
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1, v11, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 58
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    const/high16 v1, -0x41800000    # -0.25f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, -0x41800000    # -0.25f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/renderer/effect/StateMachine;->frustumM(FFFFFF)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/common/renderer/effect/StateMachine;->setLookAt(FFFFFFFFF)V

    .line 66
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/MeshRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    const/high16 v1, -0x41800000    # -0.25f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, -0x41800000    # -0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/renderer/effect/StateMachine;->frustumM(FFFFFF)V

    goto :goto_0
.end method
