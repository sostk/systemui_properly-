.class Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;
.super Ljava/lang/Object;
.source "DataSaveControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->setDataSaveEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vpnOpenStatus"

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "flyme.permission.send.MEIZU_DATASAVE_MODE_CHANGED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)V

    .line 49
    return-void
.end method
