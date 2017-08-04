.class Lcom/android/systemui/statusbar/BaseStatusBar$10$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$10;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$10;ZLandroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$10;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1041
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    .line 1042
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    return-void

    .line 1053
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
