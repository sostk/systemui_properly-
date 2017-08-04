.class public Lcom/flyme/systemui/recents/views/TaskViewThumbnail;
.super Lcom/flyme/systemui/recents/views/ThumbnailView;
.source "TaskViewThumbnail.java"


# instance fields
.field mClipRect:Landroid/graphics/Rect;

.field mViewBounds:Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/recents/views/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;-><init>(Lcom/flyme/systemui/recents/views/TaskViewThumbnail;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mViewBounds:Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    .line 43
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/flyme/systemui/recents/views/ThumbnailView;->onFinishInflate()V

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mViewBounds:Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setClipToOutline(Z)V

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 58
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 75
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method

.method rebindToTask(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 114
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/flyme/systemui/recents/model/RunningScapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 120
    :goto_0
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setAlive(Z)V

    .line 121
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setSecretive(Z)V

    .line 113
    return-void

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method unbindFromTask()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

.method updateThumbnailVisibility(I)V
    .locals 2
    .param p1, "clipBottom"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    .line 101
    .local v0, "invisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    .line 102
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 103
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 93
    :cond_1
    return-void

    .line 100
    .end local v0    # "invisible":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "invisible":Z
    goto :goto_0
.end method
