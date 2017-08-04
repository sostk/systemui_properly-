.class Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;
.super Ljava/lang/Object;
.source "ShareScreenshotReceiver.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;

.field final synthetic val$chooserIntent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$chooserIntent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;->this$1:Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;->val$chooserIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ShareScreenshotReceiver$1$1;->val$chooserIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
