.class Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;
.super Ljava/lang/Object;
.source "DynamicNotification.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

.field final synthetic val$actionMap:Ljava/util/HashMap;

.field final synthetic val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Ljava/util/HashMap;Lcom/meizu/flyme/activeview/views/ActiveView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .param p3, "val$activeView"    # Lcom/meizu/flyme/activeview/views/ActiveView;

    .prologue
    .line 529
    .local p2, "val$actionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->this$1:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->val$actionMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string/jumbo v2, "DynamicNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onclick id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->val$actionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->val$actionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;->val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/views/ActiveView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 543
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1}, Landroid/view/ViewGroup;->performClick()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 546
    :catch_1
    move-exception v0

    .line 547
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
