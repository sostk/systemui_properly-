.class Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MeizuKeyguardThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "com.meizu.theme.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkThemeResourceExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string/jumbo v0, "THEME_CHANGE_INTENT prepare wrapper and view "

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-wrap0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-wrap0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;I)V

    goto :goto_0
.end method
