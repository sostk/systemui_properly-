.class public Lcom/meizu/common/renderer/effect/render/WaveEffectRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "WaveEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;
    }
.end annotation


# static fields
.field public static final WAVE:Ljava/lang/String; = "__wave"


# instance fields
.field private mCols:I

.field private mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mProgress:I

.field private mRows:I

.field private mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

.field private mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/16 v0, 0xc

    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 19
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mCols:I

    .line 20
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mRows:I

    .line 22
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 23
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const-string/jumbo v0, "__wave"

    .line 26
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mKey:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;-><init>(Lcom/meizu/common/renderer/effect/render/WaveEffectRender;Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    .line 28
    return-void
.end method

.method private drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 9
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 51
    iget-object v6, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 52
    .local v6, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    iget v4, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    .line 53
    .local v4, "width":I
    iget v5, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    .line 54
    .local v5, "height":I
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v7

    .line 55
    .local v7, "framebuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 56
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 57
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v8, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->clearFbo:Z

    .line 58
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v8, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->depthTest:Z

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v4, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 60
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v5, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 63
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityModelM()V

    .line 65
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityTexM()V

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mCols:I

    iget v3, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mRows:I

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;->setGrid(II)V

    .line 68
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;->setProgress(I)V

    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 70
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 72
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mProgress:I

    .line 73
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 74
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 76
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 77
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/Render;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 78
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 41
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/op/DrawOp;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 44
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 45
    const/4 v0, 0x1

    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setGrid(II)V
    .locals 0
    .param p1, "cols"    # I
    .param p2, "rows"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mCols:I

    .line 36
    iput p2, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mRows:I

    .line 37
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mProgress:I

    .line 32
    return-void
.end method

.method public trimResources(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/WaveEffectRender;->mWaveRender:Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/renderer/effect/render/WaveEffectRender$WaveRender;->trimResources(IZ)V

    .line 84
    return-void
.end method
