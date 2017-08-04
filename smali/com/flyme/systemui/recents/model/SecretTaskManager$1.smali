.class Lcom/flyme/systemui/recents/model/SecretTaskManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SecretTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/model/SecretTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/model/SecretTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/model/SecretTaskManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$1;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager$1;->this$0:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-static {v0, p1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->-wrap0(Lcom/flyme/systemui/recents/model/SecretTaskManager;Landroid/content/Context;)V

    .line 184
    return-void
.end method
