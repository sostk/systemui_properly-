.class public Lcom/meizu/common/renderer/effect/render/CubeEffectRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "CubeEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;
    }
.end annotation


# static fields
.field public static final CUBE:Ljava/lang/String; = "__cube"


# instance fields
.field private mAngleX:I

.field private mAngleY:I

.field private mAngleZ:I

.field private mCubeRender:Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

.field private mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 24
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 25
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const-string/jumbo v0, "__cube"

    .line 28
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mKey:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;-><init>(Lcom/meizu/common/renderer/effect/render/CubeEffectRender;Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mCubeRender:Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

    .line 30
    return-void
.end method

.method private drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 11
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    iget-object v6, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 61
    .local v6, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    iget v4, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    .line 62
    .local v4, "width":I
    iget v5, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    .line 63
    .local v5, "height":I
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v9, v9}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v7

    .line 64
    .local v7, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v9, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->clearFbo:Z

    .line 68
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v9, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->cullFace:Z

    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v9, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->depthTest:Z

    .line 70
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v4, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 71
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v5, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 72
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 74
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityModelM()V

    .line 76
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityTexM()V

    .line 77
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleX:I

    if-nez v0, :cond_0

    .line 80
    :goto_0
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleY:I

    if-nez v0, :cond_1

    .line 83
    :goto_1
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleZ:I

    if-nez v0, :cond_2

    .line 87
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mCubeRender:Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 90
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 92
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 93
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 95
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 96
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/Render;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 97
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 98
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v10, v8, v8}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8, v10, v8}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleZ:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8, v8, v10}, Lcom/meizu/common/renderer/effect/StateMachine;->rotate(FFFF)V

    goto :goto_2
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 50
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/op/DrawOp;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 53
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public drawTopottom(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mCubeRender:Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->drawTopottom(Z)V

    .line 34
    return-void
.end method

.method public setAngleX(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleX:I

    .line 38
    return-void
.end method

.method public setAngleY(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleY:I

    .line 42
    return-void
.end method

.method public setAngleZ(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mAngleZ:I

    .line 46
    return-void
.end method

.method public trimResources(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/CubeEffectRender;->mCubeRender:Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/renderer/effect/render/CubeEffectRender$CubeRender;->trimResources(IZ)V

    .line 105
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 106
    return-void
.end method
