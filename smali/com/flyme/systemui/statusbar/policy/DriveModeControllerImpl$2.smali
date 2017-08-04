.class Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;
.super Ljava/lang/Object;
.source "DriveModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->setDriveModeEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;->val$enabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "meizu.intent.action.DRIVE_MODE_START"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)V

    .line 52
    return-void

    .line 54
    :cond_0
    const-string/jumbo v1, "meizu.intent.action.DRIVE_MODE_STOP"

    goto :goto_0
.end method
