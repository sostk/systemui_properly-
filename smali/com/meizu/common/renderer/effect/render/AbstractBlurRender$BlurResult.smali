.class public Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
.super Ljava/lang/Object;
.source "AbstractBlurRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurResult"
.end annotation


# static fields
.field private static final CACHED:Lcom/meizu/common/renderer/effect/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/common/renderer/effect/ObjectCache",
            "<",
            "Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private framebuffer:Lcom/meizu/common/renderer/effect/FrameBuffer;

.field private recycled:Z

.field private texture:Lcom/meizu/common/renderer/effect/texture/Texture;

.field private useTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/meizu/common/renderer/effect/ObjectCache;

    const-class v1, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/renderer/effect/ObjectCache;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->CACHED:Lcom/meizu/common/renderer/effect/ObjectCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;)Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycle(Z)V

    return-void
.end method

.method private getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->useTexture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->framebuffer:Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    goto :goto_0
.end method

.method public static getTexture(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Lcom/meizu/common/renderer/effect/texture/Texture;)Lcom/meizu/common/renderer/effect/texture/Texture;
    .locals 1
    .param p0, "o"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .param p1, "defaultText"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    return-object p1
.end method

.method private isRecycled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycled:Z

    return v0
.end method

.method public static newInstance(Ljava/lang/Object;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v1, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->CACHED:Lcom/meizu/common/renderer/effect/ObjectCache;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/ObjectCache;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    .line 104
    .local v0, "cached":Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    iput-boolean v2, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycled:Z

    .line 105
    instance-of v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    if-nez v1, :cond_0

    .line 109
    check-cast p0, Lcom/meizu/common/renderer/effect/texture/Texture;

    .end local p0    # "o":Ljava/lang/Object;
    iput-object p0, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->useTexture:Z

    .line 112
    :goto_0
    return-object v0

    .line 106
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .end local p0    # "o":Ljava/lang/Object;
    iput-object p0, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->framebuffer:Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 107
    iput-boolean v2, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->useTexture:Z

    goto :goto_0
.end method

.method public static recycle(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V
    .locals 0
    .param p0, "o"    # Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .param p1, "hasEglContext"    # Z

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycle(Z)V

    goto :goto_0
.end method

.method private recycle(Z)V
    .locals 3
    .param p1, "hasEglContext"    # Z

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->useTexture:Z

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->framebuffer:Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V

    .line 91
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->framebuffer:Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 93
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycled:Z

    .line 94
    sget-object v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->CACHED:Lcom/meizu/common/renderer/effect/ObjectCache;

    invoke-virtual {v0, p0}, Lcom/meizu/common/renderer/effect/ObjectCache;->put(Ljava/lang/Object;)V

    .line 95
    return-void

    .line 84
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 88
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    goto :goto_0
.end method
