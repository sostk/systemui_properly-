.class public Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLinkMovementMethod"
.end annotation


# static fields
.field static sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    if-eqz v0, :cond_0

    .line 653
    :goto_0
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 658
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 660
    .local v0, "action":I
    if-ne v0, v9, :cond_1

    .line 661
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 662
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 664
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    .line 665
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 667
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    .line 668
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 670
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 671
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 672
    .local v2, "line":I
    int-to-float v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .local v4, "off":I
    const-class v7, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    .line 674
    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    .line 676
    .local v3, "link":[Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    array-length v7, v3

    if-nez v7, :cond_2

    .line 688
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 689
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 690
    return v8

    .line 660
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    if-eqz v0, :cond_0

    .line 693
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 677
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "link":[Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    .restart local v4    # "off":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_2
    if-eq v0, v9, :cond_3

    .line 679
    if-eqz v0, :cond_4

    .line 683
    :goto_0
    instance-of v7, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-nez v7, :cond_5

    .line 686
    .end local p1    # "widget":Landroid/widget/TextView;
    :goto_1
    return v9

    .line 678
    .restart local p1    # "widget":Landroid/widget/TextView;
    :cond_3
    aget-object v7, v3, v8

    invoke-virtual {v7, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 680
    :cond_4
    aget-object v7, v3, v8

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aget-object v8, v3, v8

    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {p2, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 684
    :cond_5
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    .end local p1    # "widget":Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/meizu/common/widget/FoldableTextView;->access$1502(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    goto :goto_1
.end method
