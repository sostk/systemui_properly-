.class public Lcom/meizu/media/render/GLBlurView;
.super Lcom/meizu/media/render/RenderView;
.source "GLBlurView.java"

# interfaces
.implements Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/render/GLBlurView$BlurRender;,
        Lcom/meizu/media/render/GLBlurView$1;,
        Lcom/meizu/media/render/GLBlurView$2;
    }
.end annotation


# instance fields
.field private mOnFrameChangedListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

.field private mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

.field private mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;


# direct methods
.method static synthetic -get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/media/render/RenderView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/meizu/media/render/GLBlurView$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/render/GLBlurView$1;-><init>(Lcom/meizu/media/render/GLBlurView;)V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

    .line 87
    new-instance v0, Lcom/meizu/media/render/GLBlurView$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/render/GLBlurView$2;-><init>(Lcom/meizu/media/render/GLBlurView;)V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mOnFrameChangedListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    .line 30
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurView;->initGLBlurView()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/render/RenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/meizu/media/render/GLBlurView$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/render/GLBlurView$1;-><init>(Lcom/meizu/media/render/GLBlurView;)V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

    .line 87
    new-instance v0, Lcom/meizu/media/render/GLBlurView$2;

    invoke-direct {v0, p0}, Lcom/meizu/media/render/GLBlurView$2;-><init>(Lcom/meizu/media/render/GLBlurView;)V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mOnFrameChangedListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    .line 25
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurView;->initGLBlurView()V

    .line 23
    return-void
.end method


# virtual methods
.method protected initGLBlurView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v2}, Lcom/meizu/media/render/GLBlurView;->init(Lcom/meizu/media/render/RendererCore;)V

    .line 35
    new-instance v0, Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    .line 36
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-virtual {v0, p0}, Lcom/meizu/media/render/GLBlurViewRenderer;->setOnRenderListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;)V

    .line 37
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    iget-object v1, p0, Lcom/meizu/media/render/GLBlurView;->mOnFrameChangedListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->setOnFrameChangedListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;)V

    .line 38
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    iget-object v1, p0, Lcom/meizu/media/render/GLBlurView;->mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->setOnRenderVisibilityListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;)V

    .line 39
    new-instance v0, Lcom/meizu/media/render/GLBlurView$BlurRender;

    invoke-direct {v0, p0, v2}, Lcom/meizu/media/render/GLBlurView$BlurRender;-><init>(Lcom/meizu/media/render/GLBlurView;Lcom/meizu/media/render/GLBlurView$BlurRender;)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/GLBlurView;->setRender(Lcom/meizu/media/render/BaseRender;)V

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/GLBlurView;->setRenderModeType(I)V

    .line 33
    return-void
.end method

.method public onRequestRender()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurView;->getRendererCore()Lcom/meizu/media/render/RendererCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->update()V

    .line 64
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/media/render/RenderView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 147
    new-instance v0, Lcom/meizu/media/render/GLBlurView$BlurRender;

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/render/GLBlurView$BlurRender;-><init>(Lcom/meizu/media/render/GLBlurView;Lcom/meizu/media/render/GLBlurView$BlurRender;)V

    invoke-virtual {p0, v0}, Lcom/meizu/media/render/GLBlurView;->setRender(Lcom/meizu/media/render/BaseRender;)V

    .line 149
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView;->mRenderer:Lcom/meizu/media/render/GLBlurViewRenderer;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurView;->getRendererCore()Lcom/meizu/media/render/RendererCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/RendererCore;->update()V

    .line 143
    :cond_0
    return-void
.end method
