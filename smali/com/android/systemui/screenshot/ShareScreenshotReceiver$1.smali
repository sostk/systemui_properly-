.class Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;
.super Ljava/lang/Object;
.source "ShareScreenshotReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ShareScreenshotReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ShareScreenshotReceiver;

.field final synthetic val$chooserIntent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ShareScreenshotReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/ShareScreenshotReceiver;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$chooserIntent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->this$0:Lcom/android/systemui/screenshot/ShareScreenshotReceiver;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$chooserIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 42
    .local v0, "application":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 43
    .local v1, "bar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 44
    new-instance v2, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$chooserIntent:Landroid/content/Intent;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;-><init>(Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mzDismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 40
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->val$chooserIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
