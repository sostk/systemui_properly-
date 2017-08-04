.class Lcom/android/systemui/qs/QSPanel$6;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 480
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$6;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$6;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$6;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$6;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$6;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$6;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClickNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    return-void
.end method
