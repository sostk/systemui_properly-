.class Lcom/android/systemui/qs/QSPanel$5;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "val$r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 463
    move-object v0, p1

    .line 464
    .local v0, "str":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    new-instance v2, Lcom/android/systemui/qs/QSPanel$5$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/QSPanel$5$1;-><init>(Lcom/android/systemui/qs/QSPanel$5;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get6(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->-wrap1(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onShowAlert(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "alert"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->-wrap12(Lcom/android/systemui/qs/QSPanel;ZLjava/lang/String;)V

    .line 474
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->-wrap13(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 443
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 419
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 422
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isClosingDetail()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->-get9(Lcom/android/systemui/qs/QSPanel;)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->-wrap11(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 429
    return-void

    .line 419
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0

    .line 433
    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->-get7(Lcom/android/systemui/qs/QSPanel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->-wrap11(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 418
    return-void

    .line 437
    :cond_5
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get6(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$5;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$5;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSPanel;->-wrap2(Lcom/android/systemui/qs/QSPanel;Z)V

    .line 447
    :cond_0
    return-void
.end method
