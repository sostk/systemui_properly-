.class Lcom/android/systemui/statusbar/BaseStatusBar$3;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$3;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$3;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v1, 0x0

    .line 441
    :goto_0
    if-eqz p1, :cond_1

    .line 442
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 443
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 447
    :cond_1
    return-object v1
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 418
    .local v4, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$3;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 420
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Couldn\'t determine notification for click."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void

    .line 423
    :cond_0
    const/4 v2, -0x1

    .line 425
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x102036f

    if-ne v5, v6, :cond_1

    .line 426
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 425
    if-eqz v5, :cond_1

    move-object v0, v4

    .line 427
    check-cast v0, Landroid/view/ViewGroup;

    .line 428
    .local v0, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 431
    .end local v0    # "actionGroup":Landroid/view/ViewGroup;
    :cond_1
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Clicked on button "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 455
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 458
    const/high16 v3, 0x10000000

    .line 459
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v2, p3

    .line 456
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    const/4 v1, 0x1

    return v1

    .line 462
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 463
    .local v7, "e":Ljava/lang/Exception;
    return v8

    .line 460
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 461
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    return v8
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/high16 v5, 0x200000

    .line 360
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification click handler invoked for intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$3;->logActionClick(Landroid/view/View;)V

    .line 369
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v9

    .line 373
    .local v9, "isActivity":Z
    if-eqz v9, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 376
    .local v2, "keyguardShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 375
    invoke-static {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 377
    .local v3, "afterKeyguardGone":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$3;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v10, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 401
    const/4 v0, 0x1

    return v0

    .line 404
    .end local v2    # "keyguardShowing":Z
    .end local v3    # "afterKeyguardGone":Z
    :cond_1
    if-eqz p3, :cond_2

    .line 405
    iget-object v0, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0, v5}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 408
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, v8, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0, v5}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 410
    invoke-super {p0, p1, p2, v8}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 370
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isActivity":Z
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
