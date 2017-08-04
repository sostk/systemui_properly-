.class final Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;
.super Landroid/os/Handler;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;-><init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    const/high16 v5, -0x10000

    and-int v1, v2, v5

    .line 88
    .local v1, "what":I
    sparse-switch v1, :sswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 90
    :sswitch_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_1

    :goto_2
    invoke-interface {v5, v2, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->setStatusBarDarkTheme(ZZ)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 93
    :sswitch_1
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_2

    :goto_3
    invoke-interface {v2, v5, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->setStatusBarColorTheme(IZ)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_3

    .line 96
    :sswitch_2
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->releaseAndCloseHeadsUp()V

    goto :goto_0

    .line 99
    :sswitch_3
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v3, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->setNotificationReplyingInfo(Landroid/os/Bundle;)V

    goto :goto_0

    .line 102
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 103
    .local v0, "visible":Z
    :goto_4
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->setNavButtonVisible(Z)V

    goto :goto_0

    .line 102
    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_4

    .line 106
    .end local v0    # "visible":Z
    :sswitch_5
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v3, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    :sswitch_6
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->-get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;->hideAlwaysTextAndIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
        0x70000 -> :sswitch_6
    .end sparse-switch
.end method
