.class public Lcom/meizu/media/render/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/render/RenderManager$IRenderObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/media/render/RenderManager;


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/media/render/RenderManager$IRenderObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererContext:Lcom/meizu/media/render/RendererContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/media/render/RenderManager;->sInstance:Lcom/meizu/media/render/RenderManager;

    .line 5
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/meizu/media/render/RendererContext;

    invoke-direct {v0}, Lcom/meizu/media/render/RendererContext;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RenderManager;->mRendererContext:Lcom/meizu/media/render/RendererContext;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/RenderManager;->mObservers:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/meizu/media/render/RenderManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/media/render/RenderManager;->sInstance:Lcom/meizu/media/render/RenderManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/meizu/media/render/RenderManager;

    invoke-direct {v0}, Lcom/meizu/media/render/RenderManager;-><init>()V

    sput-object v0, Lcom/meizu/media/render/RenderManager;->sInstance:Lcom/meizu/media/render/RenderManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/meizu/media/render/RenderManager;->sInstance:Lcom/meizu/media/render/RenderManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/meizu/media/render/RenderManager$IRenderObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/meizu/media/render/RenderManager$IRenderObserver;

    .prologue
    monitor-enter p0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/render/RenderManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 25
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRendererContext()Lcom/meizu/media/render/RendererContext;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/media/render/RenderManager;->mRendererContext:Lcom/meizu/media/render/RendererContext;

    return-object v0
.end method
