.class public Lcom/meizu/common/renderer/effect/render/StaticBlurRender;
.super Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.source "StaticBlurRender.java"


# instance fields
.field protected mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field protected mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

.field private mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 16
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 17
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    .line 21
    invoke-static {p1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/GaussianRender;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    const-string/jumbo v0, "__static_blur"

    .line 22
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mKey:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .locals 12
    .param p1, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->skipBlur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getRadius()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v9, v0

    .line 30
    .local v9, "radius":I
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getPassCount()I

    move-result v8

    .line 31
    .local v8, "passCount":I
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getScale()F

    move-result v10

    .line 33
    .local v10, "scale":F
    int-to-float v0, p2

    mul-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v4, v0

    .line 34
    .local v4, "width":I
    int-to-float v0, p3

    mul-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v5, v0

    .line 36
    .local v5, "height":I
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v5, v1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v11

    .line 37
    .local v11, "tmpFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v5, v1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object v7

    .line 38
    .local v7, "outFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v11, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 39
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 40
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v4, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 41
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput v5, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 42
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 43
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 44
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityModelM()V

    .line 45
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->identityTexM()V

    .line 46
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    invoke-virtual {v0, v9}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->setRadius(I)V

    const/4 v6, 0x0

    .line 47
    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_1

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 60
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 62
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 63
    invoke-static {v7}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->newInstance(Ljava/lang/Object;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v0

    return-object v0

    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "i":I
    .end local v7    # "outFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    .end local v8    # "passCount":I
    .end local v9    # "radius":I
    .end local v10    # "scale":F
    .end local v11    # "tmpFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 48
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    .restart local v6    # "i":I
    .restart local v7    # "outFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    .restart local v8    # "passCount":I
    .restart local v9    # "radius":I
    .restart local v10    # "scale":F
    .restart local v11    # "tmpFrameBuffer":Lcom/meizu/common/renderer/effect/FrameBuffer;
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v11}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 50
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->setDirection(Z)V

    .line 51
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 53
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-virtual {v11}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 54
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 55
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->setDirection(Z)V

    .line 56
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mEffectRender:Lcom/meizu/common/renderer/effect/render/GaussianRender;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 48
    goto :goto_1
.end method
