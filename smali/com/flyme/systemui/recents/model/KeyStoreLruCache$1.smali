.class Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;
.super Landroid/util/LruCache;
.source "KeyStoreLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/model/KeyStoreLruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/model/KeyStoreLruCache;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/model/KeyStoreLruCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 37
    .local p1, "this$0":Lcom/flyme/systemui/recents/model/KeyStoreLruCache;, "Lcom/flyme/systemui/recents/model/KeyStoreLruCache<TV;>;"
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/flyme/systemui/recents/model/KeyStoreLruCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "taskId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "oldV":Ljava/lang/Object;, "TV;"
    .local p4, "newV":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;->this$0:Lcom/flyme/systemui/recents/model/KeyStoreLruCache;

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/KeyStoreLruCache;->mTaskKeys:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "taskId"    # Ljava/lang/Object;
    .param p3, "oldV"    # Ljava/lang/Object;
    .param p4, "newV"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "taskId":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/recents/model/KeyStoreLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
