.class Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareViewGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;->this$0:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;
    .param p2, "x1"    # Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;-><init>(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACTION_CHANGE_THEME"

    if-eq v1, v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;->this$0:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;

    invoke-virtual {v1}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "IS_FORCE_KEEP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "IS_NIGHT_MOD"

    .line 151
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    .local v0, "isNightMode":Z
    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;->this$0:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;

    invoke-static {v1, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->access$100(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;Z)V

    goto :goto_0
.end method
