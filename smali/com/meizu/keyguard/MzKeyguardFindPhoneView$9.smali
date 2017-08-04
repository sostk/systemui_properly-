.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 381
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 388
    if-nez p2, :cond_1

    .line 389
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 391
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V

    .line 393
    :cond_0
    return v3

    .line 395
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    return v2
.end method
