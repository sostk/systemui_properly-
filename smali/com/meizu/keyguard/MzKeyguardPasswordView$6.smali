.class Lcom/meizu/keyguard/MzKeyguardPasswordView$6;
.super Ljava/lang/Object;
.source "MzKeyguardPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 182
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardPasswordView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 189
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 183
    return-void
.end method
