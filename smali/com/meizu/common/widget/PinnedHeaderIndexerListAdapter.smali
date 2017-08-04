.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderListAdapter;
.source "PinnedHeaderIndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mHeaderMap:Landroid/util/SparseIntArray;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLastSection:I

.field private mLastSectionOverScrollDistance:I

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 65
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    const/4 v0, -0x1

    .line 258
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 259
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 72
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 74
    return-void
.end method

.method private ensureSectionHeaders()V
    .locals 9

    .prologue
    .line 485
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 486
    iget-boolean v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v7, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v7, :cond_0

    .line 488
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v1, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .local v1, "hvCount":I
    const/4 v6, -0x1

    .local v6, "section":I
    const/4 v5, 0x0

    .line 490
    .local v5, "pos":I
    :goto_1
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lt v5, v7, :cond_3

    .line 509
    :cond_2
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 510
    .local v0, "headerCount":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 511
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 512
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    goto :goto_0

    .line 491
    .end local v0    # "headerCount":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 492
    .local v3, "nextSection":I
    if-eq v6, v3, :cond_2

    .line 493
    move v6, v3

    .line 494
    add-int v7, v5, v1

    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 495
    .local v4, "offset":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 502
    .local v2, "nextPos":I
    if-eq v5, v2, :cond_2

    .line 503
    move v5, v2

    goto :goto_1
.end method

