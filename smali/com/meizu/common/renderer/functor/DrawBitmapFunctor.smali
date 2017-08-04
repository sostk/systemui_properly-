.class public Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;
.super Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.source "DrawBitmapFunctor.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field protected mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;-><init>()V

    .line 18
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 19
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-super/range {v0 .. v5}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->draw(Landroid/graphics/Canvas;IIII)V

    .line 41
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 7
    .param p1, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCanvas()Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    move-result-object v6

    .line 50
    .local v6, "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    invoke-virtual {v6, p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->onRenderPreDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V

    .line 52
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getBitmapTextureCache()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/meizu/common/renderer/effect/TextureCache;->get(Landroid/graphics/Bitmap;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v1

    .line 53
    .local v1, "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    invoke-virtual {v1, v6}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    .line 56
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {p0, v1}, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->isBlend(Lcom/meizu/common/renderer/effect/texture/Texture;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    .line 57
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mAlpha:I

    iput v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    .line 58
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v2, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    iput v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v2, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iput v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 60
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mEffectKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 69
    invoke-virtual {p0, v6}, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0, v2}, Lcom/meizu/common/renderer/effect/render/Render;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 70
    invoke-virtual {v6}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->onRenderPostDraw()V

    .line 71
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 72
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 53
    :cond_2
    monitor-exit p0

    return-void

    .line 73
    .end local v1    # "texture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .end local v6    # "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBitmapFunctor;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method
