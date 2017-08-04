.class public abstract Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "AbstractBlurRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;,
        Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    }
.end annotation


# instance fields
.field protected final mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 23
    new-instance v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    .line 24
    return-void
.end method


# virtual methods
.method public blur2Target(Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .locals 3
    .param p1, "element"    # Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .prologue
    .line 29
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
.end method

.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 4
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 49
    .local v0, "element":Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->blur2Target(Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v1

    .line 50
    .local v1, "output":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    if-nez v1, :cond_0

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 54
    invoke-static {v1, v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->access$100(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V

    .line 55
    return v3

    .line 51
    :cond_0
    invoke-static {v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->access$000(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    goto :goto_0
.end method

.method public drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 43
    return-void
.end method

.method public drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .locals 2
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;
    .param p2, "origTexture"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-static {v1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    move-result-object v0

    .line 34
    .local v0, "render":Lcom/meizu/common/renderer/effect/render/BlurFilterRender;
    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 35
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getFilterColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setFilterColor(I)V

    .line 36
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getIntensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setIntensity(F)V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    .line 39
    return-void
.end method

.method public getParameters()Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    return-object v0
.end method

.method public setParameters(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z
    .locals 1
    .param p1, "p"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    move-result v0

    return v0
.end method

.method protected skipBlur()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
