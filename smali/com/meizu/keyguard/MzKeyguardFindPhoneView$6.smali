.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 883
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 886
    const-string/jumbo v1, "FindPhone"

    const-string/jumbo v2, "mSingleTap run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->requestFocus()Z

    .line 888
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 890
    const-string/jumbo v2, "input_method"

    .line 888
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 891
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 892
    const/4 v2, 0x2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 885
    return-void
.end method
