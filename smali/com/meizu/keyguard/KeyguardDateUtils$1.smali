.class Lcom/meizu/keyguard/KeyguardDateUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardDateUtils;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/KeyguardDateUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardDateUtils;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardDateUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardDateUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardDateUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardDateUtils;

    invoke-static {v0, v2}, Lcom/meizu/keyguard/KeyguardDateUtils;->-set1(Lcom/meizu/keyguard/KeyguardDateUtils;[Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardDateUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardDateUtils;

    invoke-static {v0, v2}, Lcom/meizu/keyguard/KeyguardDateUtils;->-set0(Lcom/meizu/keyguard/KeyguardDateUtils;[Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method
