.class Lcom/android/keyguard/PagedView$11;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PagedView;
    .param p2, "val$dragView"    # Landroid/view/View;

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/keyguard/PagedView$11;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->val$dragView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 2457
    .local v6, "dragViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 2460
    .local v9, "isLastWidgetPage":Z
    :goto_0
    if-nez v9, :cond_3

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    if-le v6, v0, :cond_4

    const/4 v15, 0x1

    .line 2464
    .local v15, "slideFromLeft":Z
    :goto_1
    if-eqz v15, :cond_0

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/keyguard/PagedView;->snapToPageImmediately(I)V

    .line 2468
    :cond_0
    if-eqz v9, :cond_5

    const/4 v7, 0x0

    .line 2469
    .local v7, "firstIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2470
    .local v10, "lastIndex":I
    if-eqz v15, :cond_6

    move v11, v7

    .line 2471
    .local v11, "lowerIndex":I
    :goto_3
    if-eqz v15, :cond_7

    add-int/lit8 v16, v6, -0x1

    .line 2472
    .local v16, "upperIndex":I
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2473
    .local v5, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v8, v11

    .local v8, "i":I
    :goto_5
    move/from16 v0, v16

    if-gt v8, v0, :cond_a

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2478
    .local v17, "v":Landroid/view/View;
    const/4 v13, 0x0

    .line 2479
    .local v13, "oldX":I
    const/4 v12, 0x0

    .line 2480
    .local v12, "newX":I
    if-eqz v15, :cond_9

    .line 2481
    if-nez v8, :cond_8

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v19

    sub-int v18, v18, v19

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    .line 2483
    sub-int v13, v18, v19

    .line 2488
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v19

    add-int v12, v18, v19

    .line 2496
    :goto_7
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    .line 2497
    .local v4, "anim":Landroid/animation/AnimatorSet;
    if-eqz v4, :cond_1

    .line 2498
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2503
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getAlpha()F

    move-result v18

    const v19, 0x3c23d70a    # 0.01f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    .line 2504
    sub-int v18, v13, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationX(F)V

    .line 2505
    new-instance v4, Landroid/animation/AnimatorSet;

    .end local v4    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2506
    .restart local v4    # "anim":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    .line 2507
    const-string/jumbo v19, "translationX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v21, v20, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 2508
    const-string/jumbo v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    aput v21, v20, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 2506
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2509
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2473
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 2459
    .end local v4    # "anim":Landroid/animation/AnimatorSet;
    .end local v5    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v7    # "firstIndex":I
    .end local v8    # "i":I
    .end local v9    # "isLastWidgetPage":Z
    .end local v10    # "lastIndex":I
    .end local v11    # "lowerIndex":I
    .end local v12    # "newX":I
    .end local v13    # "oldX":I
    .end local v15    # "slideFromLeft":Z
    .end local v16    # "upperIndex":I
    .end local v17    # "v":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "isLastWidgetPage":Z
    goto/16 :goto_0

    .line 2460
    :cond_3
    const/4 v15, 0x1

    .restart local v15    # "slideFromLeft":Z
    goto/16 :goto_1

    .line 2461
    .end local v15    # "slideFromLeft":Z
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "slideFromLeft":Z
    goto/16 :goto_1

    .line 2468
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v7, v18, v19

    .restart local v7    # "firstIndex":I
    goto/16 :goto_2

    .line 2470
    .restart local v10    # "lastIndex":I
    :cond_6
    add-int/lit8 v11, v6, 0x1

    .restart local v11    # "lowerIndex":I
    goto/16 :goto_3

    .line 2471
    :cond_7
    move/from16 v16, v10

    .restart local v16    # "upperIndex":I
    goto/16 :goto_4

    .line 2486
    .restart local v5    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v8    # "i":I
    .restart local v12    # "newX":I
    .restart local v13    # "oldX":I
    .restart local v17    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v19

    add-int v13, v18, v19

    goto/16 :goto_6

    .line 2490
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v19

    sub-int v13, v18, v19

    .line 2491
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 2513
    .end local v12    # "newX":I
    .end local v13    # "oldX":I
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2514
    .local v14, "slideAnimations":Landroid/animation/AnimatorSet;
    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/keyguard/PagedView;->-get0(Lcom/android/keyguard/PagedView;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2516
    new-instance v18, Lcom/android/keyguard/PagedView$11$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView$11$1;-><init>(Lcom/android/keyguard/PagedView$11;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2530
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->val$dragView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$11;->val$dragView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 2449
    return-void
.end method
