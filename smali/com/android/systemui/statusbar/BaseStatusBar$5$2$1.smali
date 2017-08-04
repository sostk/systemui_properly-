.class Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

.field final synthetic val$dynamicNotificationModel:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$5$2;Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$5$2;
    .param p2, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "val$dynamicNotificationModel"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .param p4, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$dynamicNotificationModel:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v1, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$dynamicNotificationModel:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->addModel(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$5$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2$1;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 560
    return-void
.end method
