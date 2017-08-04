.class Lcom/meizu/keyguard/MzKeyguardPasswordView$3;
.super Ljava/lang/Object;
.source "MzKeyguardPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardPasswordView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardPasswordView;
    .param p2, "val$reason"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iput p2, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 124
    const-string/jumbo v0, "MzKeyguardPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->val$reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    const-string/jumbo v2, ", mShowImeAtScreenOn = "

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get1(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Z

    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->val$reason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get1(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string/jumbo v0, "MzKeyguardPasswordView"

    const-string/jumbo v1, "onResume() - call showSoftInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 121
    :cond_1
    return-void
.end method
