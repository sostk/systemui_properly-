.class public Lcom/flyme/systemui/recents/views/WallpaperView;
.super Landroid/widget/ImageView;
.source "WallpaperView.java"


# instance fields
.field mDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 21
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/WallpaperView;->refresh()V

    .line 19
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/WallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 31
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/WallpaperView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v1, v0, :cond_0

    .line 32
    iput-object v0, p0, Lcom/flyme/systemui/recents/views/WallpaperView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/WallpaperView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    return-void

    .line 29
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/WallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method
