.class public Lcom/flyme/systemui/recents/views/EnterAnimateView;
.super Landroid/widget/FrameLayout;
.source "EnterAnimateView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;
    }
.end annotation


# instance fields
.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field public mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

.field mTaskRect:Landroid/graphics/Rect;

.field public mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

.field mViewBounds:Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 45
    new-instance v0, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mViewBounds:Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mViewBounds:Lcom/flyme/systemui/recents/views/EnterAnimateView$AnimateViewBounds;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->setClipToOutline(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 92
    const v0, 0x7f0f0208

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    .line 93
    const v0, 0x7f0f01f3

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 90
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 99
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 101
    .local v1, "height":I
    iget v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mPaddingLeft:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mPaddingRight:I

    sub-int v4, v5, v6

    .line 102
    .local v4, "widthWithoutPadding":I
    iget v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mPaddingTop:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mPaddingBottom:I

    sub-int v2, v5, v6

    .line 105
    .local v2, "heightWithoutPadding":I
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 106
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 105
    invoke-virtual {v5, v6, v7}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 107
    int-to-float v5, v3

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 108
    .local v0, "f":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setScaleX(F)V

    .line 109
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setScaleY(F)V

    .line 110
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mHeaderView:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v0, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/flyme/systemui/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 112
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/EnterAnimateView;->mThumbnailView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 113
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 114
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 112
    invoke-virtual {v5, v6, v7}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 115
    invoke-virtual {p0, v3, v1}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->setMeasuredDimension(II)V

    .line 116
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/EnterAnimateView;->invalidateOutline()V

    .line 97
    return-void
.end method
