.class Lcom/android/systemui/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 833
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 834
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v4, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->-wrap5(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;ZZ)V

    .line 832
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 834
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 835
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 836
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->-wrap3(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V

    goto :goto_2

    .line 838
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->-wrap4(Lcom/android/systemui/qs/QSPanel;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method
