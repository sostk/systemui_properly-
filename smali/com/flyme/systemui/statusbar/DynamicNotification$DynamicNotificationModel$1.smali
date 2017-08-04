.class Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;
.super Ljava/lang/Object;
.source "DynamicNotification.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field end:Z

.field final synthetic this$1:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

.field final synthetic val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

.field final synthetic val$content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

.field final synthetic val$stringBundle:Landroid/os/Bundle;

.field final synthetic val$trigger:Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Landroid/os/Bundle;Lcom/meizu/flyme/activeview/views/ActiveView;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V
    .locals 1
    .param p1, "this$1"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .param p2, "val$stringBundle"    # Landroid/os/Bundle;
    .param p3, "val$activeView"    # Lcom/meizu/flyme/activeview/views/ActiveView;
    .param p4, "val$content"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .param p5, "val$trigger"    # Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->this$1:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$stringBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    iput-object p4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    iput-object p5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$trigger:Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->end:Z

    .line 474
    return-void
.end method


# virtual methods
.method public onUpdateFinished(IILjava/lang/String;)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 479
    const-string/jumbo v5, "DynamicNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "activeview i1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | i2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | s:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-ne p2, v8, :cond_1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_1

    .line 481
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$stringBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 482
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$stringBundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 483
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$stringBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 487
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-virtual {v5, v1, v4}, Lcom/meizu/flyme/activeview/views/ActiveView;->setTextContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v5, "DynamicNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "activeview setText:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-boolean v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->end:Z

    if-eqz v5, :cond_2

    .line 498
    return-void

    .line 500
    :cond_2
    if-ne p2, v8, :cond_4

    const/16 v5, 0x8

    if-ne p1, v5, :cond_4

    .line 501
    iput-boolean v8, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->end:Z

    .line 502
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-static {v5, v6}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->-set0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/meizu/flyme/activeview/views/ActiveView;)Lcom/meizu/flyme/activeview/views/ActiveView;

    .line 503
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$trigger:Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    invoke-virtual {v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->decrement()V

    .line 478
    :cond_3
    :goto_1
    return-void

    .line 504
    :cond_4
    if-nez p2, :cond_3

    .line 505
    iput-boolean v8, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->end:Z

    .line 506
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$trigger:Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    iput-boolean v9, v5, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->isSuccess:Z

    .line 507
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;->val$trigger:Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    invoke-virtual {v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->decrement()V

    goto :goto_1
.end method
