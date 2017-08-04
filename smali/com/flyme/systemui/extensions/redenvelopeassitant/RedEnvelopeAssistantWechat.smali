.class public final Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;
.super Ljava/lang/Object;
.source "RedEnvelopeAssistantWechat.java"

# interfaces
.implements Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;
    }
.end annotation


# instance fields
.field private mCheckFlag:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mKeyword:Ljava/lang/String;

.field private mKeywordPattern:Ljava/util/regex/Pattern;

.field private mMsgTypeName:Ljava/lang/String;

.field private mMsgTypeValue:I


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->updateSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;-><init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->registerObserver()V

    .line 56
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->updateSettings()V

    .line 53
    return-void
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 102
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "luckymoney_wechat_flag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    const-string/jumbo v1, "luckymoney_wechat_keyword"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    const-string/jumbo v1, "luckymoney_wechat_msgtype_name"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    const-string/jumbo v1, "luckymoney_wechat_msgtype_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 109
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "luckymoney_wechat_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mCheckFlag:I

    .line 89
    const-string/jumbo v1, "luckymoney_wechat_keyword"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeyword:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeyword:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "[\u5fae\u4fe1\u7ea2\u5305]"

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeyword:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeywordPattern:Ljava/util/regex/Pattern;

    .line 92
    const-string/jumbo v1, "luckymoney_wechat_msgtype_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "MainUI_User_Last_Msg_Type"

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    .line 94
    :cond_1
    const-string/jumbo v1, "luckymoney_wechat_msgtype_value"

    const v2, 0x1a000031

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeValue:I

    .line 95
    const-string/jumbo v1, "RedEnvelopeAssistantWechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update settings: mCheckFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mCheckFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    const-string/jumbo v3, " mKeyword = "

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeyword:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    const-string/jumbo v3, " mMsgTypeName = "

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    const-string/jumbo v3, " mMsgTypeValue = "

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    iget v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeValue:I

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->unregisterObserver()V

    .line 60
    return-void
.end method

.method public isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v7, -0x1

    .line 66
    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 68
    .local v2, "isWeChatSbn":Z
    const/4 v3, 0x0

    .line 69
    .local v3, "redEnvelope":Z
    if-eqz v2, :cond_1

    .line 70
    iget v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mCheckFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 71
    .local v0, "flagKeyWord":Z
    :goto_0
    iget v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mCheckFlag:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 72
    .local v1, "flagMsgType":Z
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 73
    iget-object v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeywordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeValue:I

    if-ne v4, v5, :cond_4

    const/4 v3, 0x1

    .line 80
    .end local v3    # "redEnvelope":Z
    :cond_0
    :goto_2
    const-string/jumbo v5, "RedEnvelopeAssistantWechat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_9

    const-string/jumbo v4, "red-envelope"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " notification."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "flagKeyWord":Z
    .end local v1    # "flagMsgType":Z
    :cond_1
    return v3

    .line 70
    .restart local v3    # "redEnvelope":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "flagKeyWord":Z
    goto :goto_0

    .line 71
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "flagMsgType":Z
    goto :goto_1

    .line 74
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 73
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 75
    :cond_6
    if-eqz v0, :cond_7

    .line 76
    iget-object v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mKeywordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .local v3, "redEnvelope":Z
    goto :goto_2

    .line 77
    .local v3, "redEnvelope":Z
    :cond_7
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->mMsgTypeValue:I

    if-ne v4, v5, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 80
    .end local v3    # "redEnvelope":Z
    :cond_9
    const-string/jumbo v4, "normal"

    goto :goto_3
.end method
