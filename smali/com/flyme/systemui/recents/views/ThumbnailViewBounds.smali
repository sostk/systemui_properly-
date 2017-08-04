.class public Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "ThumbnailViewBounds.java"


# instance fields
.field mAlpha:F

.field mClipBounds:Landroid/graphics/Rect;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mCornerRadius:I

.field final mOutlineBottom:I

.field final mOutlineLeft:I

.field final mOutlineRight:I

.field final mOutlineTop:I

.field mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewThumbnail;I)V
    .locals 2
    .param p1, "source"    # Lcom/flyme/systemui/recents/views/TaskViewThumbnail;
    .param p2, "cornerRadius"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipBounds:Landroid/graphics/Rect;

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mAlpha:F

    .line 40
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 41
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 42
    iput p2, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mCornerRadius:I

    .line 43
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->getClipRight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->setClipRight(I)V

    .line 44
    iput v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineLeft:I

    .line 45
    iput v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineTop:I

    .line 46
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineLeft:I

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineRight:I

    .line 47
    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineTop:I

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineBottom:I

    .line 39
    return-void
.end method

.method private updateClipBounds()V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 83
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 84
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 82
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->setClipBounds(Landroid/graphics/Rect;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getClipRight()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 52
    iget v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineLeft:I

    iget v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineTop:I

    iget v3, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineRight:I

    iget v4, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mOutlineBottom:I

    iget v0, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 51
    return-void
.end method

.method public setClipRight(I)V
    .locals 3
    .param p1, "right"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 61
    .local v0, "width":I
    if-le p1, v0, :cond_0

    .line 62
    move p1, v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq p1, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 67
    invoke-direct {p0}, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->updateClipBounds()V

    .line 69
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    .line 71
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/ThumbnailViewBounds;->mSourceView:Lcom/flyme/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->getPaddingRight()I

    move-result v2

    sub-int v2, p1, v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(I)V

    .line 56
    :cond_1
    return-void
.end method
