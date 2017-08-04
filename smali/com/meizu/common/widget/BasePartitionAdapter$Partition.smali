.class public Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
.super Ljava/lang/Object;
.source "BasePartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/BasePartitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field mCount:I

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewsCount:I

.field mHasHeader:Z

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewsCount:I

.field mItemCount:I

.field mShowIfEmpty:Z

.field mSize:I


# direct methods
.method public constructor <init>(ZZI)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .param p3, "itemCount"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    .line 69
    iput-boolean p2, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    .line 70
    iput p3, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 74
    return-void
.end method
