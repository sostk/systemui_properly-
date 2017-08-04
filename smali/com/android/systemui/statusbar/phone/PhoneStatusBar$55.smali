.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZZLandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$dismissShade"    # Z
    .param p3, "val$keyguardShowing"    # Z
    .param p4, "val$afterKeyguardGone"    # Z
    .param p5, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 4111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$dismissShade:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$keyguardShowing:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$afterKeyguardGone:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4114
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$keyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$afterKeyguardGone:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$intent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;ZZLandroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$dismissShade:Z

    if-eqz v0, :cond_0

    .line 4133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4141
    :cond_0
    :goto_0
    return v4

    .line 4136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 4137
    const/4 v1, 0x2

    .line 4136
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_0
.end method
