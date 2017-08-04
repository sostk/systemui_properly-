.class Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;
.super Landroid/os/Handler;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private final mScrollTextViewScroller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 1
    .param p1, "scrollTextViewScroller"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1732
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1733
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;->mScrollTextViewScroller:Ljava/lang/ref/WeakReference;

    .line 1734
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1737
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;->mScrollTextViewScroller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .line 1738
    .local v2, "scrollTextViewScroller":Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    if-nez v2, :cond_0

    .line 1761
    :goto_0
    return-void

    .line 1739
    :cond_0
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1740
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1741
    .local v0, "currY":I
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$800(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v3

    sub-int v1, v3, v0

    .line 1742
    .local v1, "delta":I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$802(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1745
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onScroll(I)V

    .line 1749
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 1753
    :goto_1
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1755
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_3

    .line 1758
    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->finishScrolling()V

    goto :goto_0

    .line 1750
    :cond_1
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 1751
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 1754
    :cond_2
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1400(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1756
    :cond_3
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1500(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    goto :goto_0
.end method
