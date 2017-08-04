.class Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    const-string/jumbo v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-set2(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;I)I

    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    .line 51
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
