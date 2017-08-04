.class Lcom/android/keyguard/PagedView$4;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PagedView;
    .param p2, "val$pageUnderPointIndex"    # I
    .param p3, "val$dragViewIndex"    # I

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iput p2, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1510
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget v10, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v9

    .line 1511
    iget-object v10, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget v11, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v10

    .line 1510
    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/android/keyguard/PagedView;->-set1(Lcom/android/keyguard/PagedView;F)F

    .line 1514
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget v9, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    invoke-virtual {v8, v9}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1519
    iget v8, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    iget v9, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    if-ge v8, v9, :cond_1

    const/4 v5, -0x1

    .line 1520
    .local v5, "shiftDelta":I
    :goto_0
    iget v8, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    iget v9, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    if-ge v8, v9, :cond_2

    .line 1521
    iget v8, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    add-int/lit8 v2, v8, 0x1

    .line 1522
    .local v2, "lowerIndex":I
    :goto_1
    iget v8, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    iget v9, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    if-le v8, v9, :cond_3

    .line 1523
    iget v8, p0, Lcom/android/keyguard/PagedView$4;->val$dragViewIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1524
    .local v6, "upperIndex":I
    :goto_2
    move v1, v2

    .local v1, "i":I
    :goto_3
    if-gt v1, v6, :cond_4

    .line 1525
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v8, v1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1529
    .local v7, "v":Landroid/view/View;
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v8}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v9, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v9

    add-int v4, v8, v9

    .line 1530
    .local v4, "oldX":I
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v8}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    add-int v10, v1, v5

    invoke-virtual {v9, v10}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v9

    add-int v3, v8, v9

    .line 1534
    .local v3, "newX":I
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1535
    .local v0, "anim":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1539
    :cond_0
    sub-int v8, v4, v3

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1540
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1541
    .restart local v0    # "anim":Landroid/animation/AnimatorSet;
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget v8, v8, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1542
    new-array v8, v13, [Landroid/animation/Animator;

    .line 1543
    const-string/jumbo v9, "translationX"

    new-array v10, v13, [F

    const/4 v11, 0x0

    aput v11, v10, v12

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1542
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1544
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1545
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1524
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1519
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "i":I
    .end local v2    # "lowerIndex":I
    .end local v3    # "newX":I
    .end local v4    # "oldX":I
    .end local v5    # "shiftDelta":I
    .end local v6    # "upperIndex":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "shiftDelta":I
    goto :goto_0

    .line 1521
    :cond_2
    iget v2, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    .restart local v2    # "lowerIndex":I
    goto :goto_1

    .line 1523
    :cond_3
    iget v6, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    .restart local v6    # "upperIndex":I
    goto :goto_2

    .line 1548
    .restart local v1    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, v9, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    .line 1549
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, v9, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v8, v9, v12}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 1550
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, v9, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v10, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    invoke-virtual {v8, v9, v10}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 1551
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v9, v9, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v10, p0, Lcom/android/keyguard/PagedView$4;->val$pageUnderPointIndex:I

    invoke-virtual {v8, v9, v10}, Lcom/android/keyguard/PagedView;->onAddView(Landroid/view/View;I)V

    .line 1552
    iget-object v8, p0, Lcom/android/keyguard/PagedView$4;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/keyguard/PagedView;->-set2(Lcom/android/keyguard/PagedView;I)I

    .line 1507
    return-void
.end method
