.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;
.super Ljava/lang/Object;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->verifyPrivacyPasswordAndUnlock()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

.field final synthetic val$entry:Ljava/lang/String;

.field final synthetic val$matched:Z


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
    .param p2, "val$matched"    # Z
    .param p3, "val$entry"    # Ljava/lang/String;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iput-boolean p2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->val$matched:Z

    iput-object p3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 833
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v2, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchSystemMode(I)V

    .line 834
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-boolean v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->val$matched:Z

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$9;->val$entry:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    :goto_0
    invoke-static {v2, v3, v1, v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;ZIZ)V

    .line 832
    return-void

    :cond_0
    move v0, v1

    .line 834
    goto :goto_0
.end method
