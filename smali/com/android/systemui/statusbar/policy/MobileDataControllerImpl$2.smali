.class Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSubReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 470
    if-eqz v1, :cond_1

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 467
    :cond_1
    return-void
.end method
