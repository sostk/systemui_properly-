.class final Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataSaveControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSaveStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;-><init>(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    const-string/jumbo v1, "vpnOpenStatus"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;Z)Z

    .line 88
    const-string/jumbo v0, "DataSaveController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mUserInitiated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-get2(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)V

    .line 86
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.meizu.networkmanager.datasaving.vpnstatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl$DataSaveStatusReceiver;->this$0:Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/DataSaveControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method
