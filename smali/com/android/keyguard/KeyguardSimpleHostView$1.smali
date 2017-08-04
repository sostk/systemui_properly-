.class Lcom/android/keyguard/KeyguardSimpleHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimpleHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimpleHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimpleHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimpleHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimpleHostView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimpleHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 69
    return-void
.end method
