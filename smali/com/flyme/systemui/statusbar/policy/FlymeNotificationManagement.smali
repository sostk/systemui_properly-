.class public Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
.super Ljava/lang/Object;
.source "FlymeNotificationManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;
    }
.end annotation


# static fields
.field private static CLOUD_PACKAGE_NAME:Ljava/lang/String;

.field private static CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;

.field private static WHITE_LIST_URL_NAME:Ljava/lang/String;

.field private static final isUpload:Z

.field private static mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

.field private static final mNotificationKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNotificationReceiveFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUploadWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->loadWhiteList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    .line 30
    invoke-static {}, Landroid/os/BuildExt;->isWeeklyFirmware()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->isDailyFirmware()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->isUpload:Z

    .line 58
    const-string/jumbo v0, "FlymeNotificationManagement"

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v0, "com.meizu.cloud"

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "flyme.Notification.CONTENT_UPLOAD_WHITE_LIST"

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

    .line 108
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    .line 69
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CONTENT_UPLOAD_WHITE_LIST_URL:Landroid/net/Uri;

    new-instance v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->loadWhiteList()V

    .line 67
    return-void
.end method

.method public static callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "state"    # I

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 177
    .local v6, "notification":Landroid/app/Notification;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 178
    iget-object v0, v6, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, v6, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    .line 180
    .local v1, "replyIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 182
    .local v3, "id":I
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;

    move v2, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$2;-><init>(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .end local v1    # "replyIntent":Landroid/app/PendingIntent;
    .end local v3    # "id":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method public static checkNotificationReceiveFilterPkg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->sNotificationReceiveFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkSystemPush(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    .line 116
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 119
    const-string/jumbo v2, "android.originalPackageName"

    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getManagement(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-class v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    .line 103
    :cond_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mManagement:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNotificationText(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v7, 0x0

    .line 141
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;

    invoke-direct {v2}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;-><init>()V

    .line 143
    .local v2, "notificationText":Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 144
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getManagement(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    move-result-object v8

    invoke-direct {v8, v3}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->isUploadWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 146
    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 147
    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 148
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.text"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 149
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v6, :cond_0

    if-eqz v4, :cond_3

    .line 150
    :cond_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->title:Ljava/lang/String;

    .line 151
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    iput-object v7, v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->context:Ljava/lang/String;

    .line 152
    return-object v2

    :cond_2
    move-object v8, v7

    .line 150
    goto :goto_0

    .line 155
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget-object v7, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_4

    .line 156
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getViewsText()Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 158
    const-string/jumbo v7, "|"

    invoke-static {v0, v7}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->title:Ljava/lang/String;

    .line 161
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v7, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_5

    .line 162
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getViewsText()Ljava/util/List;

    move-result-object v0

    .line 163
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 164
    const-string/jumbo v7, "|"

    invoke-static {v0, v7}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->context:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v2

    .line 168
    :catch_0
    move-exception v5

    .line 169
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getNotificationUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.originalPackageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "originalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    return-object v0

    .line 133
    .end local v0    # "originalName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private isUploadWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->isUpload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWhiteList()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 82
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->WHITE_LIST_URL_NAME:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "apps_list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 84
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 86
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 87
    .local v2, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "list":[Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1    # "list":[Ljava/lang/String;
    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 93
    .restart local v2    # "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mUploadWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static putNotification(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeNotification(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->mNotificationKeys:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
