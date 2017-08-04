.class Lcom/android/keyguard/KeyguardMessageArea$1;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x2ee

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->-wrap0(Lcom/android/keyguard/KeyguardMessageArea;IZ)V

    .line 88
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method
