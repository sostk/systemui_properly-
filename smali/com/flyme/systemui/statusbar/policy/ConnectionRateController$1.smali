.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;
.super Landroid/os/Handler;
.source "ConnectionRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_CONNECTION_RATE_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-wrap1(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 124
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get3(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_CONNECTION_START_SAMPLING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get4(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-wrap1(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-set0(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get3(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_CONNECTION_STOP_SAMPLING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get4(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-wrap1(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V

    .line 139
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get3(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v0, v4}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-set0(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    goto/16 :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
