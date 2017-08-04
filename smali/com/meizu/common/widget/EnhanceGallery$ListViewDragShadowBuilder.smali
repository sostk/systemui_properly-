.class Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2543
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 2544
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "needBg"    # Z
    .param p4, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    .line 2547
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2537
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    const/4 v6, 0x0

    .line 2538
    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    const/4 v6, -0x1

    .line 2635
    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    .line 2548
    iput-boolean p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2549
    iput-object p4, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2550
    if-eqz p2, :cond_0

    .line 2551
    if-nez p3, :cond_1

    .line 2569
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2570
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    :goto_0
    const/4 v6, 0x0

    .line 2573
    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2574
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 2592
    :goto_1
    return-void

    .line 2550
    :cond_0
    return-void

    .line 2552
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2553
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2554
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2555
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2556
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2557
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2558
    .local v1, "height":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2559
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2560
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2562
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 2563
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2565
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 2566
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .end local v1    # "height":I
    .end local v4    # "padding":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :cond_2
    const/4 v6, 0x2

    .line 2577
    new-array v2, v6, [I

    .line 2578
    .local v2, "listLocation":[I
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getLocationOnScreen([I)V

    const/4 v6, 0x2

    .line 2580
    new-array v0, v6, [I

    .line 2581
    .local v0, "dragLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x1

    .line 2583
    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-lt v6, v7, :cond_3

    .line 2589
    :goto_2
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x1

    .line 2584
    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2585
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 2586
    .local v3, "maxDragScrollY":I
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    goto :goto_2
.end method


# virtual methods
.method public getDragingState()I
    .locals 1

    .prologue
    .line 2642
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    return v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2608
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-nez v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2627
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2630
    :goto_0
    return-void

    .line 2609
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    if-eqz v0, :cond_1

    .line 2611
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2614
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2616
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2617
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2618
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 2610
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2612
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2622
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 2623
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2624
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2625
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2596
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2597
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2599
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-nez v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2604
    :goto_0
    return-void

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2638
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    .line 2639
    return-void
.end method
