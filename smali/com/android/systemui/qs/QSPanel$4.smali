.class Lcom/android/systemui/qs/QSPanel$4;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1644
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1645
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v4}, Lcom/android/systemui/qs/QSPanel;->-get6(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1646
    .local v1, "tr":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileView;->getLocationOnScreen()[I

    move-result-object v0

    .line 1647
    .local v0, "pos":[I
    const-string/jumbo v4, "QSPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onLayout pos[0]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pos[1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    aget v4, v0, v7

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSPanel;->-get13(Lcom/android/systemui/qs/QSPanel;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 1649
    aget v4, v0, v8

    iget-object v5, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 1650
    .local v2, "x":I
    aget v4, v0, v7

    iget-object v5, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v5}, Lcom/android/systemui/qs/QSPanel;->-get5(Lcom/android/systemui/qs/QSPanel;)I

    move-result v5

    add-int v3, v4, v5

    .line 1651
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$4;->this$0:Lcom/android/systemui/qs/QSPanel;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5}, Lcom/android/systemui/qs/QSPanel;->-wrap7(Lcom/android/systemui/qs/QSPanel;Landroid/graphics/Point;)V

    .line 1643
    .end local v0    # "pos":[I
    .end local v1    # "tr":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void
.end method
