.class public Lcom/flyme/systemui/recents/model/KeyStoreLruCache;
.super Ljava/lang/Object;
.source "KeyStoreLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field mTaskKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;-><init>(Lcom/flyme/systemui/recents/model/KeyStoreLruCache;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    .line 36
    return-void
.end method


# virtual methods
.method final evictAll()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    const-string/jumbo v0, "recents.LruCache"

    const-string/jumbo v1, "evictAll"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 85
    return-void
.end method

.method final get(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    const/4 v6, 0x0

    .line 55
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    iget v3, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;

    .line 56
    .local v0, "lastKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->remove(Lcom/flyme/systemui/recents/model/Task$TaskKey;)V

    .line 61
    return-object v6

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v3, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 69
    :cond_1
    return-object v1
.end method

.method final put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method final remove(Lcom/flyme/systemui/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 80
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    return-void
.end method

.method final trimToSize(I)V
    .locals 3
    .param p1, "cacheSize"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    const-string/jumbo v0, "recents.LruCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trimToSize -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 97
    return-void
.end method
