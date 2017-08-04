.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->onFinishInflate()V
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
    .line 362
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 377
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get14(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 371
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)V

    .line 363
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)V

    goto :goto_0
.end method
