.class public Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;
.super Ljava/lang/Object;
.source "RedEnvelopeAssistantQQ.java"

# interfaces
.implements Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mKeyword:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->updateSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;

    .line 26
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;-><init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContentObserver:Landroid/database/ContentObserver;

    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->registerObserver()V

    .line 37
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->updateSettings()V

    .line 34
    return-void
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "luckymoney_qq_keyword"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "luckymoney_qq_keyword"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mKeyword:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mKeyword:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "[QQ\u7ea2\u5305]"

    iput-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mKeyword:Ljava/lang/String;

    .line 63
    :cond_0
    const-string/jumbo v1, "RedEnvelopeAssistantQQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update settings:  mKeyword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->unregisterObserver()V

    .line 41
    return-void
.end method

.method public isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 47
    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    .local v0, "isQQSbn":Z
    const/4 v1, 0x0

    .line 50
    .local v1, "redEnvelope":Z
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 52
    .end local v1    # "redEnvelope":Z
    :goto_0
    const-string/jumbo v3, "RedEnvelopeAssistantQQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notification "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, "red-envelope"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " notification."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return v1

    .line 51
    .restart local v1    # "redEnvelope":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    .end local v1    # "redEnvelope":Z
    :cond_2
    const-string/jumbo v2, "normal"

    goto :goto_1
.end method
