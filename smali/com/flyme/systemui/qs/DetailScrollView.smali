.class public Lcom/flyme/systemui/qs/DetailScrollView;
.super Landroid/widget/ScrollView;
.source "DetailScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/DetailScrollView$Listener;
    }
.end annotation


# instance fields
.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

.field private mTouchSlopExceeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 41
    invoke-virtual {p0, v5}, Lcom/flyme/systemui/qs/DetailScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 42
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 45
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getMaxScrollY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 96
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 98
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 100
    :pswitch_0
    iput v1, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    .line 101
    iput v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 51
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 53
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 87
    return v6

    .line 55
    :pswitch_0
    iput v3, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    .line 56
    iput v2, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    .line 57
    iput-boolean v5, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    goto :goto_0

    .line 60
    :pswitch_1
    iget v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    sub-float v0, v3, v4

    .line 61
    .local v0, "h":F
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43fa0000    # 500.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 62
    iput-boolean v6, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    goto :goto_0

    .line 67
    .end local v0    # "h":F
    :pswitch_2
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 68
    invoke-virtual {p0, v5}, Lcom/flyme/systemui/qs/DetailScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    .line 69
    .local v1, "isInEmptyArea":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 70
    iget-object v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    invoke-interface {v4}, Lcom/flyme/systemui/qs/DetailScrollView$Listener;->onEmptySpaceClicked()V

    goto :goto_0

    .line 68
    .end local v1    # "isInEmptyArea":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isInEmptyArea":Z
    goto :goto_1

    .line 76
    .end local v1    # "isInEmptyArea":Z
    :cond_2
    invoke-direct {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->isScrolledToBottom()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    invoke-interface {v4}, Lcom/flyme/systemui/qs/DetailScrollView$Listener;->onBottomOverscrolled()V

    goto :goto_0

    .line 90
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setListener(Lcom/flyme/systemui/qs/DetailScrollView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    .line 30
    return-void
.end method
