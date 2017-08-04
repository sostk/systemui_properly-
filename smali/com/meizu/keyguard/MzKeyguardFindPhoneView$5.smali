.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;
.super Landroid/os/Handler;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 736
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 735
    :goto_0
    return-void

    .line 738
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "****"

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    const-string/jumbo v1, "FindPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFlymeText.setText()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 748
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap10(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
