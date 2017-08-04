.class public Lcom/flyme/systemui/recents/FlymeRecents;
.super Ljava/lang/Object;
.source "FlymeRecents.java"

# interfaces
.implements Lcom/flyme/systemui/recents/model/IQuickChangeModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;,
        Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;,
        Lcom/flyme/systemui/recents/FlymeRecents$1;,
        Lcom/flyme/systemui/recents/FlymeRecents$2;,
        Lcom/flyme/systemui/recents/FlymeRecents$3;,
        Lcom/flyme/systemui/recents/FlymeRecents$4;,
        Lcom/flyme/systemui/recents/FlymeRecents$5;,
        Lcom/flyme/systemui/recents/FlymeRecents$6;
    }
.end annotation


# static fields
.field static sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;


# instance fields
.field isEnterAnimationIninted:Z

.field mBootCompleted:Z

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mDummyStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

.field mDuringEnterAnimaiton:Z

.field mHandler:Landroid/os/Handler;

.field mIgnoreUpdateRecentsEnter:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mLastScreenLand:I

.field mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

.field mMultiAppPkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mNextTask:Lcom/flyme/systemui/recents/model/Task;

.field mProxyBroadcastReceiver:Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;

.field private mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

.field mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

.field mQuickChangeView:Lcom/flyme/systemui/recents/views/QuickChangeView;

.field mRecentsTestModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

.field mRecentsTestPresenter:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

.field mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarHeight:I

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

.field private mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWindowRect:Landroid/graphics/Rect;

.field nowLanguage:Ljava/lang/String;

.field runnableForToggleRecents:Ljava/lang/Runnable;

.field testOb:Landroid/content/BroadcastReceiver;

.field toggleRecentsOb:Landroid/content/BroadcastReceiver;

