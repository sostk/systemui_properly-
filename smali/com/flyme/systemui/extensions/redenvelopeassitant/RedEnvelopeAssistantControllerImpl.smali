.class public final Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;
.super Ljava/lang/Object;
.source "RedEnvelopeAssistantControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;
    }
.end annotation


# instance fields
.field private mAutoClickNotificationAfterUnlock:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mRedEnvelopeAssistants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->updateSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;-><init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 48
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

    .line 51
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->registerObserver()V

    .line 52
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->updateSettings()V

    .line 47
    return-void
.end method

.method private getAssitant(Ljava/lang/String;)Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    const-class v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;

    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 166
    :cond_0
    const-class v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;

    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSourceAppFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 133
    const-string/jumbo v0, "RedEnvelopeAssistantControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source app = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 174
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mz_red_envelope_assistant_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    const-string/jumbo v1, "mz_red_envelope_open_when_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 179
    return-void
.end method

.method private updateAssistant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 148
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v3, p1, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 149
    .local v1, "assistantEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 151
    :try_start_0
    invoke-direct {p0, p2}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->getAssitant(Ljava/lang/String;)Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;

    move-result-object v0

    .line 152
    .local v0, "assistant":Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;
    iget-object v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v4, "RedEnvelopeAssistantControllerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create red-envelope assistant: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "assistant":Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;
    :goto_1
    return-void

    .line 148
    .end local v1    # "assistantEnabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "assistantEnabled":Z
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "RedEnvelopeAssistantControllerImpl"

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v4, "RedEnvelopeAssistantControllerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroy red-envelope assistant: "

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
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 139
    const-string/jumbo v3, "mz_red_envelope_open_when_unlock"

    .line 138
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mAutoClickNotificationAfterUnlock:Z

    .line 141
    const-string/jumbo v0, "mz_red_envelope_assistant_switch"

    const-class v1, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->updateAssistant(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "mz_red_envelope_assistant_switch"

    const-class v1, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->updateAssistant(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public customizeHeadsUpStyle(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V
    .locals 6
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    const-string/jumbo v2, "RedEnvelopeAssistantControllerImpl"

    const-string/jumbo v3, "customize heads up notification for red-envelope assitant."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBackgroundColor(I)V

    .line 91
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "contentHolder":Landroid/view/View;
    const-string/jumbo v2, "HeadsUpContentHolder"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0, v4}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 98
    :goto_0
    const v2, 0x7f0f00ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "line":Landroid/view/View;
    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_0
    return-void

    .line 96
    .end local v1    # "line":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->unregisterObserver()V

    .line 56
    return-void
.end method

.method public isRedEnvelopeAssistantEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

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

.method public isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "com.flyme.systemuitools"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "result":Z
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mRedEnvelopeAssistants:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "assistant$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;

    .line 76
    .local v0, "assistant":Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;
    invoke-interface {v0, p1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;->isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 81
    .end local v0    # "assistant":Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistant;
    :cond_1
    const-string/jumbo v3, "RedEnvelopeAssistantControllerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRedEnvelopeNotification("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "assistant$iterator":Ljava/util/Iterator;
    :cond_2
    return v2
.end method

.method public onHeadsUpNotificationShown(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->getSourceAppFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "sourceApp":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectRedPacketsDropzone(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onNotificationClicked(Landroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "isHeadsUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.flyme.systemuitools.NOTIFICATION_CLICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "secondaryIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.flyme.systemuitools"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v3, "com.flyme.systemuitools"

    const-string/jumbo v4, "com.flyme.systemuitools.LuckyMoneyService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v3, "headsup"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 109
    .local v0, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 112
    invoke-direct {p0, p1}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->getSourceAppFromPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "sourceApp":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClickRedPacketsDropzone(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClickRedPacketsNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public quickClickRedEnvelopeNotificationMode()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->mAutoClickNotificationAfterUnlock:Z

    return v0
.end method
