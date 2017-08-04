.class public Lcom/meizu/common/renderer/effect/render/SketchEffectRender;
.super Lcom/meizu/common/renderer/effect/render/RenderGroup;
.source "SketchEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;,
        Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;
    }
.end annotation


# instance fields
.field private mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

.field private mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

.field private mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/RenderGroup;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 19
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 20
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const-string/jumbo v0, "__sketch"

    .line 23
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mKey:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    .line 25
    new-instance v0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    .line 26
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method private drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 9
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 42
    iget-object v6, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 43
    .local v6, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 44
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 45
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 46
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iget v3, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    invoke-virtual {v0, v1, v3, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v7

    .line 47
    .local v7, "frameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 48
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityModelM()V

    .line 50
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityTexM()V

    .line 51
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 52
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget v4, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iget v5, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 53
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 54
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 56
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 57
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 59
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 62
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 63
    return-void
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/op/DrawOp;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    return v0

    .line 35
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 36
    const/4 v0, 0x1

    return v0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
