.class public Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field public static INVALID_TASK_ID:I

.field static sInstance:Lcom/flyme/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mNumVisibleTasksLoaded:I

.field mNumVisibleThumbnailsLoaded:I

.field mPackageMonitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, -0x1

    sput v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    .line 341
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const-string/jumbo v0, "recents.TaskLoader"

    const-string/jumbo v1, "RecentsTaskLoader init, maybe a error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    const v1, 0x7f100025

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 371
    const v1, 0x7f100026

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 373
    iget v7, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 375
    .local v7, "iconCacheSize":I
    iget v8, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 379
    .local v8, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 380
    .local v6, "icon":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 381
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 389
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 390
    new-instance v0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    .line 391
    new-instance v0, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    .line 392
    new-instance v0, Lcom/flyme/systemui/recents/model/DrawableLruCache;

    invoke-direct {v0, v7}, Lcom/flyme/systemui/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    .line 393
    new-instance v0, Lcom/flyme/systemui/recents/model/BitmapLruCache;

    invoke-direct {v0, v8}, Lcom/flyme/systemui/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    .line 394
    new-instance v0, Lcom/flyme/systemui/recents/model/StringLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

    .line 395
    new-instance v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    .line 396
    iget-object v4, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 395
    invoke-direct/range {v0 .. v5}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;-><init>(Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;Lcom/flyme/systemui/recents/model/DrawableLruCache;Lcom/flyme/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    .line 366
    return-void
.end method

.method public static getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    sget-object v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    .line 404
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 548
    .local v0, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    new-instance v1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1, v0, v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V

    .line 549
    .local v1, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v1
.end method

.method public deleteTaskData(Lcom/flyme/systemui/recents/model/Task;Z)V
    .locals 4
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 655
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->remove(Lcom/flyme/systemui/recents/model/Task$TaskKey;)V

    .line 656
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->remove(Lcom/flyme/systemui/recents/model/Task$TaskKey;)V

    .line 657
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 658
    iput-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 659
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, v0, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 661
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    iput-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 663
    :cond_0
    if-eqz p2, :cond_1

    .line 664
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/model/Task;->notifyTaskDataUnloaded()V

    .line 652
    :cond_1
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/RecentsConfiguration;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0

    .line 532
    :cond_0
    iget v0, p2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    return v0
.end method

.method public getAndUpdateActivityIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "taskKey"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "infoHandle"    # Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    .param p6, "loadIfNotCached"    # Z

    .prologue
    const/4 v8, 0x0

    .line 456
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 457
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 458
    return-object v6

    .line 461
    :cond_0
    if-eqz p6, :cond_3

    .line 463
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 464
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 465
    .local v7, "tdDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 466
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 467
    return-object v7

    .line 471
    :cond_1
    iget-object v0, p5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 473
    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 472
    invoke-virtual {p3, v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 475
    :cond_2
    iget-object v0, p5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 477
    if-eqz v6, :cond_3

    .line 478
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 479
    return-object v6

    .line 484
    .end local v7    # "tdDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-object v8
.end method

.method public getAndUpdateActivityLabel(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Lcom/flyme/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p4, "infoHandle"    # Lcom/flyme/systemui/recents/model/ActivityInfoHandle;

    .prologue
    .line 422
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/flyme/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 431
    return-object v0

    .line 434
    :cond_1
    iget-object v1, p4, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 435
    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 436
    iget v2, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 435
    invoke-virtual {p3, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 438
    :cond_2
    iget-object v1, p4, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p4, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/flyme/systemui/recents/model/StringLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 448
    :goto_0
    return-object v0

    .line 445
    :cond_3
    const-string/jumbo v1, "recents.TaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    const-string/jumbo v3, " u="

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    iget v3, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAndUpdateThumbnail(Lcom/flyme/systemui/recents/model/Task$TaskKey;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Z)Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .locals 5
    .param p1, "taskKey"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .param p2, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p3, "loadIfNotCached"    # Z

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v2, p1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 500
    .local v1, "thumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-eqz v1, :cond_0

    .line 502
    return-object v1

    .line 505
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 506
    .local v0, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget v2, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 508
    iget v2, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_1

    .line 510
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v2, p1, v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 511
    sget-object v2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\t\t load thumbnail from system"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v1

    .line 523
    :cond_1
    return-object v4
.end method

.method public getApplicationIconCacheSize()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;
    .param p2, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    const v5, -0x101011

    .line 573
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-nez v3, :cond_9

    .line 575
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v3, v4, :cond_1

    .line 576
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v4, p2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 580
    :cond_1
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v3, :cond_5

    .line 592
    :cond_2
    :goto_0
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-boolean v3, p2, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v3, :cond_7

    :cond_3
    const/4 v1, 0x0

    .line 593
    .local v1, "requiresLoad":Z
    :goto_1
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 594
    if-eqz v1, :cond_4

    .line 595
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3, p2}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 597
    :cond_4
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/model/Task;->notifyTaskDataLoaded()V

    .line 572
    :goto_3
    return-void

    .line 581
    .end local v1    # "requiresLoad":Z
    :cond_5
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v4, p2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 582
    .local v0, "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-eqz v0, :cond_2

    .line 583
    iget-object v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 584
    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget v4, p1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v3, v4, :cond_6

    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    if-ne v3, v5, :cond_2

    .line 585
    :cond_6
    iget v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {p2, v3}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    goto :goto_0

    .line 592
    .end local v0    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "requiresLoad":Z
    goto :goto_1

    .line 593
    :cond_8
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    .line 599
    .end local v1    # "requiresLoad":Z
    :cond_9
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/model/Task;

    .line 600
    .local v2, "t_split":Lcom/flyme/systemui/recents/model/Task;
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v3, v4, :cond_b

    .line 601
    :cond_a
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v4, p2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 603
    :cond_b
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_d

    .line 604
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v4, p2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 605
    .restart local v0    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-eqz v0, :cond_d

    .line 606
    iget-object v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 607
    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget v4, p1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v3, v4, :cond_c

    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    if-ne v3, v5, :cond_d

    .line 608
    :cond_c
    iget v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {p2, v3}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    .line 612
    .end local v0    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    :cond_d
    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v3, v4, :cond_f

    .line 613
    :cond_e
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v4, v2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 615
    :cond_f
    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_11

    .line 616
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v4, v2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 617
    .restart local v0    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-eqz v0, :cond_11

    .line 618
    iget-object v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 619
    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget v4, p1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v3, v4, :cond_10

    iget v3, p2, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    if-ne v3, v5, :cond_11

    .line 620
    :cond_10
    iget v3, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {p2, v3}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    .line 625
    .end local v0    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    :cond_11
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_14

    :cond_12
    const/4 v1, 0x1

    .line 626
    .restart local v1    # "requiresLoad":Z
    :goto_4
    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_15

    iget-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    :goto_5
    iput-object v3, p2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 627
    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    :goto_6
    iput-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 628
    if-eqz v1, :cond_13

    .line 629
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3, p2}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 631
    :cond_13
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/model/Task;->notifyTaskDataLoaded()V

    goto/16 :goto_3

    .line 625
    .end local v1    # "requiresLoad":Z
    :cond_14
    iget-object v3, v2, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    const/4 v1, 0x0

    .restart local v1    # "requiresLoad":Z
    goto :goto_4

    .line 626
    :cond_15
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_5

    .line 627
    :cond_16
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_6
.end method

.method public loadTaskMem(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;)V
    .locals 0
    .param p1, "plan"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->asyncLoadMem()V

    .line 635
    return-void
.end method

.method public loadTasks(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 565
    if-nez p3, :cond_0

    .line 566
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/flyme/systemui/recents/model/RecentsTaskLoader;Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;)V

    .line 564
    return-void
.end method

.method public onLanguageChanged()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/StringLruCache;->evictAll()V

    .line 739
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 700
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 701
    .local v0, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    sparse-switch p1, :sswitch_data_0

    .line 699
    :goto_0
    return-void

    .line 703
    :sswitch_0
    iget v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 705
    iget v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 704
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 711
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 712
    iget v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 711
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 706
    :cond_1
    iget v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_2

    .line 707
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    goto :goto_1

    .line 708
    :cond_2
    iget v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 709
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->evictAll()V

    goto :goto_1

    .line 717
    :sswitch_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 718
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 723
    :sswitch_2
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 724
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 729
    :sswitch_3
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->evictAll()V

    .line 730
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->evictAll()V

    .line 732
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/flyme/systemui/recents/model/StringLruCache;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/StringLruCache;->evictAll()V

    goto :goto_0

    .line 701
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public preloadRawTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 0
    .param p1, "plan"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 554
    invoke-virtual {p1, p2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 553
    return-void
.end method

.method public preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 0
    .param p1, "plan"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 559
    invoke-virtual {p1, p0, p2, p3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoader;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 558
    return-void
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 685
    return-void
.end method

.method public startLoader(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 669
    invoke-static {}, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->start()V

    .line 670
    iget v0, p2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 671
    iget v0, p2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 674
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 679
    invoke-static {}, Lcom/flyme/systemui/recents/model/BitmapReusedCache;->stop()V

    .line 680
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/flyme/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->stop()V

    .line 681
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 678
    return-void
.end method

.method public unloadTaskData(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 642
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 643
    iput-object v2, p1, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 644
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, v0, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 646
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    iput-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/model/Task;->notifyTaskDataUnloaded()V

    .line 640
    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 691
    return-void
.end method
