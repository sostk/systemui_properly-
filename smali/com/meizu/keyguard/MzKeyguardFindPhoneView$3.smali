.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


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
    .line 224
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get15(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->handleInputStateChange(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z

    .line 226
    return-void
.end method
