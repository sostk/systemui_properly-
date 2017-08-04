.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/LocationMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    const-string/jumbo v2, "package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packageNameString":Ljava/lang/String;
    const-string/jumbo v2, "LocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v2, "action_gps_in_using_kill_clicked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v2, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->-wrap1(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const-string/jumbo v2, "action_gps_in_using_deny_gps_request"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v2, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->-wrap0(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v2, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->-wrap1(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method
