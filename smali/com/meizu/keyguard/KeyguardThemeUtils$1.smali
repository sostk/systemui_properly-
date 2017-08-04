.class Lcom/meizu/keyguard/KeyguardThemeUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    iget-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-static {v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->-get0(Lcom/meizu/keyguard/KeyguardThemeUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->unlock_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->-set0(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->-wrap1(Lcom/meizu/keyguard/KeyguardThemeUtils;)V

    .line 367
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setLocalValues()V

    .line 368
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$1;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->-get0(Lcom/meizu/keyguard/KeyguardThemeUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTheme()V

    goto :goto_0
.end method
