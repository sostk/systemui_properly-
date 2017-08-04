.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 420
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method
