.class public abstract Lcom/meizu/common/widget/BasePartitionAdapter;
.super Lcom/meizu/common/widget/AbsBasePartitionAdapter;
.source "BasePartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;,
        Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    }
.end annotation


# static fields
.field private static final CAPACITY_INCREMENT:I = 0xa

.field protected static final INITIAL_CAPACITY:I = 0xa

.field public static final ITEM_VIEW_TYPE_PARTITION_HEADER:I = 0x0

.field public static final PARTITION_FIRST_ITEM_BG_TYPE:I = 0x1

.field public static final PARTITION_HEADER_ITEM_BG_TYPE:I = 0x0

.field public static final PARTITION_LAST_ITEM_BG_TYPE:I = 0x3

.field public static final PARTITION_MIDDLE_ITEM_BG_TYPE:I = 0x2

.field public static final PARTITION_SINGLE_ITEM_BG_TYPE:I = 0x4


# instance fields
.field protected mCacheValid:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mItemCounts:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field protected mPartitionCount:I

.field protected mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0xa

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 143
    iput-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 144
    new-array v0, p2, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 145
    return-void
.end method

.method private areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;>;"
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    const/4 v2, 0x1

    return v2

    .line 690
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 691
    .local v1, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iget-boolean v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 692
    return v3
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    const/4 v0, 0x0

    .line 479
    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 488
    const/4 v3, 0x0

    return v3

    .line 480
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 481
    .local v1, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iget-object v3, v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    if-eq v3, p1, :cond_1

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 484
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 485
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public addFooterView(ILandroid/view/View;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 525
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 526
    return-void
.end method

.method public addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "isSelectable"    # Z

    .prologue
    .line 502
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v1, :cond_0

    .line 506
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 507
    .local v0, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 508
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 509
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 510
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 513
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 514
    return-void

    .line 503
    .end local v0    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public addHeaderView(ILandroid/view/View;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 449
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 450
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "isSelectable"    # Z

    .prologue
    .line 426
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v1, :cond_0

    .line 430
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 431
    .local v0, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 432
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 433
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 434
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 437
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 438
    return-void

    .line 427
    .end local v0    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method protected addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 5
    .param p1, "partition"    # Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    const/4 v4, 0x0

    .line 155
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    aput-object p1, v2, v3

    .line 162
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 163
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 164
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 156
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v1, v2, 0xa

    .line 157
    .local v1, "newCapacity":I
    new-array v0, v1, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 158
    .local v0, "newAdapters":[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 700
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v0, v1, :cond_0

    .line 710
    const/4 v1, 0x1

    return v1

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 707
    :cond_1
    return v2

    .line 702
    :cond_2
    return v2

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I

    .prologue
    .line 954
    return-void
.end method

.method protected canSelect(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 814
    const/4 v0, 0x1

    return v0
.end method

.method public clearPartitions()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    .line 191
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-boolean v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    if-nez v2, :cond_0

    .line 266
    iput v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 267
    iput v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    const/4 v0, 0x0

    .line 268
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v0, v2, :cond_1

    .line 283
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    .line 284
    return-void

    .line 263
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 269
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 270
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 271
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 274
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 275
    .local v1, "size":I
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v2, :cond_2

    .line 278
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 279
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 280
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_2
    if-eqz v1, :cond_4

    .line 276
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method protected getBackgroundResource(I)I
    .locals 1
    .param p1, "itemBgType"    # I

    .prologue
    const/4 v0, 0x0

    .line 843
    .local v0, "resid":I
    packed-switch p1, :pswitch_data_0

    .line 861
    :goto_0
    return v0

    .line 845
    :pswitch_0
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_top_shade_light:I

    goto :goto_0

    .line 849
    :pswitch_1
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_middle_shade_light:I

    goto :goto_0

    .line 853
    :pswitch_2
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_bottom_shade_light:I

    goto :goto_0

    .line 857
    :pswitch_3
    sget v0, Lcom/meizu/common/R$drawable;->mz_card_full_shade_light:I

    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 291
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    return v0
.end method

.method public getCountForPartition(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 315
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    return v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getFooterViewsCount(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 532
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 536
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    return v0

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 924
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/BasePartitionAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 927
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 928
    return-object v0

    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .line 924
    goto :goto_0
.end method

.method public getHeaderViewsCount(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 456
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 460
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    return v0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v2, 0x0

    .line 759
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v2, v5, :cond_0

    .line 781
    return-object v6

    .line 760
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v5

    .line 761
    .local v0, "end":I
    if-ge p1, v4, :cond_2

    .line 778
    :cond_1
    move v4, v0

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    :cond_2
    if-ge p1, v0, :cond_1

    .line 762
    sub-int v3, p1, v4

    .line 763
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v5, :cond_3

    :goto_1
    const/4 v5, -0x1

    .line 767
    if-eq v3, v5, :cond_4

    .line 769
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 771
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 775
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 764
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 768
    :cond_4
    return-object v6

    .line 770
    :cond_5
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    return-object v5

    .line 772
    :cond_6
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 773
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    return-object v5
.end method

.method protected abstract getItem(II)Ljava/lang/Object;
.end method

.method protected getItemBackgroundType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 676
    if-eq p2, v0, :cond_1

    .line 678
    if-eqz p2, :cond_2

    .line 680
    :cond_0
    if-eqz p2, :cond_3

    .line 682
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    .line 685
    return v0

    .line 677
    :cond_1
    return v1

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    .line 679
    return v0

    .line 681
    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x3

    .line 683
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 299
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    return v0
.end method

.method public getItemId(I)J
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v1, 0x0

    .line 790
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v4, :cond_0

    .line 808
    return-wide v6

    .line 791
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 792
    .local v0, "end":I
    if-ge p1, v3, :cond_2

    .line 806
    :cond_1
    move v3, v0

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    :cond_2
    if-ge p1, v0, :cond_1

    .line 793
    sub-int v2, p1, v3

    .line 794
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v4, :cond_4

    :goto_1
    const/4 v4, -0x1

    .line 798
    if-eq v2, v4, :cond_5

    .line 800
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const-wide/16 v4, -0x1

    .line 801
    return-wide v4

    .line 795
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 799
    :cond_5
    return-wide v6

    .line 800
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 803
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemId(II)J

    move-result-wide v4

    return-wide v4
.end method

.method protected abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v1, 0x0

    .line 641
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v4, :cond_0

    .line 660
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 642
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 643
    .local v0, "end":I
    if-ge p1, v3, :cond_2

    .line 657
    :cond_1
    move v3, v0

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_2
    if-ge p1, v0, :cond_1

    .line 644
    sub-int v2, p1, v3

    .line 645
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v4, :cond_4

    :goto_1
    const/4 v4, -0x1

    .line 649
    if-eq v2, v4, :cond_5

    .line 651
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const/4 v4, -0x2

    .line 652
    return v4

    .line 646
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 650
    :cond_5
    return v5

    .line 651
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 654
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewType(II)I

    move-result v4

    return v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 668
    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 634
    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v1, 0x0

    .line 380
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v4, :cond_0

    .line 392
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 381
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 382
    .local v0, "end":I
    if-ge p1, v3, :cond_2

    .line 389
    :cond_1
    move v3, v0

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_2
    if-ge p1, v0, :cond_1

    .line 383
    sub-int v2, p1, v3

    .line 384
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v4, :cond_3

    .line 387
    :goto_1
    return v2

    .line 385
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 203
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    return v0
.end method

.method public getPartitionForItemIndex(I)I
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v1, 0x0

    .line 343
    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v3, :cond_0

    const/4 v3, -0x1

    .line 350
    return v3

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int v0, v2, v3

    .line 345
    .local v0, "end":I
    if-ge p1, v2, :cond_2

    .line 348
    :cond_1
    move v2, v0

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    if-ge p1, v0, :cond_1

    .line 346
    return v1
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v1, 0x0

    .line 361
    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v3, :cond_0

    const/4 v3, -0x1

    .line 368
    return v3

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v2, v3

    .line 363
    .local v0, "end":I
    if-ge p1, v2, :cond_2

    .line 366
    :cond_1
    move v2, v0

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_2
    if-ge p1, v0, :cond_1

    .line 364
    return v1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .param p1, "partitionIndex"    # I

    .prologue
    .line 403
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v2, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v1, 0x0

    .local v1, "position":I
    const/4 v0, 0x0

    .line 409
    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 412
    return v1

    .line 404
    .end local v0    # "i":I
    .end local v1    # "position":I
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 410
    .restart local v0    # "i":I
    .restart local v1    # "position":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v1, v2

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v9, 0x0

    .local v9, "start":I
    const/4 v2, 0x0

    .line 878
    .local v2, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v2, v0, :cond_0

    .line 916
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v7, v9, v0

    .line 880
    .local v7, "end":I
    if-ge p1, v9, :cond_2

    .line 913
    :cond_1
    move v9, v7

    .line 878
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_2
    if-ge p1, v7, :cond_1

    .line 881
    sub-int v3, p1, v9

    .line 882
    .local v3, "offset":I
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v0, :cond_3

    .line 886
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemBackgroundType(II)I

    move-result v4

    .local v4, "itemBgType":I
    const/4 v0, -0x1

    .line 888
    if-eq v3, v0, :cond_4

    .line 890
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 892
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 896
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/BasePartitionAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 899
    .local v10, "view":Landroid/view/View;
    :goto_2
    if-eqz v10, :cond_7

    .line 911
    return-object v10

    .line 883
    .end local v4    # "itemBgType":I
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 889
    .restart local v4    # "itemBgType":I
    :cond_4
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_2

    .line 891
    .end local v10    # "view":Landroid/view/View;
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v10, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_2

    .line 893
    .end local v10    # "view":Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v8, v0, v1

    .line 894
    .local v8, "footerStart":I
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v1, v3, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v10, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_2

    .line 900
    .end local v8    # "footerStart":I
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "View should not be null, partition: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " position: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    .line 255
    return-void
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v2, 0x0

    .line 720
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v2, v5, :cond_0

    .line 744
    return v6

    .line 721
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v5

    .line 722
    .local v0, "end":I
    if-ge p1, v4, :cond_2

    .line 741
    :cond_1
    move v4, v0

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    :cond_2
    if-ge p1, v0, :cond_1

    .line 723
    sub-int v3, p1, v4

    .line 724
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v5, :cond_3

    :goto_1
    const/4 v5, -0x1

    .line 728
    if-eq v3, v5, :cond_4

    .line 730
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 732
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 735
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->canSelect(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 738
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isEnabled(II)Z

    move-result v5

    return v5

    .line 725
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 729
    :cond_4
    return v6

    .line 731
    :cond_5
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    return v5

    .line 733
    :cond_6
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 734
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    return v5

    .line 736
    .end local v1    # "footerStart":I
    :cond_7
    return v6
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public isFooterView(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v1, 0x0

    .line 596
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v4, :cond_0

    .line 608
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 597
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 598
    .local v0, "end":I
    if-ge p1, v3, :cond_2

    .line 605
    :cond_1
    move v3, v0

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_2
    if-ge p1, v0, :cond_1

    .line 599
    sub-int v2, p1, v3

    .line 600
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v4, :cond_3

    .line 603
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    return v4

    .line 601
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected isFooterView(II)Z
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 619
    const/4 v0, 0x0

    return v0

    .line 617
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHeaderView(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v1, 0x0

    .line 561
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt v1, v4, :cond_0

    .line 573
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 562
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 563
    .local v0, "end":I
    if-ge p1, v3, :cond_2

    .line 570
    :cond_1
    move v3, v0

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_2
    if-ge p1, v0, :cond_1

    .line 564
    sub-int v2, p1, v3

    .line 565
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-nez v4, :cond_3

    .line 568
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    return v4

    .line 566
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected isHeaderView(II)Z
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 581
    if-gez p2, :cond_1

    .line 584
    :cond_0
    return v1

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge p2, v0, :cond_0

    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 328
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 332
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-eqz v1, :cond_1

    :goto_0
    return v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 332
    goto :goto_0
.end method

.method public isShowIfEmpty(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    return v0
.end method

.method public isTopHeader()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 242
    .local v0, "partitionIndex":I
    if-ltz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    return v1

    .line 243
    :cond_0
    return v1
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 941
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    .line 836
    :goto_0
    return-void

    .line 831
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    .line 832
    invoke-super {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public removeFooterView(ILandroid/view/View;)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public removeHeaderView(ILandroid/view/View;)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 471
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public removePartition(I)V
    .locals 4
    .param p1, "partitionIndex"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 181
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 182
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 183
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "hasHeader"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    .line 236
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 237
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 823
    if-nez p1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "showIfEmpty"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    .line 221
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 222
    return-void
.end method

.method protected setViewBackground(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemBgType"    # I

    .prologue
    .line 871
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getBackgroundResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 872
    return-void
.end method
