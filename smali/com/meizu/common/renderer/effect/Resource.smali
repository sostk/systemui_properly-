.class public abstract Lcom/meizu/common/renderer/effect/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    if-nez v0, :cond_0

    .line 15
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "glrenderer"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create Resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v0, 0x50

    .line 26
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/Resource;->trimResources(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public releaseResources(Z)V
    .locals 1
    .param p1, "hasEglContext"    # Z

    .prologue
    const/16 v0, 0x50

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/renderer/effect/Resource;->trimResources(IZ)V

    .line 21
    return-void
.end method

.method public abstract trimResources(IZ)V
.end method
