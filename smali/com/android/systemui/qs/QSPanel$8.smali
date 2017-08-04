.class Lcom/android/systemui/qs/QSPanel$8;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 503
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$8;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$8;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$8;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$8;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$8;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->longClick()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$8;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get1(Lcom/android/systemui/qs/QSPanel;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$8;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectLongPressNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    return v3

    .line 514
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/QSPanel$8$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$8$1;-><init>(Lcom/android/systemui/qs/QSPanel$8;Landroid/view/View;)V

    const/4 v1, 0x0

    .line 523
    const/4 v2, 0x0

    .line 514
    invoke-virtual {p1, v1, v0, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 524
    return v3
.end method
