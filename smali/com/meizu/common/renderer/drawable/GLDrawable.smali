.class public abstract Lcom/meizu/common/renderer/drawable/GLDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GLDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
    }
.end annotation


# instance fields
.field protected mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;


# direct methods
.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 26
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->draw(Landroid/graphics/Canvas;IIII)V

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    iget v1, v1, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mChangingConfigurations:I

    .line 70
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->invalidate()V

    .line 35
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->trimResources(IZ)V

    .line 50
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getAlpha()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->setAlpha(I)V

    .line 40
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 82
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 61
    .local v0, "changed":Z
    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->recycle()V

    goto :goto_0
.end method

.method protected abstract state()Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
.end method