.method private getSectionPosition(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 359
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 360
    .local v0, "partitionStart":I
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->hasHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v1, v0, v2

    .line 366
    .local v1, "sectionPosition":I
    return v1

    .line 361
    .end local v1    # "sectionPosition":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureCacheValid()V

    .line 536
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v0, :cond_1

    .line 539
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 537
    return v1
.end method

.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "offset"    # I
    .param p4, "sectionIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 632
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 633
    sget v1, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 634
    .local v0, "headerText1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    if-eqz p3, :cond_0

    .line 640
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_pinned_interval_header_minHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 643
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_pinned_top_header_minHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method protected canSelect(II)Z
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 554
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v0, p1, :cond_1

    .line 558
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->canSelect(II)Z

    move-result v0

    return v0

    .line 554
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 556
    return v1
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listPosition"    # I
    .param p3, "section"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 379
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 20
    .param p1, "listView"    # Lcom/meizu/common/widget/PinnedHeaderListView;

    .prologue
    .line 263
    invoke-super/range {p0 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v5

    .line 276
    .local v5, "currentOverScrollDistance":I
    if-lez v5, :cond_5

    :cond_0
    const/4 v6, 0x0

    .line 278
    .local v6, "forceHide":Z
    :goto_0
    if-nez v6, :cond_6

    .line 282
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 285
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 286
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    const/16 v17, -0x1

    .line 287
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 352
    :goto_2
    return-void

    .line 267
    .end local v5    # "currentOverScrollDistance":I
    .end local v6    # "forceHide":Z
    .end local v8    # "index":I
    :cond_3
    return-void

    .line 271
    :cond_4
    return-void

    .line 276
    .restart local v5    # "currentOverScrollDistance":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v17

    if-nez v17, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 278
    .restart local v6    # "forceHide":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    move/from16 v17, v0

    if-ltz v17, :cond_1

    const/16 v17, 0x0

    .line 279
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    goto :goto_1

    .line 285
    .restart local v8    # "index":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCount()I

    move-result v17

    if-eqz v17, :cond_2

    if-nez v6, :cond_2

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v10

    .line 290
    .local v10, "listPosition":I
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v17

    sub-int v14, v10, v17

    .local v14, "position":I
    const/4 v15, -0x1

    .local v15, "section":I
    const/16 v17, 0x0

    .line 293
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_c

    .line 304
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v15, :cond_d

    .line 316
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v0, v15, :cond_e

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v15, :cond_f

    .line 329
    :cond_a
    move-object/from16 v0, p0

    iput v15, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    const/16 v17, -0x1

    .line 331
    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    .line 332
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    .line 293
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getDividerHeight()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_8

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPartitionForPosition(I)I

    move-result v13

    .line 296
    .local v13, "partition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v12

    .line 298
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-object/from16 v17, v0

    aget-object v17, v17, v13

    move-object/from16 v0, v17

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_8

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v15

    goto :goto_3

    .end local v12    # "offset":I
    .end local v13    # "partition":I
    :cond_d
    const/16 v17, -0x1

    .line 304
    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v14, :cond_9

    .line 305
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v10, v15, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    goto/16 :goto_4

    .line 318
    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .local v7, "i":I
    :goto_5
    if-le v7, v15, :cond_a

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 318
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 324
    .end local v7    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    move/from16 v17, v0

    add-int/lit8 v7, v17, 0x1

    .restart local v7    # "i":I
    :goto_6
    if-gt v7, v15, :cond_a

    .line 325
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 324
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 331
    .end local v7    # "i":I
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 338
    add-int/lit8 v17, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    .line 339
    .local v11, "nextSectionPosition":I
    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_12

    const/4 v9, 0x0

    .local v9, "isLastInSection":Z
    :goto_7
    const/16 v16, 0x0

    .line 342
    .local v16, "y":I
    if-nez v9, :cond_13

    .line 347
    :cond_11
    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setTranslateHeader(II)V

    goto/16 :goto_2

    .end local v9    # "isLastInSection":Z
    .end local v16    # "y":I
    :cond_12
    const/4 v9, 0x1

    .line 339
    goto :goto_7

    .restart local v9    # "isLastInSection":Z
    .restart local v16    # "y":I
    :cond_13
    const/16 v17, 0x0

    .line 343
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    const/16 v17, 0x0

    .line 344
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v18

    sub-int v16, v17, v18

    goto :goto_8
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/meizu/common/R$layout;->mc_pinned_header_view:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-object v2

    :cond_0
    const/high16 v3, 0x1020000

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v3, 0x8

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected ensureCacheValid()V
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCacheValid:Z

    if-nez v0, :cond_0

    .line 480
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->ensureCacheValid()V

    .line 481
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureSectionHeaders()V

    .line 482
    return-void

    .line 477
    :cond_0
    return-void
.end method

.method protected getDataPosition(II)I
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 563
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v2, p1, :cond_1

    .line 579
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getDataPosition(II)I

    move-result v2

    return v2

    .line 563
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p2, v2

    .local v1, "pos":I
    const/4 v0, 0x0

    .line 570
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 577
    :cond_2
    return v1

    .end local v0    # "i":I
    .end local v1    # "pos":I
    :cond_3
    const/4 v2, -0x1

    .line 566
    return v2

    .line 571
    .restart local v0    # "i":I
    .restart local v1    # "pos":I
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p2, :cond_2

    .line 574
    add-int/lit8 v1, v1, -0x1

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method protected getItemBackgroundType(II)I
    .locals 12
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 413
    iget v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v6, p1, :cond_1

    .line 470
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemBackgroundType(II)I

    move-result v6

    return v6

    .line 413
    :cond_1
    if-ltz p2, :cond_0

    iget-object v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_0

    .line 415
    iget v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v6, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isHeaderView(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 429
    iget v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v6, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v6

    if-nez v6, :cond_7

    .line 443
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 444
    .local v4, "section":I
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v5

    .line 446
    .local v5, "sectionPos":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v6, :cond_b

    .line 449
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v3

    .line 452
    .local v3, "nextSectionPos":I
    :goto_0
    iget-boolean v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v6, :cond_c

    .line 460
    :goto_1
    if-eq p2, v5, :cond_e

    .line 462
    :cond_2
    if-eq p2, v5, :cond_f

    .line 464
    add-int/lit8 v6, v3, -0x1

    if-eq p2, v6, :cond_10

    .line 467
    return v9

    .line 416
    .end local v3    # "nextSectionPos":I
    .end local v4    # "section":I
    .end local v5    # "sectionPos":I
    :cond_3
    iget-object v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v6, v6, v7

    iget v2, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 417
    .local v2, "hvCount":I
    if-eq v2, v8, :cond_4

    .line 419
    if-eqz p2, :cond_5

    .line 421
    add-int/lit8 v6, v2, -0x1

    if-eq p2, v6, :cond_6

    .line 424
    return v9

    .line 418
    :cond_4
    return v11

    .line 420
    :cond_5
    return v8

    .line 422
    :cond_6
    return v10

    .line 430
    .end local v2    # "hvCount":I
    :cond_7
    iget-object v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v6, v6, v7

    iget v1, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 431
    .local v1, "fvCount":I
    iget-object v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int v0, v6, v1

    .line 432
    .local v0, "footerStart":I
    if-eq v1, v8, :cond_8

    .line 434
    if-eq p2, v0, :cond_9

    .line 436
    sub-int v6, p2, v0

    add-int/lit8 v7, v1, -0x1

    if-eq v6, v7, :cond_a

    .line 439
    return v9

    .line 433
    :cond_8
    return v11

    .line 435
    :cond_9
    return v8

    .line 437
    :cond_a
    return v10

    .line 447
    .end local v0    # "footerStart":I
    .end local v1    # "fvCount":I
    .restart local v4    # "section":I
    .restart local v5    # "sectionPos":I
    :cond_b
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCountForPartition(I)I

    move-result v3

    .restart local v3    # "nextSectionPos":I
    goto :goto_0

    .line 454
    :cond_c
    if-eq p2, v5, :cond_d

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 455
    :cond_d
    return v7

    .line 460
    :cond_e
    sub-int v6, v3, v5

    if-ne v6, v8, :cond_2

    .line 461
    return v11

    .line 463
    :cond_f
    return v8

    .line 465
    :cond_10
    return v10
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-static {v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-static {v1, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;I)I

    .line 392
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 405
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 406
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    return-object v1

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    return-object v1

    .line 393
    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .local v0, "section":I
    const/4 v1, -0x1

    .line 394
    if-ne v0, v1, :cond_3

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 399
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 402
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v1, p1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 396
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v1, v3

    .line 402
    goto :goto_2
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 523
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v1, p1, :cond_1

    .line 530
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemViewType(II)I

    move-result v1

    return v1

    .line 523
    :cond_1
    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 525
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 526
    .local v0, "offset":I
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    return v0

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    return-object v0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 185
    if-ltz p1, :cond_2

    .line 189
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 190
    .local v1, "pos":I
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v1, v2

    .line 191
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v2, :cond_3

    .line 199
    :cond_0
    return v1

    .end local v1    # "pos":I
    :cond_1
    const/4 v2, -0x1

    .line 182
    return v2

    .line 186
    :cond_2
    return v3

    .restart local v1    # "pos":I
    :cond_3
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 208
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 213
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 209
    :cond_1
    return v4

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p1, v2

    .line 219
    .local v1, "pos":I
    if-ltz v1, :cond_4

    .line 224
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v2, :cond_5

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    return v2

    .line 221
    :cond_4
    return v4

    :cond_5
    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "sectionIndex"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 602
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 605
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 606
    return-object v0

    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .line 602
    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 169
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 586
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v2, p2, :cond_1

    .line 594
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 586
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 588
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 590
    .local v1, "sectionIndex":I
    invoke-virtual {p0, p3, v1, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 545
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-eq v0, p1, :cond_1

    .line 549
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isEnabled(II)Z

    move-result v0

    return v0

    .line 545
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 547
    return v1
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offset"    # I
    .param p3, "sectionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 619
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 620
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/meizu/common/R$layout;->mc_pinned_group_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setIndexedPartition(I)V
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    goto :goto_0
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->invalidate()V

    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    goto :goto_0
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "section"    # I

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    sget v1, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "headerText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 121
    return-void
.end method

.method public showSectionHeaders(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    .line 81
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 82
    return-void
.end method
