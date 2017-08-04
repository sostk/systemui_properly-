.class public Lcom/android/systemui/multiwindow/MultiWindowActivity;
.super Landroid/app/Activity;
.source "MultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;,
        Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;,
        Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;,
        Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;,
        Lcom/android/systemui/multiwindow/MultiWindowActivity$1;,
        Lcom/android/systemui/multiwindow/MultiWindowActivity$2;
    }
.end annotation


# static fields
.field private static mAllAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/multiwindow/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private NUM_L:I

.field private NUM_P:I

.field private acceptTouch:Z

.field private adapter:Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

.field delayRunable:Ljava/lang/Runnable;

.field private isFirst:Z

.field loadRunable:Ljava/lang/Runnable;

.field private mBasePackageName:Ljava/lang/String;

.field private mGridLeftPadding:I

.field private mHandler:Landroid/os/Handler;

.field private mIndicators:Lcom/android/systemui/multiwindow/PageIndicators;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastIndex:I

.field private mLock:Ljava/lang/Object;

.field private mMainView:Landroid/view/View;

.field private mMaxLabelLength:I

.field private mPageCount:I

.field private mPagerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected mPkgManager:Landroid/content/pm/PackageManager;

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field private mTextSize:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->adapter:Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/PageIndicators;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mIndicators:Lcom/android/systemui/multiwindow/PageIndicators;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mLastIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/multiwindow/MultiWindowActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->acceptTouch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/multiwindow/MultiWindowActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mLastIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/multiwindow/MultiWindowActivity;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->launchApp(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    .line 52
    iput v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    .line 53
    iput v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mLastIndex:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->isFirst:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mHandler:Landroid/os/Handler;

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    .line 65
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_L:I

    .line 122
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$1;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->delayRunable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->loadRunable:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method private initRecentsTasksForMulti()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 279
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v5

    .line 280
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 279
    invoke-virtual {v4, v5, v6, v7}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mRawTasks:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/AppInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mRawTasks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 286
    .local v3, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/AppInfo;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    :cond_0
    :goto_2
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_2
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/AppInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    .end local v3    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_4
    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 278
    return-void
.end method

.method private declared-synchronized launchApp(Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    monitor-enter p0

    .line 316
    if-eqz p1, :cond_1

    .line 317
    :try_start_0
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 318
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 319
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v5, "MultiWindowActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "launchApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 325
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mBasePackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 326
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetEnterMultiWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->acceptTouch:Z

    .line 329
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->startActivity(Landroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 314
    return-void

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private preloadGridViews()V
    .locals 14

    .prologue
    .line 163
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 164
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    div-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    .line 165
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    rem-int/2addr v10, v11

    if-lez v10, :cond_0

    .line 166
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    .line 168
    :cond_0
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    iget-object v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 169
    iget v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 170
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 171
    .local v8, "pager":Landroid/widget/LinearLayout;
    const v10, 0x7f0f0200

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 172
    .local v3, "firstLine":Landroid/widget/LinearLayout;
    const v10, 0x7f0f0201

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 173
    .local v9, "secondLine":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 174
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "firstLine":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    .end local v8    # "pager":Landroid/widget/LinearLayout;
    .end local v9    # "secondLine":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4    # "i":I
    :goto_1
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    if-ge v4, v10, :cond_2

    .line 178
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0400a2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 179
    .restart local v8    # "pager":Landroid/widget/LinearLayout;
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mGridLeftPadding:I

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mGridLeftPadding:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v12, v11, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 180
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    .end local v8    # "pager":Landroid/widget/LinearLayout;
    :cond_2
    const-string/jumbo v10, "MultiWindowActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preloadGridViews, mAllAppInfos != null, size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v4, 0x0

    :goto_2
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    if-ge v4, v10, :cond_b

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "curAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/AppInfo;>;"
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 188
    .restart local v8    # "pager":Landroid/widget/LinearLayout;
    const v10, 0x7f0f0200

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 189
    .restart local v3    # "firstLine":Landroid/widget/LinearLayout;
    const v10, 0x7f0f0201

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 190
    .restart local v9    # "secondLine":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 191
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    mul-int v6, v4, v10

    .local v6, "j":I
    :goto_3
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_7

    add-int/lit8 v10, v4, 0x1

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    mul-int/2addr v10, v11

    if-ge v6, v10, :cond_7

    .line 193
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    rem-int v10, v6, v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_L:I

    if-ge v10, v11, :cond_5

    .line 194
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/AppInfo;

    .line 195
    .local v5, "info":Lcom/android/systemui/multiwindow/AppInfo;
    const/4 v0, 0x0

    .line 197
    .local v0, "convertView":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10, v5}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->createView(Landroid/content/Context;Lcom/android/systemui/multiwindow/AppInfo;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    .end local v0    # "convertView":Landroid/view/View;
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->addViewToPager(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 192
    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 202
    .restart local v0    # "convertView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 209
    .end local v0    # "convertView":Landroid/view/View;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "info":Lcom/android/systemui/multiwindow/AppInfo;
    :cond_5
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/multiwindow/AppInfo;

    .line 210
    .restart local v5    # "info":Lcom/android/systemui/multiwindow/AppInfo;
    const/4 v0, 0x0

    .line 212
    .restart local v0    # "convertView":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10, v5}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->createView(Landroid/content/Context;Lcom/android/systemui/multiwindow/AppInfo;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 220
    .end local v0    # "convertView":Landroid/view/View;
    :cond_6
    :goto_6
    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {p0, v9, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->addViewToPager(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_5

    .line 217
    .restart local v0    # "convertView":Landroid/view/View;
    :catch_1
    move-exception v2

    .line 218
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 225
    .end local v0    # "convertView":Landroid/view/View;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "info":Lcom/android/systemui/multiwindow/AppInfo;
    :cond_7
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPageCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_9

    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    rem-int/2addr v10, v11

    if-eqz v10, :cond_9

    .line 226
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "k":I
    :goto_7
    sget-object v10, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    div-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    mul-int/2addr v10, v11

    if-ge v7, v10, :cond_9

    .line 227
    iget v10, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    rem-int v10, v7, v10

    iget v11, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_L:I

    if-ge v10, v11, :cond_8

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->createEmptyViewView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->addViewToPager(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 226
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 230
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->createEmptyViewView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->addViewToPager(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_8

    .line 185
    .end local v7    # "k":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 236
    .end local v1    # "curAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/multiwindow/AppInfo;>;"
    .end local v3    # "firstLine":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v8    # "pager":Landroid/widget/LinearLayout;
    .end local v9    # "secondLine":Landroid/widget/LinearLayout;
    :cond_a
    const-string/jumbo v10, "MultiWindowActivity"

    const-string/jumbo v11, "mAllAppInfos = null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_b
    return-void
.end method

.method private sortAllInfos()V
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$AppsComparator;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->initRecentsTasksForMulti()V

    .line 309
    return-void
.end method


# virtual methods
.method addViewToPager(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 242
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    iget v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mItemHeight:I

    .line 242
    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method public createEmptyViewView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "item":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    iget v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mItemHeight:I

    .line 378
    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    return-object v0
.end method

.method public createView(Landroid/content/Context;Lcom/android/systemui/multiwindow/AppInfo;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/systemui/multiwindow/AppInfo;

    .prologue
    .line 339
    const/4 v8, 0x1

    new-array v2, v8, [I

    const v8, 0x101045c

    const/4 v9, 0x0

    aput v8, v2, v9

    .line 340
    .local v2, "attrs":[I
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 341
    const/4 v6, 0x0

    .line 342
    .local v6, "tmpIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 343
    .local v7, "tmpLabel":Ljava/lang/CharSequence;
    iget-object v8, p2, Lcom/android/systemui/multiwindow/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 344
    .local v6, "tmpIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/android/systemui/multiwindow/AppInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 346
    .local v7, "tmpLabel":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    .line 348
    .local v3, "holder":Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 349
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0400a1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 350
    .local v4, "item":Landroid/view/View;
    const v8, 0x7f0f01fe

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 351
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    const v8, 0x7f0f01ff

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    .local v1, "appLabel":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iput-object v0, v3, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 356
    iput-object v1, v3, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;->mLabelView:Landroid/widget/TextView;

    .line 357
    iget-object v8, p2, Lcom/android/systemui/multiwindow/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v8, v3, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 358
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    new-instance v8, Lcom/android/systemui/multiwindow/MultiWindowActivity$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$3;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-object v4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->acceptTouch:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 73
    const v0, 0x7f0400a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 75
    const v0, 0x7f0f01fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 76
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0445

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mItemWidth:I

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mItemHeight:I

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0448

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mMaxLabelLength:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mGridLeftPadding:I

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mTextSize:I

    .line 84
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/PageIndicators;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mIndicators:Lcom/android/systemui/multiwindow/PageIndicators;

    .line 85
    const v0, 0x7f0f01fb

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mMainView:Landroid/view/View;

    .line 86
    invoke-static {}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->resetWallPaper()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mMainView:Landroid/view/View;

    invoke-static {p0}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 91
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;-><init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->adapter:Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->adapter:Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    .line 96
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_P:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->NUM_L:I

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->delayRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->loadRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->isFirst:Z

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "MobEventUtils"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mBasePackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->loadRunable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 112
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->isFirst:Z

    .line 100
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->delayRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public declared-synchronized preloadAppInfo()V
    .locals 9

    .prologue
    monitor-enter p0

    .line 250
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v3, 0x0

    .line 254
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPkgManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 260
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    if-nez v3, :cond_0

    .line 261
    :try_start_2
    const-string/jumbo v6, "MultiWindowActivity"

    const-string/jumbo v7, "infos == null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 262
    return-void

    .line 255
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "MultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryIntentActivities error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "mainIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 264
    .restart local v4    # "mainIntent":Landroid/content/Intent;
    :cond_0
    :try_start_4
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 266
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 267
    .local v5, "temp":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/multiwindow/Utils;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_2
    new-instance v0, Lcom/android/systemui/multiwindow/AppInfo;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 269
    iget-object v7, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 268
    invoke-direct {v0, v6, v7, v5, v2}, Lcom/android/systemui/multiwindow/AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;I)V

    .line 270
    .local v0, "appInfo":Lcom/android/systemui/multiwindow/AppInfo;
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowActivity;->mAllAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v6, "MultiWindowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mAllAppInfos before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    .end local v0    # "appInfo":Lcom/android/systemui/multiwindow/AppInfo;
    .end local v5    # "temp":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->sortAllInfos()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->preloadGridViews()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 249
    return-void
.end method
