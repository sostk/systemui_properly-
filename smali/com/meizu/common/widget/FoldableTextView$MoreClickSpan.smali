.class Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
.super Landroid/text/style/TypefaceSpan;
.source "FoldableTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreClickSpan"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "family"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    .line 478
    invoke-direct {p0, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 479
    iput-object p3, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    .line 480
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$100(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$200(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    if-nez v0, :cond_3

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$402(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 500
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$500(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 501
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$600(Lcom/meizu/common/widget/FoldableTextView;)V

    .line 502
    return-void

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 486
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
