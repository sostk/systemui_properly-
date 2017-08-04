.class public Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;
.super Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;
.source "DrawBlurBitmapFunctor.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "progress"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;-><init>(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected draw(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 13
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .param p2, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v11, -0x41000000    # -0.5f

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 44
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getBitmapTextureCache()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/TextureCache;->get(Landroid/graphics/Bitmap;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v7

    .line 48
    .local v7, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    invoke-virtual {v7, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;

    move-result-object v6

    .line 52
    .local v6, "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v6, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->setParameters(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    .line 53
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycle(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V

    .line 55
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    invoke-static {v1, v7}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->getTexture(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Lcom/meizu/common/renderer/effect/texture/Texture;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    .line 65
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {p0, v7}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->isBlend(Lcom/meizu/common/renderer/effect/texture/Texture;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    .line 66
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mAlpha:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 68
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->getOrientation()I

    move-result v0

    if-nez v0, :cond_6

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->useOrigTexture()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v7, v8

    .end local v7    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :cond_3
    invoke-virtual {v6, v0, v7}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 79
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 80
    iput-boolean v9, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mInvalidate:Z

    .line 81
    return-void

    .line 48
    .end local v6    # "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    .restart local v7    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    :cond_4
    return-void

    .line 53
    .restart local v6    # "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mInvalidate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 73
    :cond_6
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object v0

    invoke-static {v0, v9, v12, v12, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 74
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->getOrientation()I

    move-result v1

    int-to-float v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    move v1, v9

    move v3, v10

    move v4, v10

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 75
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object v0

    invoke-static {v0, v9, v11, v11, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrientation()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurBitmapFunctor;->invalidate()V

    goto :goto_0
.end method

.method protected useOrigTexture()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
