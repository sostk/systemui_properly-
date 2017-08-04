.class Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SingleCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SingleCursorPartitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;->this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;Lcom/meizu/common/widget/SingleCursorPartitionAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/SingleCursorPartitionAdapter;
    .param p2, "x1"    # Lcom/meizu/common/widget/SingleCursorPartitionAdapter$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;-><init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;->this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;->this$0:Lcom/meizu/common/widget/SingleCursorPartitionAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->notifyDataSetInvalidated()V

    .line 410
    return-void
.end method
