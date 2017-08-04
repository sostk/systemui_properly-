.class Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    .line 88
    :cond_0
    return-void
.end method
