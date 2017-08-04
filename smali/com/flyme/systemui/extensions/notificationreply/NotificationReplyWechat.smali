.class public final Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;
.super Ljava/lang/Object;
.source "NotificationReplyWechat.java"

# interfaces
.implements Lcom/flyme/systemui/extensions/notificationreply/NotificationReply;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private isMessageTypeSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 103
    if-eq p1, v0, :cond_0

    .line 104
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const/16 v1, 0x2f

    if-eq p1, v1, :cond_0

    .line 106
    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    .line 107
    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    .line 108
    const/16 v1, 0x31

    if-eq p1, v1, :cond_0

    .line 109
    const/16 v1, 0x30

    if-eq p1, v1, :cond_0

    .line 110
    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    .line 111
    const/16 v1, 0x2a

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidContent(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 87
    if-nez p1, :cond_0

    return v3

    .line 88
    :cond_0
    const-string/jumbo v2, "[0-9]+(\u4e2a\u8054\u7cfb\u4eba\u53d1\u6765|\u500b\u806f\u7d61\u4eba\u767c\u4f86|\\s{1}friend(s)?\\s{1}sent you\\s{1})[0-9]+(\u6761\u6d88\u606f|\u5247\u8a0a\u606f|\u689d\u8a0a\u606f|\\s{1}message(s)?)"

    .line 89
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 90
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 91
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isValidUserId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v3

    .line 96
    :cond_1
    const-string/jumbo v2, "[0-9]+@chatroom"

    .line 97
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 98
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 99
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isNotificationReplying(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "replyingInfo"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "replying":Z
    if-eqz p2, :cond_0

    .line 74
    const-string/jumbo v4, "flyme.package"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "flyme.userId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "Main_User"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "mainUserId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 79
    const/4 v2, 0x1

    .line 83
    .end local v0    # "mainUserId":Ljava/lang/String;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public supportReply(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->mData:Landroid/os/Bundle;

    .line 46
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->isValidContent(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "MainUI_User_Last_Msg_Type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->isMessageTypeSupported(I)Z

    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "Main_User"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->isValidUserId(Ljava/lang/String;)Z

    move-result v0

    .line 54
    :goto_0
    const-string/jumbo v2, "NotificationReplyWechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string/jumbo v1, " support reply"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyWechat;->mData:Landroid/os/Bundle;

    .line 61
    :cond_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, "support":Z
    goto :goto_0

    .line 54
    .end local v0    # "support":Z
    :cond_2
    const-string/jumbo v1, " doesn\'t support reply"

    goto :goto_1
.end method
