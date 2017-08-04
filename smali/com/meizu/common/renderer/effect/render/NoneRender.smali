.class public Lcom/meizu/common/renderer/effect/render/NoneRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "NoneRender.java"


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string/jumbo v0, "__none"

    .line 13
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/NoneRender;->mKey:Ljava/lang/String;

    .line 14
    return-void
.end method
