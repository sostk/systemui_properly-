.class public Lcom/meizu/common/renderer/functor/DrawBlurFunctor;
.super Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;
.source "DrawBlurFunctor.java"


# instance fields
.field private mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

.field private mIgnoreLayer:Z

.field private mIsStatic:Z

.field private mRegionUpdate:Z

.field private mSourceClipBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;-><init>(Z)V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    .line 23
    iput-boolean v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIgnoreLayer:Z

    .line 24
    iput-boolean v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mRegionUpdate:Z

    .line 28
    return-void
.end method

.method private caculaTargetBounds(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z
    .locals 7
    .param p1, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v0, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    iget v1, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipLeft:I

    int-to-float v1, v1

    iget v2, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipTop:I

    int-to-float v2, v2

    iget v3, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipRight:I

    int-to-float v3, v3

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipBottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/EffectUtils;->window2View([FFFFFLandroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "glrenderer"

    const-string/jumbo v1, "Clip region is not intersected with source region."

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v6

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/meizu/common/renderer/effect/EffectUtils;->view2Window([FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method private copyTexture(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z
    .locals 12
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .param p2, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    const v11, 0x8d40

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isStatic()Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 85
    .local v9, "width":I
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 86
    .local v8, "height":I
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-nez v0, :cond_5

    .line 89
    :cond_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, v2, v10}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 90
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    const/16 v2, 0x1907

    invoke-virtual {v0, v9, v8, v2, v10}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 93
    :goto_0
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    if-nez v0, :cond_6

    .line 98
    :cond_2
    :goto_1
    iget-boolean v0, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->isLayer:Z

    if-nez v0, :cond_7

    .line 102
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->bindTexture(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/16 v0, 0xde1

    .line 103
    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 106
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 107
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iget-object v6, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 103
    invoke-static/range {v0 .. v7}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 112
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->getRootBindingFrameBuffer()I

    move-result v0

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 113
    return v10

    .line 80
    .end local v8    # "height":I
    .end local v9    # "width":I
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mInvalidate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz v0, :cond_0

    .line 81
    return v1

    .line 86
    .restart local v8    # "height":I
    .restart local v9    # "width":I
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 87
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 88
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v0

    if-ne v0, v8, :cond_1

    goto :goto_0

    .line 93
    :cond_6
    iget-boolean v0, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->isLayer:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "glrenderer"

    const-string/jumbo v2, "has Layer"

    .line 94
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIgnoreLayer:Z

    if-eqz v0, :cond_3

    .line 99
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_2
.end method


# virtual methods
.method protected draw(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 10
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .param p2, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->caculaTargetBounds(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;

    move-result-object v6

    .line 37
    .local v6, "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v6, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->setParameters(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->copyTexture(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    :cond_0
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    if-nez v0, :cond_4

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    invoke-static {v0, v8}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycle(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V

    .line 43
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 47
    invoke-static {v1, v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->getTexture(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Lcom/meizu/common/renderer/effect/texture/Texture;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 53
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v8, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    .line 54
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v8, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    .line 55
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p0, v1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isBlend(Lcom/meizu/common/renderer/effect/texture/Texture;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    .line 56
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mAlpha:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    .line 57
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 58
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v1, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iput v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 60
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mEffectKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v6, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 64
    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mRegionUpdate:Z

    if-eqz v0, :cond_5

    .line 69
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    .line 70
    iput-boolean v7, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mInvalidate:Z

    .line 71
    return-void

    .line 33
    .end local v6    # "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    :cond_2
    return-void

    .line 38
    .restart local v6    # "render":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    .line 39
    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "glrenderer"

    const-string/jumbo v1, "do blur.."

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, v1, v8}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 66
    iput-object v9, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    goto :goto_2
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    return v0
.end method

.method public setIgnoreLayer(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIgnoreLayer:Z

    .line 138
    return-void
.end method

.method public setRegionUpdate(Z)V
    .locals 0
    .param p1, "regionUpdate"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mRegionUpdate:Z

    .line 142
    return-void
.end method

.method public setStatic(Z)V
    .locals 0
    .param p1, "isStatic"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    .line 118
    return-void
.end method

.method public trimResources(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->trimResources(IZ)V

    .line 151
    monitor-enter p0

    const/16 v0, 0x14

    .line 152
    if-ge p1, v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mInvalidate:Z

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, v1, p2}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
