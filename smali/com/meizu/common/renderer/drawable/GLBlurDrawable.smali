.class public Lcom/meizu/common/renderer/drawable/GLBlurDrawable;
.super Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;
.source "GLBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(F)V

    .line 19
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 22
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V

    .line 23
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->parameter()Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->setLevel(F)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .prologue
    .line 14
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic getBlurLevel()F
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->getBlurLevel()F

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isStatic()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBlurLevel(F)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setBlurLevel(F)V

    return-void
.end method

.method public bridge synthetic setColorFilter(I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setColorFilter(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setIgnoreLayer(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->setIgnoreLayer(Z)V

    .line 36
    return-void
.end method

.method public bridge synthetic setIntensity(F)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setIntensity(F)V

    return-void
.end method

.method public bridge synthetic setPassCount(I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setPassCount(I)V

    return-void
.end method

.method public bridge synthetic setRadius(I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setRadius(I)V

    return-void
.end method

.method public setRegionUpdate(Z)V
    .locals 1
    .param p1, "regionUpdate"    # Z

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->setRegionUpdate(Z)V

    .line 32
    return-void
.end method

.method public bridge synthetic setScale(F)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setScale(F)V

    return-void
.end method

.method public setStatic(Z)V
    .locals 1
    .param p1, "isStatic"    # Z

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->setStatic(Z)V

    .line 44
    return-void
.end method

.method protected bridge synthetic state()Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    return-object v0
.end method

.method protected state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    check-cast v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    return-object v0
.end method

.method protected bridge synthetic state()Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object v0

    return-object v0
.end method
