.class public Lcom/meizu/common/renderer/drawable/GLRendererDrawable;
.super Lcom/meizu/common/renderer/drawable/GLDrawable;
.source "GLRendererDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;,
        Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;

    .prologue
    .line 15
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;-><init>(Lcom/meizu/common/renderer/drawable/GLRendererDrawable$Renderer;)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;)V

    .line 16
    return-void
.end method


# virtual methods
.method public setTrimLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable;->state()Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;->functor()Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLRendererFunctor;->setTrimLevel(I)V

    .line 24
    return-void
.end method

.method protected bridge synthetic state()Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLRendererDrawable;->state()Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;

    move-result-object v0

    return-object v0
.end method

.method protected state()Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLRendererDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    check-cast v0, Lcom/meizu/common/renderer/drawable/GLRendererDrawable$GLRendererState;

    return-object v0
.end method
