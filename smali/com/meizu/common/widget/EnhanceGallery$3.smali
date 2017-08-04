.class Lcom/meizu/common/widget/EnhanceGallery$3;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1287
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v3, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    if-eq v3, v9, :cond_1

    const/4 v1, 0x0

    .line 1290
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1369
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return v8

    .line 1288
    :cond_1
    return v6

    .line 1293
    .restart local v1    # "child":Landroid/view/View;
    :sswitch_0
    return v8

    .line 1296
    :sswitch_1
    return v8

    .line 1299
    :sswitch_2
    return v8

    .line 1302
    :sswitch_3
    return v8

    .line 1305
    :sswitch_4
    return v6

    .line 1308
    :sswitch_5
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v5, v5, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1309
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_3

    .line 1323
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1325
    if-nez v1, :cond_7

    .line 1333
    :goto_2
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v9, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 1336
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1337
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1310
    :cond_3
    instance-of v3, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-nez v3, :cond_4

    .line 1319
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 1311
    check-cast v3, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 1312
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_5

    .line 1315
    :goto_3
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 1313
    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 1324
    .end local v2    # "v":Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {v3, v4, v8}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    goto :goto_2

    :cond_7
    const v3, 0x1020001

    .line 1326
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1327
    .local v0, "checkbox":Landroid/view/View;
    if-nez v0, :cond_9

    .line 1330
    .end local v0    # "checkbox":Landroid/view/View;
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto :goto_2

    .line 1327
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_9
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_8

    .line 1328
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_4

    .line 1342
    .local v1, "child":Landroid/view/View;
    :sswitch_6
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v5, v5, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1343
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_c

    .line 1361
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 1364
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v3

    if-lez v3, :cond_10

    .line 1366
    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v9, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    goto/16 :goto_0

    .line 1344
    :cond_c
    instance-of v3, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-nez v3, :cond_e

    .line 1353
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    :goto_7
    const v3, 0x1020001

    .line 1356
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    .restart local v0    # "checkbox":Landroid/view/View;
    if-eqz v0, :cond_a

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_a

    .line 1358
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_5

    :cond_e
    move-object v3, v1

    .line 1345
    check-cast v3, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v3}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 1346
    .restart local v2    # "v":Landroid/view/View;
    if-nez v2, :cond_f

    .line 1349
    :goto_8
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1350
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    .line 1347
    :cond_f
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 1364
    .end local v2    # "v":Landroid/view/View;
    :cond_10
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1365
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_6

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
