.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;ZZLandroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 4114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4117
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$afterKeyguardGone:Z

    if-eqz v2, :cond_2

    .line 4121
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$intent:Landroid/content/Intent;

    .line 4122
    const/high16 v3, 0x14000000

    .line 4121
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4123
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 4124
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$intent:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 4123
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4125
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 4126
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$keyguardShowing:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;->val$afterKeyguardGone:Z

    if-eqz v3, :cond_3

    .line 4125
    :cond_1
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 4115
    :goto_2
    return-void

    .line 4118
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4127
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 4126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
