.class public Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;
.super Landroid/widget/FrameLayout;
.source "EnterAnimateFrameLayout.java"


# instance fields
.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mStackView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->setClipToOutline(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f0f01f2

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    .line 34
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 57
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 56
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 54
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 60
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 62
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 61
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 43
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 45
    .local v0, "height":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 50
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->setMeasuredDimension(II)V

    .line 40
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/EnterAnimateFrameLayout;->mStackView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p2, p1}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_0
.end method
