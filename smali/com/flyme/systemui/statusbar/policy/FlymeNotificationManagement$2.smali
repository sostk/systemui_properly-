.class final Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;
.super Ljava/lang/Object;
.source "FlymeNotificationManagement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$replyIntent:Landroid/app/PendingIntent;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "val$replyIntent"    # Landroid/app/PendingIntent;
    .param p2, "val$state"    # I
    .param p3, "val$id"    # I
    .param p4, "val$pkg"    # Ljava/lang/String;
    .param p5, "val$context"    # Landroid/content/Context;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$state:I

    iput p3, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$id:I

    iput-object p4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 187
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 188
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v0, "flyme:notification_state"

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$state:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string/jumbo v0, "flyme:notification_id"

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$id:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string/jumbo v0, "flyme:notification_pkg"

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$context:Landroid/content/Context;

    .line 192
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;->val$replyIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 193
    const/high16 v3, 0x10000000

    .line 194
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
