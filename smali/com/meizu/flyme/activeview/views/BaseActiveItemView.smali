.class public Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
.super Landroid/widget/FrameLayout;
.source "BaseActiveItemView.java"


# instance fields
.field private mBlurLevel:F

.field private mContentView:Landroid/view/View;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v0, "image"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mBlurLevel:F

    .line 36
    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mType:Ljava/lang/String;

    const-string/jumbo v0, "image"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "text"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 48
    :goto_1
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->initGLBlurDrawable()V

    .line 49
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->setWillNotDraw(Z)V

    .line 50
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private initGLBlurDrawable()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method public getBlurLevel()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mBlurLevel:F

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    return-void
.end method

.method public setBlurLevel(F)V
    .locals 0
    .param p1, "blurLevel"    # F

    .prologue
    .line 88
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    .line 145
    if-nez p1, :cond_1

    .line 148
    :goto_1
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mType:Ljava/lang/String;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mType:Ljava/lang/String;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
