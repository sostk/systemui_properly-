.class public Lcom/meizu/common/widget/PartitionItemLayout;
.super Landroid/widget/FrameLayout;
.source "PartitionItemLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field protected mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mItemShadeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PartitionItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    .local v0, "cbg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_list_new_item_bg_light_activated:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    .local v0, "cbg":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 62
    :goto_1
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    goto :goto_1
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 67
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 68
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 69
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 70
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 135
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/PartitionItemLayout;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PartitionItemLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    if-nez p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 90
    :goto_1
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "contentBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 99
    :goto_1
    iput-object p1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 101
    if-nez p1, :cond_3

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->setWillNotDraw(Z)V

    .line 110
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->requestLayout()V

    .line 111
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->invalidate()V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PartitionItemLayout;->setWillNotDraw(Z)V

    .line 103
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method
