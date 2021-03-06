.class public Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
.super Ljava/lang/Object;
.source "ReferenceCountedTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$1;,
        Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$2;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCount:I

.field mDecrementRunnable:Ljava/lang/Runnable;

.field mErrorRunnable:Ljava/lang/Runnable;

.field mFirstIncRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIncrementRunnable:Ljava/lang/Runnable;

.field mLastDecRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstIncRunnable"    # Ljava/lang/Runnable;
    .param p3, "lastDecRunnable"    # Ljava/lang/Runnable;
    .param p4, "errorRunanable"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$1;-><init>(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger$2;-><init>(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mContext:Landroid/content/Context;

    .line 54
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    iput-object p4, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 4

    .prologue
    .line 87
    iget v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 88
    iget v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    :cond_0
    iget v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-gez v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, "numRunnables":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    .end local v1    # "numRunnables":I
    :cond_3
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "Invalid ref count"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Invalid ref count"

    invoke-static {v2, v3}, Lcom/flyme/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decrementAsRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public increment()V
    .locals 3

    .prologue
    .line 61
    iget v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    iget v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 63
    .local v1, "numRunnables":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
