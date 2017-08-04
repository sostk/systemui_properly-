.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;
.super Ljava/lang/Object;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    .line 221
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 223
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 220
    return-void
.end method
