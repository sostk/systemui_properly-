.class public abstract Lcom/meizu/common/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AdapterView$1;,
        Lcom/meizu/common/widget/AdapterView$SelectionNotifier;,
        Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;,
        Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;,
        Lcom/meizu/common/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field private mContext:Landroid/content/Context;

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/common/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 67
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 231
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 236
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    .line 84
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 94
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 126
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    .line 152
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 158
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 163
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 169
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 201
    iput v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 206
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 225
    iput-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 241
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 891
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 895
    .local v3, "selection":I
    if-gez v3, :cond_1

    .line 900
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/meizu/common/widget/AdapterView;)V

    .line 902
    :goto_0
    return-void

    .line 892
    .end local v3    # "selection":I
    :cond_0
    return-void

    .line 896
    .restart local v3    # "selection":I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 897
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 966
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 967
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_0

    .line 972
    return v2

    .line 968
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 969
    .local v1, "itemCount":I
    if-gtz v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-lez v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-lt v3, v4, :cond_2

    goto :goto_0
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 909
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 913
    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    .line 911
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    .end local p1    # "empty":Z
    :goto_0
    if-nez p1, :cond_2

    .line 754
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 755
    :goto_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AdapterView;->setVisibility(I)V

    .line 757
    :cond_0
    :goto_2
    return-void

    .line 735
    .restart local p1    # "empty":Z
    :cond_1
    const/4 p1, 0x0

    .local p1, "empty":Z
    goto :goto_0

    .line 739
    .end local p1    # "empty":Z
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 744
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AdapterView;->setVisibility(I)V

    .line 750
    :goto_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_2

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AdapterView;->setVisibility(I)V

    goto :goto_3

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 715
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 716
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_4

    :cond_0
    move v1, v4

    .line 717
    .local v1, "empty":Z
    :goto_0
    if-nez v1, :cond_5

    :cond_1
    move v2, v4

    .line 721
    .local v2, "focusable":Z
    :goto_1
    if-nez v2, :cond_6

    :cond_2
    move v5, v3

    :goto_2
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 722
    if-nez v2, :cond_7

    :cond_3
    move v5, v3

    :goto_3
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 723
    iget-object v5, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-nez v5, :cond_8

    .line 726
    :goto_4
    return-void

    .line 716
    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_4
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_0

    .line 717
    .restart local v1    # "empty":Z
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    goto :goto_1

    .line 721
    .restart local v2    # "focusable":Z
    :cond_6
    iget-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    .line 722
    :cond_7
    iget-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_3

    .line 724
    :cond_8
    if-nez v0, :cond_a

    :cond_9
    move v3, v4

    :goto_5
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/AdapterView;->updateEmptyStatus(Z)V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1047
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 1048
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->selectionChanged()V

    .line 1049
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 1050
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 1052
    :cond_0
    return-void

    .line 1047
    :cond_1
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 918
    .local v0, "selectedView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 922
    :cond_0
    return v2

    .line 918
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const/4 v1, 0x1

    return v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 795
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 787
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 1065
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 1069
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1070
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    .line 1073
    cmp-long v16, v10, v16

    if-nez v16, :cond_1

    const/16 v16, -0x1

    .line 1074
    return v16

    .end local v10    # "idToMatch":J
    .end local v13    # "seed":I
    :cond_0
    const/16 v16, -0x1

    .line 1066
    return v16

    .restart local v10    # "idToMatch":J
    .restart local v13    # "seed":I
    :cond_1
    const/16 v16, 0x0

    .line 1078
    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1079
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1086
    .local v4, "endTime":J
    move v6, v13

    .line 1089
    .local v6, "first":I
    move v9, v13

    .line 1092
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1102
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1103
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v2, :cond_3

    .line 1107
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-lez v16, :cond_4

    const/16 v16, 0x1

    :goto_1
    if-nez v16, :cond_b

    .line 1108
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1109
    .local v14, "rowId":J
    cmp-long v16, v14, v10

    if-nez v16, :cond_5

    .line 1111
    return v13

    .end local v14    # "rowId":J
    :cond_3
    const/16 v16, -0x1

    .line 1104
    return v16

    .line 1107
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 1114
    .restart local v14    # "rowId":J
    :cond_5
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_8

    const/4 v8, 0x0

    .line 1115
    .local v8, "hitLast":Z
    :goto_2
    if-eqz v6, :cond_9

    const/4 v7, 0x0

    .line 1117
    .local v7, "hitFirst":Z
    :goto_3
    if-nez v8, :cond_a

    .line 1122
    :cond_6
    if-eqz v7, :cond_c

    .line 1124
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 1125
    move v13, v9

    .line 1127
    const/4 v12, 0x0

    goto :goto_0

    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    :cond_8
    const/4 v8, 0x1

    .line 1114
    goto :goto_2

    .restart local v8    # "hitLast":Z
    :cond_9
    const/4 v7, 0x1

    .line 1115
    goto :goto_3

    .line 1117
    .restart local v7    # "hitFirst":Z
    :cond_a
    if-eqz v7, :cond_6

    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_b
    const/16 v16, -0x1

    .line 1138
    return v16

    .line 1122
    .restart local v7    # "hitFirst":Z
    .restart local v8    # "hitLast":Z
    .restart local v14    # "rowId":J
    :cond_c
    if-nez v12, :cond_e

    .line 1128
    :goto_4
    if-eqz v8, :cond_f

    .line 1130
    :cond_d
    add-int/lit8 v6, v6, -0x1

    .line 1131
    move v13, v6

    .line 1133
    const/4 v12, 0x1

    goto :goto_0

    .line 1122
    :cond_e
    if-eqz v8, :cond_7

    goto :goto_4

    .line 1128
    :cond_f
    if-nez v12, :cond_2

    if-eqz v7, :cond_d

    goto :goto_0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 586
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 767
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 772
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/meizu/common/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 599
    move-object v3, p1

    .line 602
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 612
    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 619
    return v6

    .line 603
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    move-object v3, v4

    goto :goto_0

    .line 608
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6

    .line 613
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    :cond_2
    iget v5, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    return v5
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 571
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 572
    .local v1, "selection":I
    if-nez v0, :cond_1

    .line 575
    :cond_0
    return-object v3

    .line 572
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 573
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 556
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 547
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 981
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 982
    .local v0, "count":I
    const/4 v1, 0x0

    .line 984
    .local v1, "found":Z
    if-gtz v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    if-eqz v1, :cond_7

    .line 1044
    :goto_1
    return-void

    .line 989
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-nez v4, :cond_3

    .line 1007
    :cond_2
    :goto_2
    if-nez v1, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1012
    .local v2, "newPos":I
    if-ge v2, v0, :cond_4

    .line 1015
    :goto_3
    if-ltz v2, :cond_5

    .line 1020
    :goto_4
    invoke-virtual {p0, v2, v7}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1021
    .local v3, "selectablePos":I
    if-ltz v3, :cond_6

    .line 1025
    :goto_5
    if-ltz v3, :cond_0

    .line 1026
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    .line 1028
    const/4 v1, 0x1

    goto :goto_0

    .line 992
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_3
    iput-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 996
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 997
    .restart local v2    # "newPos":I
    if-ltz v2, :cond_2

    .line 999
    invoke-virtual {p0, v2, v7}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1000
    .restart local v3    # "selectablePos":I
    if-ne v3, v2, :cond_2

    .line 1002
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1003
    const/4 v1, 0x1

    goto :goto_2

    .line 1013
    .end local v3    # "selectablePos":I
    :cond_4
    add-int/lit8 v2, v0, -0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 1016
    goto :goto_4

    .line 1023
    .restart local v3    # "selectablePos":I
    :cond_6
    invoke-virtual {p0, v2, v5}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    goto :goto_5

    .line 1034
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_7
    iput v6, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 1035
    iput-wide v8, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 1036
    iput v6, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1037
    iput-wide v8, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1038
    iput-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 1039
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1150
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 850
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 851
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Lcom/meizu/common/widget/AdapterView;

    .line 953
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 954
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 955
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 956
    .local v0, "selectedView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 959
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 960
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 961
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 962
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 963
    return-void

    .line 957
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Lcom/meizu/common/widget/AdapterView;

    .line 942
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 943
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, "selectedView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mLayoutHeight:I

    .line 538
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 927
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    return v2

    .line 929
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 930
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 932
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 933
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 934
    const/4 v1, 0x1

    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 299
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AdapterView;->playSoundEffect(I)V

    .line 300
    if-nez p1, :cond_1

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    .line 304
    return v6

    .line 301
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1184
    :cond_0
    iput-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 1185
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncHeight:J

    .line 1186
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 1197
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1199
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    if-gez v2, :cond_4

    :cond_1
    const-wide/16 v2, -0x1

    .line 1202
    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1204
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1205
    if-nez v1, :cond_5

    .line 1208
    :goto_2
    iput v5, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1188
    .end local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1189
    .restart local v1    # "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1190
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1191
    if-nez v1, :cond_3

    .line 1194
    :goto_3
    iput v4, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1192
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSpecificTop:I

    goto :goto_3

    .line 1199
    .restart local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_4
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1200
    iget v2, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    goto :goto_1

    .line 1206
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/AdapterView;->mSpecificTop:I

    goto :goto_2
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 510
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 522
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    if-eqz v0, :cond_2

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_3

    .line 882
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 874
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_1

    .line 884
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    .line 885
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0

    .line 880
    :cond_3
    new-instance v0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;-><init>(Lcom/meizu/common/widget/AdapterView;Lcom/meizu/common/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    goto :goto_1
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 654
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 657
    if-nez p1, :cond_2

    .line 662
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 663
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_3

    :cond_1
    move v1, v2

    .line 664
    .local v1, "empty":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 665
    return-void

    .line 657
    .end local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .end local v1    # "empty":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 659
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 663
    .restart local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_3
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 691
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_2

    :cond_0
    move v1, v3

    .line 693
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    .line 694
    if-eqz p1, :cond_3

    .line 698
    :goto_1
    if-nez p1, :cond_4

    :goto_2
    move v3, v2

    :cond_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 699
    return-void

    .line 691
    .end local v1    # "empty":Z
    :cond_2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 695
    .restart local v1    # "empty":Z
    :cond_3
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    goto :goto_1

    .line 698
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 704
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v0, :cond_2

    :cond_0
    move v1, v3

    .line 706
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 707
    if-nez p1, :cond_3

    .line 711
    :goto_1
    if-nez p1, :cond_4

    :goto_2
    move v3, v2

    :cond_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 712
    return-void

    .line 704
    .end local v1    # "empty":Z
    :cond_2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 708
    .restart local v1    # "empty":Z
    :cond_3
    iput-boolean v3, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    goto :goto_1

    .line 711
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1168
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1169
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1171
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-nez v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1172
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1173
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/meizu/common/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    .line 278
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    .line 344
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    .line 394
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1158
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 1159
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 1160
    return-void
.end method

.method public abstract setSelection(I)V
.end method
