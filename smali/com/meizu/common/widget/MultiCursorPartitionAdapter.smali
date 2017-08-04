.class public abstract Lcom/meizu/common/widget/MultiCursorPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "MultiCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;)I
    .locals 1
    .param p1, "partition"    # Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZLandroid/database/Cursor;)I
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 56
    new-instance v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;-><init>(ZZLandroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->addPartition(Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;)I

    move-result v0

    return v0
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->swapCursor(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "prevCursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public clearCursors()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-lt v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->invalidate()V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->notifyDataSetChanged()V

    .line 105
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .local v0, "cg":Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    const/4 v2, 0x0

    .line 100
    iput-object v2, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 101
    iput v2, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 83
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-lt v2, v3, :cond_0

    .line 91
    invoke-super {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->clearPartitions()V

    .line 92
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 85
    .local v0, "cg":Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 86
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    iput-object v4, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    goto :goto_1
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, -0x1

    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v2, 0x0

    .line 128
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitionCount:I

    if-lt v2, v5, :cond_0

    .line 148
    return v7

    .line 129
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v5

    .line 130
    .local v0, "end":I
    if-ge p1, v4, :cond_2

    .line 145
    :cond_1
    move v4, v0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_2
    if-ge p1, v0, :cond_1

    .line 131
    sub-int v3, p1, v4

    .line 132
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v5, :cond_4

    .line 136
    :goto_1
    iget-object v5, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 137
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge v3, v5, :cond_5

    .line 142
    :cond_3
    return v7

    .line 133
    .end local v1    # "footerStart":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 137
    .restart local v1    # "footerStart":I
    :cond_5
    if-ge v3, v1, :cond_3

    .line 139
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v5

    return v5
.end method

.method protected getDataPosition(II)I
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p2, v0

    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v2

    iget-object v0, v2, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 253
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 254
    :cond_0
    return-object v3

    .line 253
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v1

    .line 258
    .local v1, "pos":I
    if-gez v1, :cond_3

    .line 259
    :cond_2
    return-object v3

    .line 258
    :cond_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    return-object v0
.end method

.method protected getItemId(II)J
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 270
    .local v0, "cg":Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    iget v3, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 274
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 275
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 276
    :cond_0
    return-wide v6

    .line 271
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-wide v6

    .line 275
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v2

    .line 280
    .local v2, "pos":I
    if-gez v2, :cond_4

    .line 281
    :cond_3
    return-wide v6

    .line 280
    :cond_4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    iget v3, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    return-wide v4
.end method

.method public bridge synthetic getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    return-object v0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 197
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v3

    iget-object v7, v3, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 198
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v16

    .line 203
    .local v16, "cursorPos":I
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    if-eqz p5, :cond_2

    .line 211
    move-object/from16 v9, p5

    .line 214
    .local v9, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v7

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V

    .line 215
    return-object v9

    .line 199
    .end local v9    # "view":Landroid/view/View;
    .end local v16    # "cursorPos":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the partition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cursor is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    .restart local v16    # "cursorPos":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public removePartition(I)V
    .locals 4
    .param p1, "partitionIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 70
    .local v0, "cg":Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 71
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->removePartition(I)V

    .line 76
    return-void

    .line 71
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    iput-object v3, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public swapCursor(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 177
    .local v0, "cg":Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 178
    .local v1, "prevCursor":Landroid/database/Cursor;
    if-eq v1, p2, :cond_0

    .line 181
    iput-object p2, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 182
    if-nez p2, :cond_1

    .line 186
    iput v2, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->invalidate()V

    .line 189
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->notifyDataSetChanged()V

    .line 190
    return-object v1

    .line 179
    :cond_0
    return-object v3

    :cond_1
    const-string/jumbo v3, "_id"

    .line 183
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    .line 184
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput v2, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mItemCount:I

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_1
.end method
