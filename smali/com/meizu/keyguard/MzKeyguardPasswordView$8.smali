.class Lcom/meizu/keyguard/MzKeyguardPasswordView$8;
.super Ljava/lang/Object;
.source "MzKeyguardPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardPasswordView;->onFinishInflate()V
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
    .line 225
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 228
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 226
    return-void
.end method
