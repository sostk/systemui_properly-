.class Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CacheInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/utils/CacheInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserIdReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/utils/CacheInfoUtils;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/utils/CacheInfoUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/utils/CacheInfoUtils;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;->this$0:Lcom/meizu/keyguard/utils/CacheInfoUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/meizu/keyguard/utils/CacheInfoUtils$UserIdReceiver;->this$0:Lcom/meizu/keyguard/utils/CacheInfoUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/keyguard/utils/CacheInfoUtils;->-set0(Lcom/meizu/keyguard/utils/CacheInfoUtils;I)I

    .line 30
    :cond_0
    return-void
.end method
