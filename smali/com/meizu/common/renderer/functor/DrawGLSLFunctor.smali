.class public Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;
.super Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.source "DrawGLSLFunctor.java"


# instance fields
.field private mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

.field private mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mGLSL:Ljava/lang/String;

.field private mParameter1:F

.field private mParameter2:F

.field private mParameter3:F

.field private mTime:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "glsl"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;-><init>()V

    .line 21
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    .line 22
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    .line 31
    iput-object p2, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mGLSL:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mEffectKey:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getGLSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mGLSL:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter1()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter1:F

    return v0
.end method

.method public getParameter2()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter2:F

    return v0
.end method

.method public getParameter3()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter3:F

    return v0
.end method

.method public getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/GLSLRender;
    .locals 3
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mEffectKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    .line 38
    .local v0, "render":Lcom/meizu/common/renderer/effect/render/Render;
    if-eqz v0, :cond_0

    .line 43
    :goto_0
    check-cast v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    return-object v0

    .line 39
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    :cond_0
    new-instance v0, Lcom/meizu/common/renderer/effect/render/GLSLRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCanvas()Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mGLSL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/renderer/effect/render/GLSLRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;Ljava/lang/String;)V

    .line 40
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mEffectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/Render;->setKey(Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    goto :goto_0
.end method

.method public bridge synthetic getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/Render;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/GLSLRender;

    move-result-object v0

    return-object v0
.end method

.method public getTime()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mTime:F

    return v0
.end method

.method protected onDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .locals 11
    .param p1, "glInfo"    # Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCanvas()Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    move-result-object v0

    .line 49
    .local v0, "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->onRenderPreDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/GLSLRender;

    move-result-object v4

    .line 51
    .local v4, "render":Lcom/meizu/common/renderer/effect/render/GLSLRender;
    if-nez v4, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->valid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 52
    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 54
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 55
    .local v6, "width":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 56
    .local v1, "height":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/16 v9, 0xc

    aget v8, v8, v9

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 57
    .local v2, "left":I
    iget v7, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget-object v9, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/16 v10, 0xd

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 58
    .local v5, "top":I
    invoke-static {v2, v5, v6, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 60
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget-object v8, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    iput-object v8, v7, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 61
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    iput v2, v7, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->x:I

    .line 62
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    iput v5, v7, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->y:I

    .line 63
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    iput v6, v7, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->width:I

    .line 64
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawGLSLOp:Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;

    iput v1, v7, Lcom/meizu/common/renderer/effect/op/DrawGLSLOp;->height:I

    .line 65
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mTime:F

    invoke-virtual {v4, v7}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->setTime(F)V

    .line 66
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter1:F

    invoke-virtual {v4, v7}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->setParameter1(F)V

    .line 67
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter2:F

    invoke-virtual {v4, v7}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->setParameter2(F)V

    .line 68
    iget v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter3:F

    invoke-virtual {v4, v7}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->setParameter3(F)V

    .line 69
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {v4, v7}, Lcom/meizu/common/renderer/effect/render/GLSLRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 70
    iget-object v7, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 72
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->onRenderPostDraw()V

    .line 73
    monitor-exit p0

    .line 75
    return-void

    .line 73
    .end local v0    # "canvas":Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v4    # "render":Lcom/meizu/common/renderer/effect/render/GLSLRender;
    .end local v5    # "top":I
    .end local v6    # "width":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public setParameter1(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter1:F

    .line 83
    return-void
.end method

.method public setParameter2(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter2:F

    .line 86
    return-void
.end method

.method public setParameter3(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mParameter3:F

    .line 89
    return-void
.end method

.method public setTime(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->mTime:F

    .line 79
    return-void
.end method
