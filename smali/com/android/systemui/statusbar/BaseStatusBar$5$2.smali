.class Lcom/android/systemui/statusbar/BaseStatusBar$5$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$5;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$5;
    .param p2, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 543
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v9}, Lcom/flyme/systemui/statusbar/DynamicNotification;->getAndRemoveAnimString(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "animString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 545
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/DynamicNotification;->buildAnimModel(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    move-result-object v3

    .line 546
    .local v3, "dynamicNotificationModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    if-eqz v3, :cond_1

    .line 547
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    if-nez v9, :cond_0

    .line 548
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v10, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    invoke-direct {v10}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    .line 550
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10, v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->addModel(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)V

    .line 580
    .end local v3    # "dynamicNotificationModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    if-eqz v9, :cond_2

    .line 581
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    invoke-virtual {v9}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->removeIfNeed()V

    .line 582
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    invoke-virtual {v9}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 583
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v12, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    .line 588
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 589
    .local v6, "n":Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    if-nez v9, :cond_6

    .line 590
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v4

    .line 592
    :goto_0
    if-nez v4, :cond_3

    .line 593
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v9, v10}, Lcom/android/systemui/SystemUIMobEventUtils;->collectAddNotifications(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 598
    :cond_3
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupChild()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 599
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v9

    .line 598
    if-eqz v9, :cond_8

    .line 600
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 601
    const-string/jumbo v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ignoring group child due to existing summary: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_4
    if-eqz v4, :cond_7

    .line 606
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 610
    :goto_1
    return-void

    .line 554
    .end local v6    # "n":Landroid/app/Notification;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v9}, Lcom/flyme/systemui/statusbar/DynamicNotification;->getAndRemoveActiveBundle(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v0

    .line 555
    .local v0, "activeBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 556
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/DynamicNotification;->buildActiveModel(Landroid/os/Bundle;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    move-result-object v3

    .line 557
    .restart local v3    # "dynamicNotificationModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    if-eqz v3, :cond_1

    .line 558
    new-instance v7, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    new-instance v9, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v9, p0, v10, v3, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$5$2;Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 568
    new-instance v10, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$2;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v10, p0, v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$5$2;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 558
    invoke-direct {v7, v9, v10}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 575
    .local v7, "trigger":Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v7}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V

    .line 576
    return-void

    .line 589
    .end local v0    # "activeBundle":Landroid/os/Bundle;
    .end local v3    # "dynamicNotificationModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .end local v7    # "trigger":Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;
    .restart local v6    # "n":Landroid/app/Notification;
    :cond_6
    const/4 v4, 0x1

    .local v4, "isUpdate":Z
    goto/16 :goto_0

    .line 608
    .end local v4    # "isUpdate":Z
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 613
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 614
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v9

    .line 613
    if-eqz v9, :cond_9

    .line 615
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v9

    invoke-interface {v9}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->quickClickRedEnvelopeNotificationMode()Z

    move-result v9

    .line 613
    if-eqz v9, :cond_9

    .line 616
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "hint_unlock"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 617
    .local v8, "unlock":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v2, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 618
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    const-string/jumbo v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unlock  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " contentIntent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    .line 620
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 621
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    .line 620
    invoke-virtual {v9, v2, v10, v11, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v5

    .line 622
    .local v5, "listener":Landroid/view/View$OnClickListener;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->disableAnimationScale()V

    .line 623
    invoke-interface {v5, v12}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 624
    const-string/jumbo v9, "StatusBar"

    const-string/jumbo v10, "perform automatically click for red-envelope assistant notification"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 630
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "listener":Landroid/view/View$OnClickListener;
    .end local v8    # "unlock":Z
    :cond_9
    if-eqz v4, :cond_b

    .line 631
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 637
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    if-nez v9, :cond_a

    .line 638
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v11, v11, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/BaseStatusBar;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v10, v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->newComponent(Landroid/content/Context;Lcom/flyme/systemui/statusbar/policy/GameModeController;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    .line 640
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 541
    return-void

    .line 633
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2
.end method
