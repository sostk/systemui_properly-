.class public Lcom/meizu/common/renderer/effect/render/RenderGroup;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "RenderGroup.java"


# instance fields
.field protected mRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/renderer/effect/render/Render;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public addRender(Lcom/meizu/common/renderer/effect/render/Render;)V
    .locals 3
    .param p1, "render"    # Lcom/meizu/common/renderer/effect/render/Render;

    .prologue
    const/4 v0, 0x0

    .line 21
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/Render;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/render/Render;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/Render;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    .line 35
    return-object v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/render/Render;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/Render;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/render/Render;

    return-object v1
.end method

.method public trimResources(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    const/4 v0, 0x0

    .line 46
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 50
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/render/Render;

    invoke-virtual {v1, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
