.class public Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
.super Ljava/lang/Object;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicNotificationModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    }
.end annotation


# instance fields
.field private bigcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final createTime:J

.field private headsupcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createTime:J

    .line 410
    return-void
.end method


# virtual methods
.method public createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V
    .locals 4
    .param p1, "systemUiContext"    # Landroid/content/Context;
    .param p2, "trigger"    # Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    .prologue
    .line 451
    invoke-virtual {p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->increment()V

    .line 452
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getBigcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v0

    .line 453
    .local v0, "bigcontent":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v0, :cond_0

    .line 454
    const-string/jumbo v2, "DynamicNotification"

    const-string/jumbo v3, "BigContent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0, p1, v0, p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getHeadsupcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v1

    .line 459
    .local v1, "headsupcontent":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v1, :cond_1

    .line 460
    const-string/jumbo v2, "DynamicNotification"

    const-string/jumbo v3, "HeadsupContent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, p1, v1, p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V

    .line 463
    :cond_1
    invoke-virtual {p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->decrement()V

    .line 450
    return-void
.end method

.method public createActiveView(Landroid/content/Context;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V
    .locals 14
    .param p1, "systemUiContext"    # Landroid/content/Context;
    .param p2, "content"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .param p3, "trigger"    # Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;

    .prologue
    .line 467
    invoke-virtual/range {p2 .. p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getActiveBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->-get0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "activePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    const-string/jumbo v0, "DynamicNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activePath = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v3, Lcom/meizu/flyme/activeview/views/ActiveView;

    invoke-direct {v3, p1}, Lcom/meizu/flyme/activeview/views/ActiveView;-><init>(Landroid/content/Context;)V

    .line 473
    .local v3, "activeView":Lcom/meizu/flyme/activeview/views/ActiveView;
    invoke-static/range {p2 .. p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->-get0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 474
    .local v2, "stringBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$1;-><init>(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Landroid/os/Bundle;Lcom/meizu/flyme/activeview/views/ActiveView;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;)V

    invoke-virtual {v3, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->setOnUpdateListener(Lcom/meizu/flyme/activeview/listener/OnUpdateListener;)V

    .line 513
    invoke-static/range {p2 .. p2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->-get0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 514
    .local v6, "actionBundle":Landroid/os/Bundle;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v7, "actionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    if-eqz v6, :cond_2

    .line 516
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 517
    .local v12, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 519
    .local v10, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 520
    .local v13, "value":Landroid/app/PendingIntent;
    if-eqz v13, :cond_1

    .line 521
    invoke-virtual {v7, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string/jumbo v0, "DynamicNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activeview setAction:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v13    # "value":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 525
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "key$iterator":Ljava/util/Iterator;
    .end local v12    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;

    invoke-direct {v0, p0, v7, v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$2;-><init>(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;Ljava/util/HashMap;Lcom/meizu/flyme/activeview/views/ActiveView;)V

    invoke-virtual {v3, v0}, Lcom/meizu/flyme/activeview/views/ActiveView;->setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->increment()V

    .line 554
    invoke-virtual {v3, v8}, Lcom/meizu/flyme/activeview/views/ActiveView;->loadData(Ljava/lang/String;)V

    .line 466
    .end local v2    # "stringBundle":Landroid/os/Bundle;
    .end local v3    # "activeView":Lcom/meizu/flyme/activeview/views/ActiveView;
    .end local v6    # "actionBundle":Landroid/os/Bundle;
    .end local v7    # "actionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    :cond_3
    return-void
.end method

.method public getBigcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->bigcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    return-object v0
.end method

.method public getContent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->createTime:J

    return-wide v0
.end method

.method public getHeadsupcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->headsupcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    return-object v0
.end method

.method public getType()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->type:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v0
.end method

.method public setBigcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V
    .locals 0
    .param p1, "bigcontent"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->bigcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .line 438
    return-void
.end method

.method public setContent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V
    .locals 0
    .param p1, "content"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->content:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .line 430
    return-void
.end method

.method public setHeadsupcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V
    .locals 0
    .param p1, "headsupcontent"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->headsupcontent:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    .line 446
    return-void
.end method

.method public setType(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;)V
    .locals 0
    .param p1, "type"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->type:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    .line 422
    return-void
.end method
