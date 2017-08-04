.class public final Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;
.super Ljava/lang/Object;
.source "NotificationReplyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$1;,
        Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mNotificationReplys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplyingInfo:Landroid/os/Bundle;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->updateSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$1;-><init>(Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;)V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 49
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;-><init>(Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private getClassNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-class v1, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "className":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 185
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    const-class v1, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0
.end method

.method private getNotificationReply(Ljava/lang/String;)Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    const-class v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;

    iget-object v1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 153
    :cond_0
    const-class v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;

    iget-object v1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onSpecificNotificationReplySettingChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "notificationReplyEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v4, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 135
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v4, -0x2

    invoke-static {v2, p1, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 136
    .local v3, "specificNotificationReplyEnabled":Z
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v3, :cond_1

    .line 138
    :try_start_0
    invoke-direct {p0, p2}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getNotificationReply(Ljava/lang/String;)Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;

    move-result-object v1

    .line 139
    .local v1, "notificationReply":Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;
    iget-object v4, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v4, "NotificationReplyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create notificationReply: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "notificationReply":Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;
    :goto_1
    return-void

    .line 135
    .end local v3    # "specificNotificationReplyEnabled":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "specificNotificationReplyEnabled":Z
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "NotificationReplyManager"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v4, "NotificationReplyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroy notificationReply: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    const-string/jumbo v2, "mz_notification_reply_assistant_switch"

    const/4 v3, -0x2

    .line 124
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 126
    .local v0, "notificationReplyEnabled":Z
    :goto_0
    const-string/jumbo v1, "mz_notification_reply_assistant_switch"

    .line 127
    const-class v2, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyCommon;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-direct {p0, v1, v2, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->onSpecificNotificationReplySettingChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    const-string/jumbo v1, "mz_notification_reply_assistant_switch"

    .line 129
    const-class v2, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-direct {p0, v1, v2, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->onSpecificNotificationReplySettingChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    return-void

    .line 124
    .end local v0    # "notificationReplyEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "notificationReplyEnabled":Z
    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public getData(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getClassNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;

    invoke-interface {v2}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v2, "NotificationReplyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v0
.end method

.method public isNotificationReplyEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotificatoinOnReplying(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "replying":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getClassNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;

    iget-object v3, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mReplyingInfo:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;->isNotificationReplying(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v1

    .line 118
    .end local v1    # "replying":Z
    :cond_0
    const-string/jumbo v2, "NotificationReplyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotificationReplying("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1
.end method

.method public setNotificationReplyingInfo(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mReplyingInfo:Landroid/os/Bundle;

    .line 107
    return-void
.end method

.method public supportReply(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getClassNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->mNotificationReplys:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;

    invoke-interface {v2, p1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;->supportReply(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 87
    .end local v1    # "result":Z
    :cond_0
    const-string/jumbo v2, "NotificationReplyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportReply("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v1
.end method
