.class Lcom/android/keyguard/KeyguardHostView$4;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
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
    .line 817
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$4;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$4;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->-wrap1(Lcom/android/keyguard/KeyguardHostView;)V

    .line 819
    return-void
.end method
