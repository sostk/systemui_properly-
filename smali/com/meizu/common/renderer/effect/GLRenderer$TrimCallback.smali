.class Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrimCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/renderer/effect/GLRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/renderer/effect/GLRenderer$1;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 229
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v3, 0x50

    const/16 v2, 0x28

    const/16 v1, 0x14

    .line 213
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    if-ge p1, v3, :cond_1

    .line 217
    if-ge p1, v2, :cond_3

    .line 220
    if-ge p1, v1, :cond_5

    .line 224
    :goto_0
    return-void

    .line 213
    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$800()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    :goto_1
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$800()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->invoke()V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {v0, v3}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$802(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    goto :goto_1

    .line 218
    :cond_3
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 219
    :goto_2
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->invoke()V

    goto :goto_0

    .line 218
    :cond_4
    new-instance v0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {v0, v2}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$902(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    goto :goto_2

    .line 221
    :cond_5
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 222
    :goto_3
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->invoke()V

    goto :goto_0

    .line 221
    :cond_6
    new-instance v0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1002(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    goto :goto_3
.end method
