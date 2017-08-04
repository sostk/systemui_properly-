.class Lcom/meizu/common/util/ListViewUtils$2;
.super Ljava/lang/Object;
.source "ListViewUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewUtils;->animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ListViewUtils;

.field final synthetic val$adapterList:Ljava/util/ArrayList;

.field final synthetic val$listview:Landroid/widget/ListView;

.field final synthetic val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Ljava/util/ArrayList;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iput-object p2, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$adapterList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 21

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    .line 149
    .local v8, "firstVisiblePosition":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x0

    .line 150
    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    .line 183
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    .local v13, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 185
    new-instance v18, Lcom/meizu/common/util/ListViewUtils$2$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/common/util/ListViewUtils$2$1;-><init>(Lcom/meizu/common/util/ListViewUtils$2;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 196
    const/16 v18, 0x1

    return v18

    .line 151
    .end local v13    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 152
    .local v4, "child":Landroid/view/View;
    add-int v12, v8, v9

    .line 153
    .local v12, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$adapterList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-long v10, v0

    .line 154
    .local v10, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 155
    .local v14, "startTop":Ljava/lang/Integer;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v16

    .line 156
    .local v16, "top":I
    if-nez v14, :cond_3

    .line 170
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v19

    add-int v5, v18, v19

    .line 171
    .local v5, "childHeight":I
    if-gtz v9, :cond_1

    neg-int v5, v5

    .end local v5    # "childHeight":I
    :cond_1
    add-int v18, v16, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 172
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v6, v18, v16

    .line 173
    .local v6, "delta":I
    if-nez v4, :cond_4

    .line 150
    .end local v6    # "delta":I
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 157
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 158
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v6, v18, v16

    .line 159
    .restart local v6    # "delta":I
    if-eqz v4, :cond_2

    const/16 v18, 0x0

    .line 160
    int-to-float v0, v6

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    .local v15, "startTranKey":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 161
    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 162
    .local v7, "endTranKey":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/meizu/common/util/ListViewUtils;->access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    .line 163
    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .local v17, "tranValuesHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x1

    .line 164
    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 165
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    .end local v7    # "endTranKey":Landroid/animation/Keyframe;
    .end local v15    # "startTranKey":Landroid/animation/Keyframe;
    .end local v17    # "tranValuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_4
    const/16 v18, 0x0

    .line 174
    int-to-float v0, v6

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    .restart local v15    # "startTranKey":Landroid/animation/Keyframe;
    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 175
    invoke-static/range {v18 .. v19}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 176
    .restart local v7    # "endTranKey":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/meizu/common/util/ListViewUtils;->access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v18, "translationY"

    const/16 v19, 0x2

    .line 177
    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .restart local v17    # "tranValuesHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x1

    .line 178
    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 179
    .restart local v3    # "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
