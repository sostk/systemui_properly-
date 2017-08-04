.class public Lcom/flyme/systemui/recents/views/QuickChangeView;
.super Landroid/widget/FrameLayout;
.source "QuickChangeView.java"

# interfaces
.implements Lcom/flyme/systemui/recents/views/IQuickChangeView;


# instance fields
.field private final interpolator1:Landroid/view/animation/Interpolator;

.field private final interpolator2:Landroid/view/animation/Interpolator;

.field private final interpolator3:Landroid/view/animation/Interpolator;

.field private final interpolator_current_opacity:Landroid/view/animation/Interpolator;

.field private final interpolator_current_position:Landroid/view/animation/Interpolator;

.field private final interpolator_current_position_2:Landroid/view/animation/Interpolator;

.field private final interpolator_current_scale:Landroid/view/animation/Interpolator;

.field private final interpolator_current_scale_2:Landroid/view/animation/Interpolator;

.field private final interpolator_next_position:Landroid/view/animation/Interpolator;

.field private final interpolator_next_position_2:Landroid/view/animation/Interpolator;

.field private final interpolator_next_scale:Landroid/view/animation/Interpolator;

.field private final interpolator_next_scale_2:Landroid/view/animation/Interpolator;

.field private mContext:Landroid/content/Context;

.field private mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

.field private mStack:Landroid/widget/FrameLayout;

.field private mStackHeight:I

.field private mStackWidth:I

.field private mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

.field private mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

.field private mWallPaper:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x3eae147b    # 0.34f

    const v5, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator1:Landroid/view/animation/Interpolator;

    .line 142
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator2:Landroid/view/animation/Interpolator;

    .line 143
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator3:Landroid/view/animation/Interpolator;

    .line 145
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3f0a3d71    # 0.54f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator1:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_position:Landroid/view/animation/Interpolator;

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator1:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_opacity:Landroid/view/animation/Interpolator;

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator2:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale:Landroid/view/animation/Interpolator;

    .line 149
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator2:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_position:Landroid/view/animation/Interpolator;

    .line 151
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator2:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale_2:Landroid/view/animation/Interpolator;

    .line 152
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f147ae1    # 0.58f

    invoke-direct {v0, v5, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_position_2:Landroid/view/animation/Interpolator;

    .line 153
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator3:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale_2:Landroid/view/animation/Interpolator;

    .line 154
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator3:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_position_2:Landroid/view/animation/Interpolator;

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private bindData(Lcom/flyme/systemui/recents/bean/QuickChangeBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .prologue
    .line 89
    const-string/jumbo v0, "quickchange.view"

    const-string/jumbo v1, "bindData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mWallPaper:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->getBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->getCurrent()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->getNext()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 88
    return-void
.end method

.method private clearData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string/jumbo v0, "quickchange.view"

    const-string/jumbo v1, "clearData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .line 99
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mWallPaper:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 96
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "quickchange.view"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->clearData()V

    .line 129
    return-void
.end method

.method public isBindData()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f0f0202

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    .line 43
    const v0, 0x7f0f0203

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mWallPaper:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0f0204

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/ThumbnailView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    .line 45
    const v0, 0x7f0f0205

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/ThumbnailView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setZ(F)V

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 73
    .local v0, "mConfig":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget-boolean v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 75
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 71
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackHeight:I

    iget v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 p2, v1, 0x2

    .line 78
    neg-int p3, p2

    .line 79
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 80
    iget v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 53
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 55
    .local v0, "height":I
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 56
    .local v1, "mConfig":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget-boolean v3, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v3, :cond_0

    .line 57
    iput v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackWidth:I

    .line 58
    iput v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackHeight:I

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStack:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackWidth:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 66
    iget v5, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 65
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 67
    invoke-virtual {p0, v2, v0}, Lcom/flyme/systemui/recents/views/QuickChangeView;->setMeasuredDimension(II)V

    .line 51
    return-void

    .line 60
    :cond_0
    iput v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackHeight:I

    .line 61
    iput v0, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mStackWidth:I

    goto :goto_0
.end method

.method public show(Lcom/flyme/systemui/recents/bean/QuickChangeBean;)V
    .locals 3
    .param p1, "bean"    # Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .prologue
    .line 106
    const-string/jumbo v1, "quickchange.view"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/views/QuickChangeView;->bindData(Lcom/flyme/systemui/recents/bean/QuickChangeBean;)V

    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 109
    const/16 v1, 0x7e1

    .line 108
    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 110
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "RecentsQuickChange"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 112
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 113
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    const v1, 0x1000108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    const/16 v1, 0xe

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 119
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public update(ZF)V
    .locals 9
    .param p1, "isNextExist"    # Z
    .param p2, "f"    # F

    .prologue
    const v8, 0x3ca3d70a    # 0.02f

    const v7, 0x3c9ba5e3    # 0.019f

    const/high16 v6, 0x41c00000    # 24.0f

    const v4, 0x3cf5c28f    # 0.03f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 158
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 160
    .local v0, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget-boolean v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v2, :cond_0

    .line 161
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 165
    .local v1, "parentHeight":I
    :goto_0
    cmpg-float v2, p2, v5

    if-gtz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleX(F)V

    .line 167
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleY(F)V

    .line 168
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_position:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    .line 169
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_opacity:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3e851eb8    # 0.26f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setDimAlpha(F)V

    .line 171
    if-eqz p1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3cac0831    # 0.021f

    mul-float/2addr v3, v4

    const v4, 0x3f75c28f    # 0.96f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleX(F)V

    .line 173
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3cac0831    # 0.021f

    mul-float/2addr v3, v4

    const v4, 0x3f75c28f    # 0.96f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleY(F)V

    .line 174
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    int-to-float v3, v1

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_position:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x42f60000    # 123.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    .line 157
    :goto_1
    return-void

    .line 163
    .end local v1    # "parentHeight":I
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "parentHeight":I
    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    goto :goto_1

    .line 180
    :cond_2
    if-eqz p1, :cond_3

    .line 181
    sub-float/2addr p2, v5

    .line 182
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v8

    const v4, 0x3f7851ec    # 0.97f

    sub-float v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleX(F)V

    .line 183
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v8

    const v4, 0x3f7851ec    # 0.97f

    sub-float v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleY(F)V

    .line 184
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_position_2:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x42100000    # 36.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    .line 186
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v7

    const v4, 0x3f7b22d1    # 0.981f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleX(F)V

    .line 187
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v7

    const v4, 0x3f7b22d1    # 0.981f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleY(F)V

    .line 188
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    add-int/lit8 v3, v1, -0x7b

    int-to-float v3, v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_next_position:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    goto :goto_1

    .line 190
    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    sub-float p2, v2, p2

    .line 191
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleX(F)V

    .line 192
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_scale:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setScaleY(F)V

    .line 193
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_position:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    .line 194
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailCurrent:Lcom/flyme/systemui/recents/views/ThumbnailView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->interpolator_current_opacity:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3e851eb8    # 0.26f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setDimAlpha(F)V

    .line 196
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/QuickChangeView;->mThumbnailNext:Lcom/flyme/systemui/recents/views/ThumbnailView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/ThumbnailView;->setTranslationY(F)V

    goto/16 :goto_1
.end method
