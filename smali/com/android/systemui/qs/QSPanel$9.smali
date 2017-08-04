.class Lcom/android/systemui/qs/QSPanel$9;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "val$settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$9;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$9;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$9;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->-get8(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$9;->val$settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startSettingsActivity(Landroid/content/Intent;)V

    .line 606
    return-void
.end method
