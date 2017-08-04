.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string/jumbo v1, "vpn_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "state":I
    const-string/jumbo v1, "VpnControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MZ_ACTION_VPN_STATE_CHANGED received! -- vpnState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->-wrap1(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;I)V

    .line 54
    return-void
.end method
