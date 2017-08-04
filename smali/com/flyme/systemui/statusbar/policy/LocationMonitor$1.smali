.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;
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
    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string/jumbo v0, "LocationMonitor"

    const-string/jumbo v1, "HIGH_POWER_REQUEST_CHANGE_ACTION changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->-wrap2(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    .line 62
    return-void
.end method
