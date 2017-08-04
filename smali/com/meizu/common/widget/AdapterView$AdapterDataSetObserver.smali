.class Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/meizu/common/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 797
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 845
    return-void
.end method

.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 804
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v1, v1, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    .line 805
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->rememberSyncState()V

    .line 816
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->checkFocus()V

    .line 817
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->requestLayout()V

    .line 818
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v0, v0, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v0, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/AdapterView;->access$000(Lcom/meizu/common/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 812
    iput-object v2, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 822
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 824
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v1, v1, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    .line 832
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput v2, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 833
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput v3, v0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 834
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput-wide v4, v0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 835
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput v3, v0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 836
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput-wide v4, v0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 837
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iput-boolean v2, v0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 839
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->checkFocus()V

    .line 840
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->requestLayout()V

    .line 841
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-static {v0}, Lcom/meizu/common/widget/AdapterView;->access$100(Lcom/meizu/common/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0
.end method
