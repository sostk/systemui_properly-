.class Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;
.super Ljava/lang/Object;
.source "BatteryTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:I

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->incr:I

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget v0, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->level:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->saveLevel:I

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget v0, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->plugType:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->savePlugged:I

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    if-gez v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iput-boolean v0, v1, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->testmode:Z

    .line 77
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "level"

    iget v3, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->saveLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "plugged"

    iget v3, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->savePlugged:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->-get0(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    iget-boolean v0, v0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->testmode:Z

    if-nez v0, :cond_2

    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "level"

    iget v4, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v3, "plugged"

    iget v4, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->incr:I

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string/jumbo v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 89
    :cond_2
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    .line 90
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 91
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->incr:I

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/BatteryTracker$1;->this$0:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/BatteryTracker;->-get1(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method
