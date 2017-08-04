.class public Lcom/flyme/systemui/recents/views/TaskViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "TaskViewBounds.java"


# instance fields
.field mAlpha:F

.field mCornerRadius:I

.field mInterceptAlphaAnimation:Z

.field final mOutlineBottom:I

.field final mOutlineLeft:I

.field final mOutlineRight:I

.field final mOutlineTop:I

.field mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .param p1, "source"    # Landroid/view/View;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mAlpha:F

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    .line 35
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 36
    .local v0, "mConfig":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mSourceView:Landroid/view/View;

    .line 37
    iput p2, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mCornerRadius:I

    .line 38
    iget-object v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineLeft:I

    .line 39
    iget-object v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineTop:I

    .line 40
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineLeft:I

    iget-object v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineRight:I

    .line 41
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineTop:I

    iget-object v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineBottom:I

    .line 34
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 46
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 47
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineTop:I

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mOutlineBottom:I

    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    const/4 v1, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 45
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 63
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mAlpha:F

    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 61
    :cond_0
    return-void
.end method

.method setAlphaDependP(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getShadowAlphaDependP(F)F

    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlpha(F)V

    .line 53
    return-void
.end method

.method setAlphaForAnimation(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewBounds;->mInterceptAlphaAnimation:Z

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 76
    const/high16 p1, 0x3f800000    # 1.0f

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskViewBounds;->setAlpha(F)V

    .line 71
    return-void

    .line 77
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 78
    const/4 p1, 0x0

    goto :goto_0
.end method
