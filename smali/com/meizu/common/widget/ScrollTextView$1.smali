.class Lcom/meizu/common/widget/ScrollTextView$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$200(Lcom/meizu/common/widget/ScrollTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$402(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 427
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 428
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->notifyScrollingListenersAboutEnd()V

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$202(Lcom/meizu/common/widget/ScrollTextView;Z)Z

    goto :goto_0
.end method

.method public onJustify()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v0, v0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v0, :cond_2

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v0, v0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v0, :cond_3

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$400(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 438
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$400(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroll(II)V

    goto :goto_0
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 408
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1, p1}, Lcom/meizu/common/widget/ScrollTextView;->access$300(Lcom/meizu/common/widget/ScrollTextView;I)V

    .line 410
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    .line 411
    .local v0, "height":I
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$400(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$400(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    neg-int v2, v0

    if-lt v1, v2, :cond_1

    .line 418
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/ScrollTextView;->access$402(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 413
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->access$402(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 416
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$202(Lcom/meizu/common/widget/ScrollTextView;Z)Z

    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->notifyScrollingListenersAboutStart()V

    .line 405
    return-void
.end method
