.class public abstract Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.super Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.source "PinnedHeaderArrayAdapter.java"

# interfaces
.implements Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/MultiArrayPartitionAdapter",
        "<TT;>;",
        "Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;"
    }
.end annotation


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
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 16
    .param p1, "listView"    # Lcom/meizu/common/widget/PinnedHeaderListView;

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v15, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionCount()I

    move-result v12

    .line 98
    .local v12, "size":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    if-nez v15, :cond_5

    .line 99
    :cond_0
    new-array v15, v12, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    :goto_0
    const/4 v6, 0x0

    .line 101
    .local v6, "i":I
    :goto_1
    if-lt v6, v12, :cond_6

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, "headerViewsCount":I
    const/4 v9, -0x1

    .local v9, "maxTopHeader":I
    const/4 v13, 0x0

    .local v13, "topHeaderHeight":I
    const/4 v6, 0x0

    .line 114
    :goto_2
    if-lt v6, v12, :cond_8

    .line 129
    :cond_1
    move v8, v12

    .local v8, "maxBottomHeader":I
    const/4 v2, 0x0

    .line 131
    .local v2, "bottomHeaderHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 132
    .local v7, "listHeight":I
    move v6, v12

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-gt v6, v9, :cond_a

    .line 157
    :cond_3
    add-int/lit8 v6, v9, 0x1

    :goto_4
    if-lt v6, v8, :cond_c

    .line 162
    return-void

    .line 92
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

    .line 98
    .restart local v12    # "size":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    array-length v15, v15

    if-ne v15, v12, :cond_0

    goto :goto_0

    .line 102
    .restart local v6    # "i":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v14

    .line 103
    .local v14, "visible":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aput-boolean v14, v15, v6

    .line 104
    if-eqz v14, :cond_7

    .line 101
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105
    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_5

    .line 115
    .end local v14    # "visible":Z
    .restart local v4    # "headerViewsCount":I
    .restart local v9    # "maxTopHeader":I
    .restart local v13    # "topHeaderHeight":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-nez v15, :cond_9

    .line 114
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 116
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 117
    .local v11, "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 118
    .local v10, "partition":I
    if-gt v6, v10, :cond_1

    .line 122
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v15

    add-int/2addr v13, v15

    .line 124
    move v9, v6

    goto :goto_6

    .line 133
    .end local v10    # "partition":I
    .end local v11    # "position":I
    .restart local v2    # "bottomHeaderHeight":I
    .restart local v7    # "listHeight":I
    .restart local v8    # "maxBottomHeader":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_2

    .line 134
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 136
    .restart local v11    # "position":I
    if-ltz v11, :cond_3

    .line 140
    add-int/lit8 v15, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionForPosition(I)I

    move-result v10

    .restart local v10    # "partition":I
    const/4 v15, -0x1

    .line 141
    if-eq v10, v15, :cond_3

    if-le v6, v10, :cond_3

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v5

    .line 146
    .local v5, "height":I
    add-int/2addr v2, v5

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v3

    .line 150
    .local v3, "firstPositionForPartition":I
    if-lt v11, v3, :cond_b

    const/4 v1, 0x0

    .line 151
    .local v1, "animate":Z
    :goto_7
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 152
    move v8, v6

    goto/16 :goto_3

    .end local v1    # "animate":Z
    :cond_b
    const/4 v1, 0x1

    .line 150
    goto :goto_7

    .line 158
    .end local v3    # "firstPositionForPartition":I
    .end local v5    # "height":I
    .end local v10    # "partition":I
    .end local v11    # "position":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-nez v15, :cond_d

    .line 157
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 159
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPartitionEmpty(I)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_8
.end method

.method public getPinnedHeaderCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v0, :cond_0

    .line 52
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPartitionCount()I

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

    .line 67
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->hasHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    return-object v5

    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "view":Landroid/view/View;
    if-nez p2, :cond_2

    .line 75
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v1

    .line 76
    .local v1, "position":I
    if-eqz v2, :cond_3

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 83
    return-object v2

    .line 70
    .end local v1    # "position":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    .local v0, "headerType":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 72
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    goto :goto_0

    .line 77
    .end local v0    # "headerType":Ljava/lang/Integer;
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "position":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, p1, p3}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .restart local v2    # "view":Landroid/view/View;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 2
    .param p1, "partition"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPartitionEmpty(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 45
    return-void
.end method
