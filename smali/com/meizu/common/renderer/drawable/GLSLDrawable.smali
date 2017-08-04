.class public Lcom/meizu/common/renderer/drawable/GLSLDrawable;
.super Lcom/meizu/common/renderer/drawable/GLDrawable;
.source "GLSLDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "glsl"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getParameter1()F
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getParameter1()F

    move-result v0

    return v0
.end method

.method public getParameter2()F
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getParameter2()F

    move-result v0

    return v0
.end method

.method public getParameter3()F
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getParameter3()F

    move-result v0

    return v0
.end method

.method public getTime()F
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->getTime()F

    move-result v0

    return v0
.end method

.method public setParameter1(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->setParameter1(F)V

    .line 38
    return-void
.end method

.method public setParameter2(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->setParameter2(F)V

    .line 41
    return-void
.end method

.method public setParameter3(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->setParameter3(F)V

    .line 44
    return-void
.end method

.method public setTime(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLSLFunctor;->setTime(F)V

    .line 28
    return-void
.end method

.method protected bridge synthetic state()Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    move-result-object v0

    return-object v0
.end method

.method protected state()Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    check-cast v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable$GLSLState;

    return-object v0
.end method
