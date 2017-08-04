.class Lcom/meizu/keyguard/MzKeyguardPasswordView$2;
.super Ljava/lang/Object;
.source "MzKeyguardPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardPasswordView;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 438
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 435
    :cond_0
    return-void
.end method
