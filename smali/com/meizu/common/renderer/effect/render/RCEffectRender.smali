.class public Lcom/meizu/common/renderer/effect/render/RCEffectRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "RCEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;
    }
.end annotation


# static fields
.field public static final ROUND_CORNER:Ljava/lang/String; = "__round_corner"


# instance fields
.field private mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

.field private mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 19
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 20
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const-string/jumbo v0, "__round_corner"

    .line 23
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mKey:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    .line 25
    return-void
.end method

.method private drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 9
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    const-string/jumbo v1, "__none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v6, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 47
    .local v6, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 48
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 50
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    iget v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iget v3, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    invoke-virtual {v0, v1, v3, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v7

    .line 51
    .local v7, "frameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 53
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 54
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityModelM()V

    .line 55
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityTexM()V

    .line 56
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 57
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget v4, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->width:I

    iget v5, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->height:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 58
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/Render;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 61
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, v6, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 62
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 64
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 69
    .end local v6    # "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    .end local v7    # "frameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 33
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/op/DrawOp;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    return v0

    .line 36
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->drawTexure(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 37
    const/4 v0, 0x1

    return v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->setRadius(F)V

    .line 29
    return-void
.end method

.method public trimResources(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender;->mRCRender:Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->trimResources(IZ)V

    .line 75
    return-void
.end method
