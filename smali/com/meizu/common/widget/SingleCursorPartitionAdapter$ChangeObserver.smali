.class Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SingleCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SingleCursorPartitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;)V
    .locals 1

    .prologue
    .line 386
    iput-object p1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;->this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;

    .line 387
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 388
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;->this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->onContentChanged()V

    .line 398
    return-void
.end method
