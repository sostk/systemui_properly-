.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTextViewAdapter"
.end annotation


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;

.field private validEnd:I

.field private validStart:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 3

    .prologue
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 1464
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;III)V

    .line 1466
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;II)V
    .locals 1
    .param p2, "validStart"    # I
    .param p3, "validEnd"    # I

    .prologue
    .line 1474
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;III)V

    .line 1475
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;III)V
    .locals 1
    .param p2, "count"    # I
    .param p3, "validStart"    # I
    .param p4, "validEnd"    # I

    .prologue
    const/4 v0, 0x0

    .line 1483
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1454
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1456
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1458
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1484
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 1485
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1494
    if-gez p1, :cond_1

    .line 1498
    :cond_0
    return-object v1

    .line 1494
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 1506
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    return v0
.end method

.method public getValidEnd()I
    .locals 1

    .prologue
    .line 1522
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    return v0
.end method

.method public getValidStart()I
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    return v0
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1502
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1503
    return-void
.end method

.method public update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 0
    .param p1, "count"    # I
    .param p2, "validStart"    # I
    .param p3, "validEnd"    # I

    .prologue
    .line 1510
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validStart:I

    .line 1511
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->validEnd:I

    .line 1512
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->count:I

    .line 1514
    return-object p0
.end method
