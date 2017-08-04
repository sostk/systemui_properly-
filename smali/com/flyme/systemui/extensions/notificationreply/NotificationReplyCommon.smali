.class public final Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;
.super Ljava/lang/Object;
.source "NotificationReplyCommon.java"

# interfaces
.implements Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNotificationReplying(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "replyingInfo"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public supportReply(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 28
    const-string/jumbo v1, "NotificationReplyCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sbn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 31
    .local v0, "support":Z
    :goto_0
    return v0

    .line 30
    .end local v0    # "support":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "support":Z
    goto :goto_0
.end method
