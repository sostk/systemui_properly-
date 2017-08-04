.class Lcom/android/systemui/qs/QSPanel$7;
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
    .line 493
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$7;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$7;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$7;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$7;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->secondaryClick()V

    .line 495
    :cond_0
    return-void
.end method
