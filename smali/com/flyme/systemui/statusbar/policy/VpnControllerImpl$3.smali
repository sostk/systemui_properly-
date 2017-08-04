.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setVpnEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 134
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "meizu.intent.action.VPN_STATE_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vpn_action"

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 136
    return-void
.end method
