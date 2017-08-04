.class Lcom/android/systemui/statusbar/KeyguardIndicationController$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 244
    :cond_0
    return-void
.end method
