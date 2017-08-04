.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;
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
    .line 356
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z

    .line 359
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 357
    return-void
.end method
