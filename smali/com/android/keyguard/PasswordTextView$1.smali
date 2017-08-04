.class Lcom/android/keyguard/PasswordTextView$1;
.super Landroid/os/Handler;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/PasswordTextView;->-wrap0(Lcom/android/keyguard/PasswordTextView;C)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/PasswordTextView;->-wrap1(Lcom/android/keyguard/PasswordTextView;Z)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
