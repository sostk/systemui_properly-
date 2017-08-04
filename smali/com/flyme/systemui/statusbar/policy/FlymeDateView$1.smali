.class Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeDateView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeDateView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/FlymeDateView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeDateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 38
    :cond_0
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeDateView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->-set0(Lcom/flyme/systemui/statusbar/policy/FlymeDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeDateView;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->updateClock()V

    .line 32
    :cond_3
    return-void
.end method
