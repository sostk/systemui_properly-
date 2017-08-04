.class Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "CubeEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/CubeEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CubeRender"
.end annotation


# static fields
.field private static final UNIT_SIZE:F = 2.0f


# instance fields
.field private mDrawTopBottom:Z

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/meizu/common/renderer/effect/render/CubeEffectRender;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/render/CubeEffectRender;Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p2, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->this$0:Lcom/meizu/common/renderer/effect/render/CubeEffectRender;

    .line 114
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mDrawTopBottom:Z

    .line 115
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->initMesh()V

    .line 116
    return-void
.end method

.method private initMesh()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/16 v6, 0x12

    .line 211
    new-array v5, v6, [F

    .line 217
    .local v5, "vertices":[F
    const/4 v2, 0x1

    .local v2, "count":I
    aput v9, v5, v10

    .line 218
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    aput v9, v5, v2

    .line 219
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v7, v5, v3

    .line 221
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v8, v5, v2

    .line 222
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v9, v5, v3

    .line 223
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v7, v5, v2

    .line 225
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v9, v5, v3

    .line 226
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v8, v5, v2

    .line 227
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v7, v5, v3

    .line 229
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v9, v5, v2

    .line 230
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v8, v5, v3

    .line 231
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v7, v5, v2

    .line 233
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v8, v5, v3

    .line 234
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v9, v5, v2

    .line 235
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v7, v5, v3

    .line 237
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v8, v5, v2

    .line 238
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput v8, v5, v3

    .line 239
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput v7, v5, v2

    const/16 v6, 0xc

    .line 241
    new-array v4, v6, [F

    .line 243
    .local v4, "texcoords":[F
    const/4 v0, 0x1

    .local v0, "c":I
    aput v7, v4, v10

    .line 244
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    aput v7, v4, v0

    .line 246
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput v8, v4, v1

    .line 247
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v7, v4, v0

    .line 249
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput v7, v4, v1

    .line 250
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v8, v4, v0

    .line 252
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput v7, v4, v1

    .line 253
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v8, v4, v0

    .line 255
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput v8, v4, v1

    .line 256
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v7, v4, v0

    .line 258
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput v8, v4, v1

    .line 259
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v8, v4, v0

    .line 261
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 262
    iget-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 263
    iget-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    array-length v6, v4

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 266
    iget-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 267
    iget-object v6, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    return-void
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 10
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const v9, 0x3f7d70a4    # 0.99f

    const v8, -0x40828f5c    # -0.99f

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 124
    iget-object v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/op/DrawOp;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 179
    return v4

    .line 127
    :pswitch_0
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 128
    .local v0, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 129
    iget-object v2, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v3, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v2, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const v3, 0x84c0

    invoke-static {v2, v3}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    .line 131
    iget-object v2, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v3, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-boolean v4, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureH:Z

    iget-boolean v5, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/meizu/common/renderer/effect/texture/Texture;->updateTransformMatrix(Lcom/meizu/common/renderer/effect/GLCanvas;ZZ)V

    const v1, 0x3c23d70a    # 0.01f

    .line 134
    .local v1, "tzz":F
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 135
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v6, v6, v9}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 137
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 140
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 141
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v6, v6, v8}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 142
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3, v6, v7, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 144
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 147
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 148
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v8, v6, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 149
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3, v6, v7, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 151
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 154
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 155
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v9, v6, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 156
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v6, v7, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 158
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 160
    iget-boolean v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mDrawTopBottom:Z

    if-nez v2, :cond_1

    .line 175
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 176
    const/4 v2, 0x1

    return v2

    .line 129
    .end local v1    # "tzz":F
    :cond_0
    return v4

    .line 162
    .restart local v1    # "tzz":F
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 163
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v6, v9, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 164
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3, v7, v6, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 166
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 169
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 170
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 171
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v7, v6, v6}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 173
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected drawSelf(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 3
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 193
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 195
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 196
    return-void
.end method

.method public drawTopottom(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mDrawTopBottom:Z

    .line 120
    return-void
.end method

.method protected getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 12
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 200
    iget v11, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 201
    .local v11, "width":I
    iget v10, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .local v10, "height":I
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-static {v0, v1, v11, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 204
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    const/high16 v1, -0x41800000    # -0.25f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, -0x41800000    # -0.25f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/renderer/effect/StateMachine;->frustumM(FFFFFF)V

    .line 205
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/meizu/common/renderer/effect/StateMachine;->setLookAt(FFFFFFFFF)V

    .line 208
    return-void
.end method