.field wallpaperOb:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initMultiAppList()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mCanReuseTaskStackViews:Z

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    .line 219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemInsets:Landroid/graphics/Rect;

    .line 231
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$1;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsTestModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    .line 258
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$2;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->testOb:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMultiAppPkgName:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$3;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->wallpaperOb:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$4;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecentsOb:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$5;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$5;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->runnableForToggleRecents:Ljava/lang/Runnable;

    .line 608
    iput-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->nowLanguage:Ljava/lang/String;

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mLastScreenLand:I

    .line 806
    iput-boolean v12, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    .line 807
    iput-boolean v12, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    .line 808
    iput-boolean v12, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mIgnoreUpdateRecentsEnter:Z

    .line 1095
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$6;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$6;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 294
    invoke-static {p1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    .line 295
    .local v11, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getAndCreateManager(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/LockTaskManager;

    .line 296
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getAndCreateManager(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/SecretTaskManager;

    .line 297
    invoke-direct {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initMultiAppList()V

    .line 298
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$7;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$7;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    invoke-virtual {v11, p1, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 307
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mInflater:Landroid/view/LayoutInflater;

    .line 308
    new-instance v0, Lcom/flyme/systemui/recents/views/ContentView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/views/ContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    .line 309
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 314
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackListener:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    .line 315
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackListener:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 320
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mProxyBroadcastReceiver:Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;

    .line 322
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mProxyBroadcastReceiver:Lcom/flyme/systemui/recents/FlymeRecents$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 325
    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    .line 324
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-static {p1, v0}, Lcom/flyme/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 331
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    .line 332
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 333
    .local v8, "it":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->wallpaperOb:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 334
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    invoke-direct {v1, v12}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 336
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "it":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .restart local v8    # "it":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.systemui.recents.TOGGLE_RECENTS"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v0, "com.android.systemui.TOGGLE_RECENTS"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecentsOb:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    new-instance v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    .line 342
    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsTestModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;-><init>(Lcom/flyme/systemui/recents/model/IRecentsTestModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsTestPresenter:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    .line 343
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "it":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.systemui.recents.TEST.QUICKCHANGE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v8    # "it":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->testOb:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->resetAnimationScaleIfNeed(Landroid/content/Context;)V

    .line 348
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public static declared-synchronized consumeInstanceLoadPlan()Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 3

    .prologue
    const-class v1, Lcom/flyme/systemui/recents/FlymeRecents;

    monitor-enter v1

    .line 730
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    monitor-exit v1

    .line 732
    return-object v0

    .end local v0    # "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    return-object v0
.end method

.method private initMultiAppList()V
    .locals 8

    .prologue
    .line 760
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 761
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 762
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 766
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMultiAppPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 767
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 768
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 769
    .local v5, "temp":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/Utils;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 770
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMultiAppPkgName:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "temp":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 759
    :cond_1
    return-void
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/flyme/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    invoke-static {p2}, Lcom/flyme/systemui/recents/FlymeRecents;->visibilityChanged(Z)V

    .line 709
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string/jumbo v1, "action_notify_recents_visibility_change"

    .line 713
    invoke-static {p0, v1}, Lcom/flyme/systemui/recents/FlymeRecents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 715
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static onTrimMemory(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 736
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 737
    .local v0, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0, p0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 735
    :cond_0
    return-void
.end method

.method private startAlternateRecentsActivityNoAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 747
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    const-class v3, Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 748
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x10804000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 751
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 752
    .local v1, "opts":Landroid/app/ActivityOptions;
    sput-boolean v5, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sDuringStart:Z

    .line 753
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 755
    iput-boolean v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mCanReuseTaskStackViews:Z

    .line 745
    return-void
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 721
    sget-object v0, Lcom/flyme/systemui/recents/FlymeRecents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/flyme/systemui/recents/FlymeRecents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 720
    :cond_0
    return-void
.end method


# virtual methods
.method calcuMultiAppNum(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMultiAppPkgName:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "multi-app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method public changeActivity()V
    .locals 5

    .prologue
    .line 1201
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    if-nez v2, :cond_0

    .line 1202
    return-void

    .line 1204
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1205
    .local v1, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 1206
    const v3, 0x7f05007f

    .line 1207
    const v4, 0x7f050080

    .line 1205
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1208
    .local v0, "launchOpts":Landroid/app/ActivityOptions;
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    if-eqz v2, :cond_2

    .line 1210
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 1200
    :cond_1
    :goto_0
    return-void

    .line 1212
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    .line 1213
    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 1212
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;

    invoke-direct {v3}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;-><init>()V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkIfNeedInitAndContinue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1108
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->isRecentsShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    return v0

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1112
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public clearData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->onSpecialActivityQuit(Landroid/content/Context;)V

    .line 1179
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1180
    iput-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .line 1181
    iput-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1182
    iput-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    .line 1175
    return-void
.end method

.method public collcetMobEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetQuickchange(Landroid/content/Context;Ljava/lang/String;)V

    .line 1223
    return-void
.end method

.method configurationChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 612
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 613
    .local v2, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->nowLanguage:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 614
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->nowLanguage:Ljava/lang/String;

    .line 615
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 616
    .local v1, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->onLanguageChanged()V

    .line 627
    .end local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mCanReuseTaskStackViews:Z

    .line 629
    invoke-virtual {p0, v4}, Lcom/flyme/systemui/recents/FlymeRecents;->reloadHeaderBarLayout(Z)V

    .line 611
    return-void

    .line 618
    :cond_1
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->nowLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 620
    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->nowLanguage:Ljava/lang/String;

    .line 621
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 622
    .restart local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->onLanguageChanged()V

    goto :goto_0
.end method

.method public final dismissStage()V
    .locals 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->onSpecialActivityQuit(Landroid/content/Context;)V

    .line 1072
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/ContentView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1074
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    .line 1073
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1075
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/ContentView;->removeAllViews()V

    .line 1076
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public getData()Lcom/flyme/systemui/recents/bean/QuickChangeBean;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    return-object v0
.end method

.method hideRecents()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->isRecentsShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 428
    :cond_0
    return-void
.end method

.method declared-synchronized initTouchEnterIf()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 928
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->isRecentsShow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 929
    return v2

    .line 931
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 932
    .local v0, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 933
    return v2

    .line 936
    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->isAvoidRecent(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    .line 937
    return v2

    .line 940
    :cond_2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->realInit(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 941
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .end local v0    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1016
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1014
    :cond_0
    return-void
.end method

.method public isRecentsShow()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/ContentView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->isQuickChangeShow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadData()Lcom/flyme/systemui/recents/bean/QuickChangeBean;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1147
    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 1148
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1147
    :goto_0
    invoke-static {v5, v3}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->onSpecialActivityEnter(Landroid/content/Context;Ljava/lang/String;)V

    .line 1151
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1152
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1154
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iput-boolean v6, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->isQuickChange:Z

    .line 1157
    sget-object v3, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/flyme/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1158
    .local v2, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    const/4 v0, 0x0

    .line 1159
    .local v0, "bitmapNext":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v3}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->isAvoidRecent(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1163
    :cond_0
    iput-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    .line 1165
    .end local v0    # "bitmapNext":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v3, Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v5}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/flyme/systemui/recents/bean/QuickChangeBean;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    .line 1166
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeBean:Lcom/flyme/systemui/recents/bean/QuickChangeBean;

    return-object v3

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_1
    move-object v3, v4

    .line 1148
    goto :goto_0

    .line 1160
    .restart local v0    # "bitmapNext":Landroid/graphics/Bitmap;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/model/Task;

    iput-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    .line 1161
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNextTask:Lcom/flyme/systemui/recents/model/Task;

    iget-object v0, v3, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .local v0, "bitmapNext":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mBootCompleted:Z

    .line 390
    return-void
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 599
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->configurationChanged()V

    .line 598
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 603
    const-string/jumbo v2, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    .line 602
    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/FlymeRecents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;

    .prologue
    const/4 v2, 0x0

    .line 1081
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    .line 1082
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationEnd;->mEnter:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->startAlternateRecentsActivityNoAnimation()V

    .line 1084
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1080
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStop()V

    goto :goto_0
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 417
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->hideRecents()V

    .line 416
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 421
    const-string/jumbo v2, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    .line 420
    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/FlymeRecents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onKeyguardChange(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1230
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1231
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->unlockAllApp()Z

    .line 1232
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    filled-new-array {v2, v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killAllTasksAsync(Landroid/content/Context;[IZ)V

    .line 1229
    :cond_0
    return-void
.end method

.method public onPreloadRecents()V
    .locals 3
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 489
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->preloadRecents()V

    .line 488
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 493
    const-string/jumbo v2, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    .line 492
    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/FlymeRecents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onShowNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->showRelativeAffiliatedTask(Z)V

    .line 586
    return-void
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->showRelativeAffiliatedTask(Z)V

    .line 590
    return-void
.end method

.method public onShowRecents(Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->showRecents()V

    .line 398
    return-void
.end method

.method public onStart()V
    .locals 7
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 369
    invoke-static {}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 371
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/FlymeRecents;->reloadHeaderBarLayout(Z)V

    .line 375
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 376
    .local v1, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 378
    .local v2, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 379
    .local v4, "time":J
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadRawTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 381
    new-instance v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 382
    .local v0, "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1, v2, v6, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 383
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 384
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 385
    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 386
    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    .line 387
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 367
    return-void
.end method

.method public onToggleRecents()V
    .locals 3
    .annotation build Lcom/flyme/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->toggleRecents()V

    .line 438
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    .line 443
    const-string/jumbo v2, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    .line 442
    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/FlymeRecents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onUpdateRecentEnter(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 815
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 816
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 818
    .local v0, "action":I
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 819
    .local v2, "isLandscape":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 820
    .local v3, "positionX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 822
    .local v4, "positionY":F
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    if-eqz v7, :cond_4

    cmpl-float v7, v3, v8

    if-nez v7, :cond_4

    cmpl-float v7, v4, v8

    if-nez v7, :cond_4

    .line 824
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    if-eqz v7, :cond_1

    .line 825
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mIgnoreUpdateRecentsEnter:Z

    .line 826
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->isShow()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 827
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->startExitAnimation()V

    .line 831
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->recycleVelocityTracker()V

    .line 833
    :cond_1
    return-void

    .line 829
    :cond_2
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissStage()V

    goto :goto_0

    .line 920
    .end local v0    # "action":I
    .end local v2    # "isLandscape":Z
    .end local v3    # "positionX":F
    .end local v4    # "positionY":F
    :catch_0
    move-exception v1

    .line 809
    :cond_3
    :goto_1
    return-void

    .line 836
    .restart local v0    # "action":I
    .restart local v2    # "isLandscape":Z
    .restart local v3    # "positionX":F
    .restart local v4    # "positionY":F
    :cond_4
    if-nez v0, :cond_9

    .line 837
    invoke-static {}, Lcom/flyme/systemui/recents/Recents;->isRecentsShow()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 838
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mIgnoreUpdateRecentsEnter:Z

    .line 839
    return-void

    .line 841
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mIgnoreUpdateRecentsEnter:Z

    .line 843
    if-nez v2, :cond_8

    .line 844
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, -0x3c

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_7

    .line 845
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    sget-object v8, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    iput-object v8, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    .line 853
    :cond_6
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    goto :goto_1

    .line 846
    :cond_7
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit16 v7, v7, -0xc8

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    .line 847
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    sget-object v8, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    iput-object v8, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    goto :goto_2

    .line 850
    :cond_8
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    sget-object v8, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    iput-object v8, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    goto :goto_2

    .line 854
    :cond_9
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mIgnoreUpdateRecentsEnter:Z

    if-eqz v7, :cond_a

    .line 855
    return-void

    .line 858
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 884
    :pswitch_0
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    if-eqz v7, :cond_3

    .line 885
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->isShow()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 887
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 888
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_f

    .line 889
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    int-to-float v8, v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 890
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    sget-object v8, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    if-ne v7, v8, :cond_e

    .line 891
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 899
    .local v5, "speed":F
    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_11

    .line 900
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_10

    .line 901
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->startEnterAnimation()V

    .line 915
    .end local v5    # "speed":F
    .end local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :goto_4
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 860
    :pswitch_1
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initVelocityTrackerIfNotExists()V

    .line 861
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 863
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    if-nez v7, :cond_b

    .line 864
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initTouchEnterIf()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 866
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    .line 869
    :cond_b
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->isShow()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 870
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    sget-object v8, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    if-ne v7, v8, :cond_c

    .line 871
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7, v4}, Lcom/flyme/systemui/recents/RecentsWindow;->updateEnterStage(F)V

    goto/16 :goto_1

    .line 873
    :cond_c
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->updateEnterStage(F)V

    goto/16 :goto_1

    .line 875
    :cond_d
    iget-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    if-eqz v7, :cond_3

    .line 876
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->onCreate()V

    .line 877
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->onStart()V

    .line 878
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    goto/16 :goto_1

    .line 893
    .restart local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_e
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .restart local v5    # "speed":F
    goto :goto_3

    .line 896
    .end local v5    # "speed":F
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "speed":F
    goto :goto_3

    .line 903
    :cond_10
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->startExitAnimation()V

    goto :goto_4

    .line 906
    :cond_11
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    .line 907
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->startEnterAnimation()V

    goto :goto_4

    .line 909
    :cond_12
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->startExitAnimation()V

    goto :goto_4

    .line 913
    .end local v5    # "speed":F
    .end local v6    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_13
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissStage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdateRecentQuickchange(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 802
    return-void
.end method

.method public preInitData()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1118
    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    iput v4, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 1120
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1121
    .local v1, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v4, v5}, Lcom/flyme/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 1123
    sget-object v4, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    .line 1124
    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1127
    .local v2, "time":J
    sget-object v4, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v4, v6}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadRawTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 1128
    new-instance v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1129
    .local v0, "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    sget-object v4, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v4, v6, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1131
    sget-object v4, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/flyme/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1133
    iput-boolean v7, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1134
    iput-boolean v7, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->skipRunningThumbnail:Z

    .line 1135
    iput-boolean v7, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    .line 1136
    iput v8, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 1137
    iput v8, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 1138
    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v4, v5, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1117
    :cond_1
    return-void

    .line 1118
    .end local v0    # "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "time":J
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method preloadRecents()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method declared-synchronized realInit(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 12
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    .line 947
    :try_start_0
    const-string/jumbo v9, "recents_init_data"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->updatePayAppListIfneed(Landroid/content/Context;)V

    .line 951
    iget-object v10, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_3

    iget v9, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    iput v9, v10, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 953
    iget-object v9, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_0

    iget-object v10, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    iget-object v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :cond_0
    iput-object v8, v9, Lcom/flyme/systemui/recents/RecentsConfiguration;->runningPkgName:Ljava/lang/String;

    .line 955
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 956
    .local v1, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    iget-object v8, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v8, v9}, Lcom/flyme/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 958
    sget-object v8, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v8, :cond_1

    .line 959
    iget-object v8, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v8

    sput-object v8, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    .line 961
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 962
    .local v4, "time":J
    sget-object v8, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadRawTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 963
    iget-object v8, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    sget-object v9, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v9}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getRawTasks()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/flyme/systemui/recents/FlymeRecents;->calcuMultiAppNum(Ljava/util/List;)I

    move-result v9

    if-le v9, v6, :cond_4

    :goto_1
    iput-boolean v6, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->isExistMulti:Z

    .line 965
    new-instance v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 966
    .local v0, "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->prepareForEnter:Z

    .line 967
    sget-object v6, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 968
    sget-object v6, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/flyme/systemui/recents/model/TaskStack;

    move-result-object v2

    .line 971
    .local v2, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDummyStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/flyme/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/flyme/systemui/recents/model/TaskStack;ZZ)V

    .line 973
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDummyStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v3

    .line 974
    .local v3, "stackVr":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 976
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 977
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->skipRunningThumbnail:Z

    .line 978
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    .line 979
    iget v6, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 980
    iget v6, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 981
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v6, v7, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 982
    sget-object v6, Lcom/flyme/systemui/recents/FlymeRecents;->sInstanceLoadPlan:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v6}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTaskMem(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;)V

    .line 983
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->isNeedEnterAnimation:Z

    .line 985
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mCanReuseTaskStackViews:Z

    iput-boolean v7, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 986
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v7, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 987
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v3, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v7, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 988
    iget-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 991
    new-instance v6, Lcom/flyme/systemui/recents/FlymeRecents$9;

    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-direct {v6, p0, v7, v8}, Lcom/flyme/systemui/recents/FlymeRecents$9;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :cond_2
    const-wide/16 v6, 0x8

    :try_start_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 945
    return-void

    .line 951
    .end local v0    # "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v3    # "stackVr":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .end local v4    # "time":J
    :cond_3
    const/4 v9, -0x1

    goto/16 :goto_0

    .restart local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .restart local v4    # "time":J
    :cond_4
    move v6, v7

    .line 963
    goto :goto_1

    .line 1007
    .end local v1    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .end local v4    # "time":J
    :catchall_0
    move-exception v6

    .line 1008
    const-wide/16 v8, 0x8

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1021
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1023
    iput-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1020
    :cond_0
    return-void
.end method

.method reloadHeaderBarLayout(Z)V
    .locals 13
    .param p1, "reloadWidget"    # Z

    .prologue
    const/4 v12, 0x0

    .line 636
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 637
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 638
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 639
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 640
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    const v0, 0x1050017

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mStatusBarHeight:I

    .line 642
    const v0, 0x1050018

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNavBarHeight:I

    .line 643
    const v0, 0x105001a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNavBarWidth:I

    .line 644
    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p0, v0, v1}, Lcom/flyme/systemui/recents/FlymeRecents;->reloadSearchBarAppWidget(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mStatusBarHeight:I

    .line 649
    iget-object v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNavBarWidth:I

    :goto_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 648
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 650
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mStatusBarHeight:I

    iget v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNavBarWidth:I

    invoke-virtual {v0, v12, v1, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 657
    :goto_1
    new-instance v10, Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-direct {v10}, Lcom/flyme/systemui/recents/model/TaskStack;-><init>()V

    .line 658
    .local v10, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/flyme/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDummyStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 659
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDummyStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    .line 660
    .local v6, "algo":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 661
    .local v11, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 662
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 664
    iput-boolean v12, p0, Lcom/flyme/systemui/recents/FlymeRecents;->isEnterAnimationIninted:Z

    .line 665
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 666
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->dismissStage()V

    .line 669
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_5

    const/4 v9, 0x1

    .line 670
    .local v9, "screenLand":I
    :goto_2
    iget v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mLastScreenLand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mLastScreenLand:I

    if-eq v0, v9, :cond_2

    .line 671
    :cond_1
    iput v9, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mLastScreenLand:I

    .line 672
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/QuickChangeView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeView:Lcom/flyme/systemui/recents/views/QuickChangeView;

    .line 673
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangePresenter:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mQuickChangeView:Lcom/flyme/systemui/recents/views/QuickChangeView;

    invoke-virtual {v0, p0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->bind(Lcom/flyme/systemui/recents/model/IQuickChangeModel;Lcom/flyme/systemui/recents/views/IQuickChangeView;)V

    .line 635
    :cond_2
    return-void

    .end local v6    # "algo":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v9    # "screenLand":I
    .end local v10    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v11    # "taskStackBounds":Landroid/graphics/Rect;
    :cond_3
    move v4, v12

    .line 649
    goto/16 :goto_0

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mStatusBarHeight:I

    iget v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mNavBarHeight:I

    invoke-virtual {v0, v12, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 669
    .restart local v6    # "algo":Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .restart local v10    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .restart local v11    # "taskStackBounds":Landroid/graphics/Rect;
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "screenLand":I
    goto :goto_2
.end method

.method reloadSearchBarAppWidget(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 680
    return-void
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 701
    sput-object p1, Lcom/flyme/systemui/recents/FlymeRecents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 700
    return-void
.end method

.method showRecents()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initTouchEnterIf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onCreate()V

    .line 406
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStart()V

    .line 407
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->startEnterAnimation()V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 21
    .param p1, "showNextTask"    # Z

    .prologue
    .line 513
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 514
    .local v7, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 516
    .local v9, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 517
    invoke-virtual {v9}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/flyme/systemui/recents/model/TaskStack;

    move-result-object v11

    .line 520
    .local v11, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/flyme/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_0

    return-void

    .line 522
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 524
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v10, :cond_1

    return-void

    .line 531
    :cond_1
    invoke-virtual {v11}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 532
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 533
    .local v15, "toTask":Lcom/flyme/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 534
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 535
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 536
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_3

    .line 537
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flyme/systemui/recents/model/Task;

    .line 538
    .local v12, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 539
    iget-object v4, v12, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    .line 541
    .local v4, "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_5

    .line 542
    invoke-virtual {v4, v12}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 543
    .local v16, "toTaskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 544
    const v18, 0x7f05008f

    .line 545
    const v19, 0x7f05008e

    .line 543
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 552
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v16, :cond_2

    .line 553
    move-object/from16 v0, v16

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/flyme/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/flyme/systemui/recents/model/Task;

    move-result-object v15

    .line 555
    .end local v15    # "toTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_2
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 561
    .end local v4    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    :cond_3
    if-nez v15, :cond_8

    .line 562
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_4

    .line 563
    if-eqz p1, :cond_7

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 566
    const v19, 0x7f05008d

    .line 565
    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 564
    invoke-virtual/range {v17 .. v18}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 573
    :cond_4
    :goto_2
    return-void

    .line 547
    .restart local v4    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v12    # "task":Lcom/flyme/systemui/recents/model/Task;
    .restart local v15    # "toTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v4, v12}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 548
    .restart local v16    # "toTaskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 549
    const v18, 0x7f050092

    .line 550
    const v19, 0x7f050091

    .line 548
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 536
    .end local v4    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 568
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v15    # "toTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 570
    const v19, 0x7f050090

    .line 569
    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 568
    invoke-virtual/range {v17 .. v18}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 577
    :cond_8
    iget-boolean v0, v15, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 512
    :goto_3
    return-void

    .line 581
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    .line 582
    iget-object v0, v15, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 581
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto :goto_3
.end method

.method public final showStage()V
    .locals 3

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/ContentView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->runningPkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/misc/SpecialConditions;->onSpecialActivityEnter(Landroid/content/Context;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v1, "ambientRatio"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v1, "ambientShadowStrength"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string/jumbo v1, "spotShadowStrength"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1051
    const/16 v1, 0x7e1

    .line 1050
    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 1052
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1053
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1054
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1055
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1056
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1057
    const v1, 0x1000108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1060
    const/16 v1, 0xe

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1061
    iget-object v1, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1062
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    .line 1061
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public startRecentsActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1187
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    const-class v3, Lcom/flyme/systemui/recents/RecentsEmptyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x10814000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1192
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1195
    .local v1, "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sDuringStart:Z

    .line 1196
    iget-object v2, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1186
    return-void
.end method

.method toggleRecents()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flyme/systemui/recents/Recents;->isRecentsShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->initTouchEnterIf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->RIGHT:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    iput-object v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    .line 452
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onCreate()V

    .line 453
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsWindow;->onStart()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    .line 455
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    new-instance v1, Lcom/flyme/systemui/recents/FlymeRecents$8;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/FlymeRecents$8;-><init>(Lcom/flyme/systemui/recents/FlymeRecents;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/ContentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
