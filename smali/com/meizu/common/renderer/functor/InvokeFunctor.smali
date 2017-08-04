.class public Lcom/meizu/common/renderer/functor/InvokeFunctor;
.super Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.source "InvokeFunctor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invokeFunctorInternal(Z)Z

    .line 17
    return-void
.end method

.method public invoke(Z)V
    .locals 0
    .param p1, "waitForCompletion"    # Z

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invokeFunctorInternal(Z)Z

    .line 21
    return-void
.end method

.method protected invokeFunctorInternal(Z)Z
    .locals 9
    .param p1, "waitForCompletion"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 24
    iget-wide v2, p0, Lcom/meizu/common/renderer/functor/InvokeFunctor;->mNativeFunctor:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 34
    sget-object v2, Lcom/meizu/common/renderer/functor/InvokeFunctor;->sMethod_invokeFunctor:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 43
    :cond_0
    return v6

    .line 26
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 27
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    invoke-virtual {p0, v8}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->onInvoke(I)V

    .line 32
    return v8

    :cond_2
    const-string/jumbo v2, "glrenderer"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeFunctor fail,sdk version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v6

    .line 36
    .end local v0    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_3
    :try_start_0
    sget-object v2, Lcom/meizu/common/renderer/functor/InvokeFunctor;->sMethod_invokeFunctor:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/meizu/common/renderer/functor/InvokeFunctor;->mNativeFunctor:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return v8

    .line 39
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "glrenderer"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeFunctor method doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
