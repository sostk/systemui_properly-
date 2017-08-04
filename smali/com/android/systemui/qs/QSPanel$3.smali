.class Lcom/android/systemui/qs/QSPanel$3;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastAlpha:F

.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "dropView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const v7, 0x7f0f0019

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1048
    const/4 v2, 0x0

    .line 1049
    .local v2, "result":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1050
    .local v0, "dragView":Landroid/view/View;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x7f0f0018

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    iget v1, p0, Lcom/android/systemui/qs/QSPanel$3;->mLastAlpha:F

    .line 1053
    .local v1, "lastAlpha":F
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1098
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1099
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3, v5}, Lcom/android/systemui/qs/QSPanel;->-set1(Lcom/android/systemui/qs/QSPanel;Z)Z

    .line 1100
    if-ne v0, p1, :cond_0

    .line 1101
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1103
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->setTilesVisibilityAll()V

    .line 1107
    :cond_1
    :goto_1
    :pswitch_0
    return v2

    .line 1051
    .end local v1    # "lastAlpha":F
    :cond_2
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "lastAlpha":F
    goto :goto_0

    .line 1055
    :pswitch_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1056
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/QSPanel;->-set1(Lcom/android/systemui/qs/QSPanel;Z)Z

    .line 1057
    if-ne v0, p1, :cond_3

    .line 1058
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel$3;->mLastAlpha:F

    .line 1059
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1063
    :cond_3
    const/4 v2, 0x1

    .line 1064
    goto :goto_1

    .line 1066
    :pswitch_2
    if-eq v0, p1, :cond_4

    .line 1067
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->swap(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 1071
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->removeMyself()V

    goto :goto_1

    .line 1075
    :pswitch_3
    if-eq v0, p1, :cond_1

    .line 1079
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->-get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->removeMyself()V

    goto :goto_1

    .line 1085
    :pswitch_4
    if-eq v0, p1, :cond_1

    .line 1086
    const/4 v2, 0x1

    goto :goto_1

    .line 1090
    :pswitch_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1091
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v3, v5}, Lcom/android/systemui/qs/QSPanel;->-set1(Lcom/android/systemui/qs/QSPanel;Z)Z

    .line 1092
    if-ne v0, p1, :cond_5

    .line 1093
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1095
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->setTilesVisibilityAll()V

    goto :goto_1

    .line 1053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
