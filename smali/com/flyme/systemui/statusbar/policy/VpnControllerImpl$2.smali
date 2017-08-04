.class Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
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
    .line 121
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnection(Z)V
    .locals 1
    .param p1, "connection"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)Z

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    .line 123
    :cond_0
    return-void
.end method
