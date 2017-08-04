.class public Lcom/flyme/systemui/recents/model/BitmapReusedCache;
.super Ljava/lang/Object;
.source "BitmapReusedCache.java"


# static fields
.field private static isAlive:Z

.field private static final mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->mPool:Ljava/util/LinkedList;

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->isAlive:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->mPool:Ljava/util/LinkedList;

    monitor-enter v0

    .line 33
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->isAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 38
    sget-object v1, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->mPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 39
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->isAlive:Z

    .line 40
    sget-object v0, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
