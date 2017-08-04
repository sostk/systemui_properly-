.class public Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
.super Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
.source "MultiCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MultiCursorPartitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorPartition"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mRowIDColumnIndex:I


# direct methods
.method public constructor <init>(ZZLandroid/database/Cursor;)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 32
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;-><init>(ZZI)V

    .line 33
    iput-object p3, p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    .line 34
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method
