.class public abstract Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "MultiArrayPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 1
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
    .line 49
    .local p2, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    if-nez p2, :cond_1

    :cond_0
    const/16 v0, 0xa

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartitions([Ljava/util/List;)V

    .line 51
    return-void

    .line 49
    :cond_1
    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    goto :goto_0
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I
    .locals 1
    .param p1, "partition"    # Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZLjava/util/List;)I
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;-><init>(ZZLjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I

    move-result v0

    return v0
.end method

.method public varargs addPartitions([Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    array-length v1, p1

    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    const/4 v0, 0x0

    .line 61
    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 64
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 62
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(ZZLjava/util/List;)I

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "IITT;II)V"
        }
    .end annotation
.end method

.method public changePartition(ILjava/util/List;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    .line 139
    .local v0, "g":Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    iput-object p2, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    .line 140
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mItemCount:I

    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 143
    return-void

    :cond_0
    const/4 v1, 0x0

    .line 140
    goto :goto_0
.end method

.method public getDataPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, -0x1

    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v2, 0x0

    .line 103
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitionCount:I

    if-lt v2, v5, :cond_0

    .line 123
    return v7

    .line 104
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v5

    .line 105
    .local v0, "end":I
    if-ge p1, v4, :cond_2

    .line 120
    :cond_1
    move v4, v0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    if-ge p1, v0, :cond_1

    .line 106
    sub-int v3, p1, v4

    .line 107
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v5, :cond_4

    .line 111
    :goto_1
    iget-object v5, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 112
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge v3, v5, :cond_5

    .line 117
    :cond_3
    return v7

    .line 108
    .end local v1    # "footerStart":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 112
    .restart local v1    # "footerStart":I
    :cond_5
    if-ge v3, v1, :cond_3

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v5

    return v5
.end method

.method protected getDataPosition(II)I
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p2, v0

    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v2

    iget-object v0, v2, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    .line 151
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v1

    .line 156
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 152
    .end local v1    # "pos":I
    :cond_0
    return-object v3

    .line 157
    .restart local v1    # "pos":I
    :cond_1
    return-object v3
.end method

.method protected getItemId(II)J
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 172
    .local v0, "pos":I
    if-ltz v0, :cond_1

    .line 175
    int-to-long v2, v0

    return-wide v2

    .line 169
    .end local v0    # "pos":I
    :cond_0
    return-wide v2

    .line 173
    .restart local v0    # "pos":I
    :cond_1
    return-wide v2
.end method

.method public bridge synthetic getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    return-object v0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    return-object v0
.end method

.method public getPartitionData(I)Ljava/util/List;
    .locals 1
    .param p1, "partitionIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v3

    iget-object v0, v3, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    move-object/from16 v17, v0

    .line 183
    .local v17, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v17, :cond_0

    .line 187
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 192
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v16

    .line 193
    .local v16, "listIndex":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 198
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 201
    .local v7, "object":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_3

    .line 204
    move-object/from16 v9, p5

    .line 207
    .local v9, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v7

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    .line 208
    return-object v9

    .line 184
    .end local v7    # "object":Ljava/lang/Object;, "TT;"
    .end local v9    # "view":Landroid/view/View;
    .end local v16    # "listIndex":I
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

    const-string/jumbo v5, " list is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "IndexOutOfBounds"

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MultiArrayPartitionAdapter getView exception, List partition item size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "APP\u6570\u636e\u96c6\u4e3a\u7a7a:\u8bf7\u5148\u68c0\u67e5\u6570\u636e\u96c6\u4e2d\u4e66\u5426\u6709\u6570\u636e,\u7136\u540e\u518d\u8bbf\u95ee!"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v16    # "listIndex":I
    :cond_2
    const-string/jumbo v3, "IndexOutOfBounds"

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MultiArrayPartitionAdapter getView exception, List partition item size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", listIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APP\u8d8a\u754c\u64cd\u4f5c:\u5f53\u524d\u6570\u636e\u96c6\u5927\u5c0f\u4e3a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\u6709\u6548\u8bbf\u95ee\u8303\u56f4\u4e3a:0~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\u5f53\u524d\u8bbf\u95ee\u5e8f\u53f7\u4e3a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\u975e\u6cd5,\u8bf7\u5904\u7406\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .restart local v7    # "object":Ljava/lang/Object;, "TT;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;II",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method
