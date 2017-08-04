.class public abstract Lcom/meizu/common/widget/PinnedHeaderListAdapter;
.super Lcom/meizu/common/widget/MultiCursorPartitionAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 16
    .param p1, "listView"    # Lcom/meizu/common/widget/PinnedHeaderListView;

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v15, :cond_4

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v12

    .line 111
    .local v12, "size":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-nez v15, :cond_5

    .line 112
    :cond_0
    new-array v15, v12, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    :goto_0
    const/4 v6, 0x0

    .line 114
    .local v6, "i":I
    :goto_1
    if-lt v6, v12, :cond_6

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, "headerViewsCount":I
    const/4 v9, -0x1

    .local v9, "maxTopHeader":I
    const/4 v13, 0x0

    .local v13, "topHeaderHeight":I
    const/4 v6, 0x0

    .line 127
    :goto_2
    if-lt v6, v12, :cond_8

    .line 142
    :cond_1
    move v8, v12

    .local v8, "maxBottomHeader":I
    const/4 v2, 0x0

    .line 144
    .local v2, "bottomHeaderHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 145
    .local v7, "listHeight":I
    move v6, v12

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-gt v6, v9, :cond_a

    .line 170
    :cond_3
    add-int/lit8 v6, v9, 0x1

    :goto_4
    if-lt v6, v8, :cond_c

    .line 175
    return-void

    .line 105
    .end local v2    # "bottomHeaderHeight":I
    .end local v4    # "headerViewsCount":I
    .end local v6    # "i":I
    .end local v7    # "listHeight":I
    .end local v8    # "maxBottomHeader":I
    .end local v9    # "maxTopHeader":I
    .end local v12    # "size":I
    .end local v13    # "topHeaderHeight":I
    :cond_4
    return-void

    .line 111
    .restart local v12    # "size":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v15, v15

    if-ne v15, v12, :cond_0

    goto :goto_0

    .line 115
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v14

    .line 116
    .local v14, "visible":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v14, v15, v6

    .line 117
    if-eqz v14, :cond_7

    .line 114
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 118
    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_5

    .line 128
    .end local v14    # "visible":Z
    .restart local v4    # "headerViewsCount":I
    .restart local v9    # "maxTopHeader":I
    .restart local v13    # "topHeaderHeight":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-nez v15, :cond_9

    .line 127
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 129
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 130
    .local v11, "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 131
    .local v10, "partition":I
    if-gt v6, v10, :cond_1

    .line 135
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v15

    add-int/2addr v13, v15

    .line 137
    move v9, v6

    goto :goto_6

    .line 146
    .end local v10    # "partition":I
    .end local v11    # "position":I
    .restart local v2    # "bottomHeaderHeight":I
    .restart local v7    # "listHeight":I
    .restart local v8    # "maxBottomHeader":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_2

    .line 147
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 149
    .restart local v11    # "position":I
    if-ltz v11, :cond_3

    .line 153
    add-int/lit8 v15, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .restart local v10    # "partition":I
    const/4 v15, -0x1

    .line 154
    if-eq v10, v15, :cond_3

    if-le v6, v10, :cond_3

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v5

    .line 159
    .local v5, "height":I
    add-int/2addr v2, v5

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v3

    .line 163
    .local v3, "firstPositionForPartition":I
    if-lt v11, v3, :cond_b

    const/4 v1, 0x0

    .line 164
    .local v1, "animate":Z
    :goto_7
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 165
    move v8, v6

    goto/16 :goto_3

    .end local v1    # "animate":Z
    :cond_b
    const/4 v1, 0x1

    .line 163
    goto :goto_7

    .line 171
    .end local v3    # "firstPositionForPartition":I
    .end local v5    # "height":I
    .end local v10    # "partition":I
    .end local v11    # "position":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-nez v15, :cond_d

    .line 170
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 172
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_8
.end method

.method public getPinnedHeaderCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "partition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    return-object v5

    :cond_0
    const/4 v2, 0x0

    .line 82
    .local v2, "view":Landroid/view/View;
    if-nez p2, :cond_2

    .line 88
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v1

    .line 89
    .local v1, "position":I
    if-eqz v2, :cond_3

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 96
    return-object v2

    .line 83
    .end local v1    # "position":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    .local v0, "headerType":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 85
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 90
    .end local v0    # "headerType":Ljava/lang/Integer;
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "position":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, p1, p3}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .restart local v2    # "view":Landroid/view/View;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 2
    .param p1, "partition"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 58
    return-void
.end method
