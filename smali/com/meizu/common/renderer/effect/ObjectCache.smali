.class public Lcom/meizu/common/renderer/effect/ObjectCache;
.super Ljava/lang/Object;
.source "ObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private mMaxSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 13
    iput v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    .line 18
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mClass:Ljava/lang/Class;

    .line 19
    iput p2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    :try_start_1
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 29
    .local v1, "o":Ljava/lang/Object;, "TT;"
    :try_start_2
    monitor-exit p0

    return-object v1

    .line 25
    .end local v1    # "o":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 33
    monitor-exit p0

    return-object v2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 34
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "cache":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    if-lt v1, v2, :cond_3

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    return-void

    .line 39
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 42
    :cond_2
    monitor-exit p0

    return-void

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "caches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 53
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "cache":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    if-ge v2, v3, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/ObjectCache;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v0    # "cache":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
