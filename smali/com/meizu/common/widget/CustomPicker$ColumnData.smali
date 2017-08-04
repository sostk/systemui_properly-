.class public Lcom/meizu/common/widget/CustomPicker$ColumnData;
.super Ljava/lang/Object;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnData"
.end annotation


# instance fields
.field mColumnText:Ljava/lang/String;

.field mCount:I

.field mCurrentItem:I

.field mCycleEnabled:Z

.field mDataAdapter:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

.field mLineOffset:F

.field mOneScreenCount:I

.field mStartValue:I

.field mValidEnd:I

.field mValidStart:I


# direct methods
.method public constructor <init>(FIIIIIIZLjava/lang/String;)V
    .locals 1
    .param p1, "lineOffset"    # F
    .param p2, "currentItem"    # I
    .param p3, "count"    # I
    .param p4, "oneScreenCount"    # I
    .param p5, "validStartItem"    # I
    .param p6, "validEndItem"    # I
    .param p7, "startValue"    # I
    .param p8, "cycleEnabled"    # Z
    .param p9, "columnText"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .line 85
    iput p1, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 86
    iput p2, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 87
    iput p3, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCount:I

    .line 88
    iput p4, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 89
    iput p5, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 90
    iput p6, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidEnd:I

    .line 91
    iput p7, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 92
    iput-boolean p8, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 93
    iput-object p9, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZLjava/lang/String;)V
    .locals 1
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStartItem"    # I
    .param p7, "validEndItem"    # I
    .param p8, "cycleEnabled"    # Z
    .param p9, "columnText"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .line 120
    iput p2, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 121
    iput p3, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 122
    iput p4, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCount:I

    .line 123
    iput p5, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 124
    iput p6, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 125
    iput p7, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mValidEnd:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 127
    iput-boolean p8, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 128
    iput-object p9, p0, Lcom/meizu/common/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 129
    return-void
.end method
