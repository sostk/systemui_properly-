.class Lcom/android/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->-wrap2(Lcom/android/keyguard/KeyguardHostView;)V

    .line 332
    return-void
.end method
