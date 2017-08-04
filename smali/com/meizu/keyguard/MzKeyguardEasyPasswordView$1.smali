.class Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;
.super Ljava/lang/Object;
.source "MzKeyguardEasyPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->resetPasswordText(Z)V

    .line 116
    return-void
.end method
