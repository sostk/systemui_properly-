.class public Lcom/meizu/sharewidget/widget/ShareViewGroup;
.super Landroid/widget/LinearLayout;
.source "ShareViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;
    }
.end annotation


# static fields
.field protected static final GRID_VIEW_COLUMN_SIZE:I = 0x5

.field protected static final GRID_VIEW_ROW_SIZE:I = 0x2


# instance fields
.field private AFTER_SELECTED_NOT_FINISH:Z

.field protected mActivity:Landroid/app/Activity;

.field private mApplicationContext:Landroid/content/Context;

.field private mCheckboxView:Landroid/widget/CheckBox;

.field protected mContext:Landroid/content/Context;

.field private mFiileSize:F

.field private mFileCount:I

.field protected mGridViewAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/sharewidget/adapter/GridViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mInitialIntents:[Landroid/content/Intent;

.field private mIsCommonLayout:Ljava/lang/Boolean;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/sharewidget/utils/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPointView:Landroid/widget/LinearLayout;

.field protected mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnResult:Ljava/lang/Boolean;

.field private mShareLayout:Landroid/widget/RelativeLayout;

.field protected mShareListener:Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;

.field private mShareSummary:Landroid/widget/TextView;

.field private mShareTitle:Landroid/widget/TextView;

.field protected mStyleRes:I

.field private mSummaryString:Ljava/lang/String;

.field protected mTargetIntent:Landroid/content/Intent;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/meizu/sharewidget/adapter/ViewPagerAdapter;

.field private mWith:I

.field private pointViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mReturnResult:Ljava/lang/Boolean;

    .line 85
    iput-boolean v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->AFTER_SELECTED_NOT_FINISH:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mReturnResult:Ljava/lang/Boolean;

    .line 85
    iput-boolean v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->AFTER_SELECTED_NOT_FINISH:Z

    .line 95
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    move-object v1, p1

    .line 96
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const-string/jumbo v1, "window"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 100
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mWith:I

    .line 101
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    .line 102
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ShareViewGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mReturnResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ShareViewGroup;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->AFTER_SELECTED_NOT_FINISH:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ShareViewGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/sharewidget/widget/ShareViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ShareViewGroup;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->sendBrocastToDeletePic()V

    return-void
.end method

.method private buildListfromInitialIntent([Landroid/content/Intent;)V
    .locals 14
    .param p1, "intentList"    # [Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 371
    if-nez p1, :cond_1

    .line 404
    :cond_0
    return-void

    :cond_1
    const/4 v10, 0x0

    .line 372
    .local v10, "i":I
    :goto_0
    array-length v0, p1

    if-ge v10, v0, :cond_0

    .line 373
    aget-object v5, p1, v10

    .line 374
    .local v5, "ii":Landroid/content/Intent;
    if-eqz v5, :cond_2

    .line 377
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 379
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v6, :cond_3

    .line 372
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 379
    .restart local v6    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3
    iget-boolean v0, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_5

    .line 382
    :cond_4
    :goto_2
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 383
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 384
    instance-of v0, v5, Landroid/content/pm/LabeledIntent;

    if-nez v0, :cond_6

    .line 401
    :goto_3
    iget-object v12, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    new-instance v0, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 379
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object v11, v5

    .line 385
    check-cast v11, Landroid/content/pm/LabeledIntent;

    .line 386
    .local v11, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 387
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 388
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 389
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 391
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "iconResourceId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 392
    .local v9, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 398
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v8

    .line 395
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 398
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v7

    .line 397
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3
.end method

.method private getTheInitIntents(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    .line 505
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 506
    .local v2, "pa":[Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 517
    :cond_0
    return-void

    .line 507
    :cond_1
    array-length v3, v2

    new-array v3, v3, [Landroid/content/Intent;

    iput-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInitialIntents:[Landroid/content/Intent;

    const/4 v0, 0x0

    .line 508
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 509
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 513
    :cond_2
    aget-object v1, v2, v0

    check-cast v1, Landroid/content/Intent;

    .line 514
    .local v1, "in":Landroid/content/Intent;
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInitialIntents:[Landroid/content/Intent;

    aput-object v1, v3, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "in":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 510
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 511
    return-void
.end method

.method private handleSameNameItems(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 462
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v4, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "N":I
    const/4 v2, 0x0

    .line 465
    .local v2, "start":I
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "r0Label":Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 466
    .local v7, "i":I
    :goto_1
    if-lt v7, v6, :cond_2

    .line 485
    add-int/lit8 v3, v6, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_2
    if-eqz v5, :cond_4

    .line 470
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 471
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 472
    .local v9, "riLabel":Ljava/lang/CharSequence;
    if-eqz v9, :cond_5

    .line 475
    :goto_3
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    add-int/lit8 v3, v7, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 480
    move-object v4, v8

    .line 481
    move-object v5, v9

    .line 482
    move v2, v7

    .line 466
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 468
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "riLabel":Ljava/lang/CharSequence;
    :cond_4
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 473
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "riLabel":Ljava/lang/CharSequence;
    :cond_5
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3
.end method

.method private hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/sharewidget/utils/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/sharewidget/utils/DisplayResolveInfo;>;"
    const/4 v3, 0x0

    .line 572
    if-nez p1, :cond_1

    .line 580
    :cond_0
    return v3

    .line 572
    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 573
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    iget-object v1, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    iget-object v1, v1, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    const/4 v1, 0x1

    return v1
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/meizu/sharewidget/adapter/ViewPagerAdapter;

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPageViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/meizu/sharewidget/adapter/ViewPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPagerAdapter:Lcom/meizu/sharewidget/adapter/ViewPagerAdapter;

    .line 295
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPagerAdapter:Lcom/meizu/sharewidget/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 297
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meizu/sharewidget/widget/ShareViewGroup$2;

    invoke-direct {v1, p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup$2;-><init>(Lcom/meizu/sharewidget/widget/ShareViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 313
    return-void
.end method

.method private initPoint()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xa

    const/4 v5, -0x2

    .line 316
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPointView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 319
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 338
    return-void

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 319
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 325
    sget v3, Lcom/meizu/sharewidget/R$drawable;->light:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 327
    :goto_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 331
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 332
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 333
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 334
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPointView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    sget v3, Lcom/meizu/sharewidget/R$drawable;->dark:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private initViews(Z)V
    .locals 8
    .param p1, "hasSummary"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/meizu/sharewidget/R$layout;->share_grid_fragment:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/meizu/sharewidget/R$id;->share_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    .line 141
    sget v2, Lcom/meizu/sharewidget/R$id;->point_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPointView:Landroid/widget/LinearLayout;

    .line 142
    sget v2, Lcom/meizu/sharewidget/R$id;->share_viewpager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 143
    sget v2, Lcom/meizu/sharewidget/R$id;->share_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareTitle:Landroid/widget/TextView;

    .line 144
    sget v2, Lcom/meizu/sharewidget/R$id;->share_summary:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/meizu/sharewidget/R$id;->checkbox_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    .line 146
    if-nez p1, :cond_0

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v7, [I

    sget v4, Lcom/meizu/sharewidget/R$attr;->mzShareViewStyle:I

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/sharewidget/R$style;->Widget_Flyme_ShareView_Day:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mStyleRes:I

    .line 156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initViewPager()V

    .line 158
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initData()V

    .line 159
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initPoint()V

    .line 160
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->removeAllViews()V

    .line 161
    invoke-virtual {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->addView(Landroid/view/View;)V

    .line 162
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareLayoutSize()V

    .line 164
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->applyStyle()V

    .line 165
    return-void

    .line 147
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mSummaryString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mSummaryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/sharewidget/R$string;->file_selected_number:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mFiileSize:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isSplitMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v5, "meizu.splitmode.FlymeSplitModeManager"

    .line 586
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .local v4, "reflectClass":Ljava/lang/Class;
    const-string/jumbo v5, "getInstance"

    const/4 v6, 0x1

    .line 587
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 588
    .local v1, "getInstance":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 589
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "instance":Ljava/lang/Object;
    const-string/jumbo v5, "isSplitMode"

    const/4 v6, 0x0

    .line 590
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "isSplitMode":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 591
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .end local v1    # "getInstance":Ljava/lang/reflect/Method;
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "isSplitMode":Ljava/lang/reflect/Method;
    .end local v4    # "reflectClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    return v9
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 17
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v2, p3, p2

    add-int/lit8 v13, v2, 0x1

    .local v13, "num":I
    const/4 v2, 0x1

    .line 411
    if-eq v13, v2, :cond_1

    .line 417
    const/4 v15, 0x0

    .line 418
    .local v15, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 419
    .local v14, "startApp":Ljava/lang/CharSequence;
    if-eqz v14, :cond_2

    .line 422
    :goto_0
    if-eqz v15, :cond_3

    .line 440
    :goto_1
    move/from16 v12, p2

    .local v12, "k":I
    :goto_2
    move/from16 v0, p3

    if-le v12, v0, :cond_7

    .line 457
    .end local v12    # "k":I
    .end local v14    # "startApp":Ljava/lang/CharSequence;
    .end local v15    # "usePkg":Z
    :cond_0
    :goto_3
    return-void

    .line 413
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v2, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 420
    .restart local v14    # "startApp":Ljava/lang/CharSequence;
    .restart local v15    # "usePkg":Z
    :cond_2
    const/4 v15, 0x1

    goto :goto_0

    .line 424
    :cond_3
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 426
    .local v8, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v9, p2, 0x1

    .local v9, "j":I
    :goto_4
    move/from16 v0, p3

    if-le v9, v0, :cond_4

    .line 438
    :goto_5
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 428
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 429
    .local v11, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 430
    .local v10, "jApp":Ljava/lang/CharSequence;
    if-nez v10, :cond_6

    .line 431
    :cond_5
    const/4 v15, 0x1

    goto :goto_5

    .line 430
    :cond_6
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 434
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 441
    .end local v8    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v9    # "j":I
    .end local v10    # "jApp":Ljava/lang/CharSequence;
    .end local v11    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "k":I
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 442
    .local v4, "add":Landroid/content/pm/ResolveInfo;
    if-nez v15, :cond_9

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 440
    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 443
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v2, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 451
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v2, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/meizu/sharewidget/utils/DisplayResolveInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private removeNotExportItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_1

    .line 608
    :cond_0
    return-void

    .line 599
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 600
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 601
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 602
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v2, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_2

    .line 600
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 604
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removePriorityItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 343
    .local v0, "N":I
    if-nez p1, :cond_1

    .line 358
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 344
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x1

    .line 345
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 346
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 347
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v4, v5, :cond_3

    .line 348
    :cond_2
    :goto_1
    if-lt v1, v0, :cond_4

    .line 345
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_3
    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 352
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 353
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private resortTheResolveList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 364
    .local v0, "rComparator":Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    invoke-virtual {v0, p1}, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->resortResolveInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    goto :goto_0
.end method

.method private sendBrocastToDeletePic()V
    .locals 3

    .prologue
    .line 611
    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 612
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "SHOULD_DELETE_AFTER_SHARE"

    .line 613
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 615
    return-void
.end method

.method private setShareLayoutSize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 169
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 173
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mWith:I

    if-gtz v1, :cond_3

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mIsCommonLayout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_c

    .line 201
    :cond_1
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void

    .line 170
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void

    .line 174
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->isSplitMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    :cond_4
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mWith:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 175
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mWith:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x19

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 187
    :cond_7
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_9

    .line 195
    :cond_8
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 188
    :cond_9
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_8

    .line 189
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_b

    .line 192
    :cond_a
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0x17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 189
    :cond_b
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 190
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 198
    :cond_c
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 199
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1
.end method


# virtual methods
.method public applyStyle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/meizu/sharewidget/R$attr;->mzShareViewStyle:I

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 540
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/sharewidget/R$style;->Widget_Flyme_ShareView_Day:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mStyleRes:I

    .line 541
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 542
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mStyleRes:I

    invoke-static {p0, v1}, Lcom/meizu/sharewidget/utils/ColorUiUtil;->changeStyle(Landroid/view/View;I)V

    .line 543
    return-void
.end method

.method public drawPoint(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 493
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 502
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 493
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    if-eq p1, v0, :cond_2

    .line 498
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/meizu/sharewidget/R$drawable;->light:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->pointViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/meizu/sharewidget/R$drawable;->dark:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getCheckBoxView()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public hideShareSummary()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareLayoutSize()V

    goto :goto_0
.end method

.method protected initViewPager()V
    .locals 12

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPageViews:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mGridViewAdapters:Ljava/util/ArrayList;

    .line 212
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v9, "shareIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInitialIntents:[Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    .line 220
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->removePriorityItems(Ljava/util/List;)V

    .line 221
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resortTheResolveList(Ljava/util/List;)V

    .line 222
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->removeNotExportItems(Ljava/util/List;)V

    .line 223
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mResolveList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->handleSameNameItems(Ljava/util/List;)V

    const/4 v7, 0x0

    .line 225
    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-gtz v1, :cond_2

    move v1, v4

    :goto_2
    add-int/2addr v1, v2

    if-lt v7, v1, :cond_3

    .line 291
    return-void

    .line 216
    .end local v7    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mInitialIntents:[Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->buildListfromInitialIntent([Landroid/content/Intent;)V

    goto :goto_0

    .restart local v7    # "i":I
    :cond_2
    move v1, v10

    .line 225
    goto :goto_2

    .line 228
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v3, "viewPageList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/sharewidget/utils/DisplayResolveInfo;>;"
    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v8, v1, 0x2

    .local v8, "j":I
    :goto_3
    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_5

    mul-int/lit8 v1, v7, 0x5

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    :goto_4
    if-lt v8, v1, :cond_6

    .line 234
    new-instance v6, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v6, "gridView":Landroid/widget/GridView;
    new-instance v0, Lcom/meizu/sharewidget/adapter/GridViewAdapter;

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mTargetIntent:Landroid/content/Intent;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 236
    .local v0, "adapter":Lcom/meizu/sharewidget/adapter/GridViewAdapter;
    iget v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mStyleRes:I

    invoke-virtual {v0, v1}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->setStyleMode(I)V

    .line 238
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 244
    :cond_4
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    new-instance v1, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;

    invoke-direct {v1, p0, v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;-><init>(Lcom/meizu/sharewidget/widget/ShareViewGroup;Lcom/meizu/sharewidget/adapter/GridViewAdapter;)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mGridViewAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 280
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 281
    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 282
    invoke-virtual {v6, v11, v4, v11, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    const/16 v1, 0xf

    .line 283
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 284
    invoke-virtual {v6, v10}, Landroid/widget/GridView;->setGravity(I)V

    const/4 v1, 0x2

    .line 285
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 286
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 287
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mPageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 229
    .end local v0    # "adapter":Lcom/meizu/sharewidget/adapter/GridViewAdapter;
    .end local v6    # "gridView":Landroid/widget/GridView;
    :cond_5
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    .line 232
    :cond_6
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 238
    .restart local v0    # "adapter":Lcom/meizu/sharewidget/adapter/GridViewAdapter;
    .restart local v6    # "gridView":Landroid/widget/GridView;
    :cond_7
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_4

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 239
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 240
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 241
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resetData()V

    .line 242
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 636
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 637
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mWith:I

    .line 638
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mHeight:I

    .line 639
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareLayoutSize()V

    .line 640
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 645
    if-nez p1, :cond_0

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->clearStrokeDrawableCache()V

    goto :goto_0
.end method

.method public refreshShareList(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mTargetIntent:Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initViewPager()V

    .line 529
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initData()V

    .line 530
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initPoint()V

    .line 531
    return-void
.end method

.method public resetData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    .line 521
    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    .line 522
    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mApplicationContext:Landroid/content/Context;

    .line 523
    return-void
.end method

.method public setEnableForAll(Landroid/view/View;Z)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 622
    instance-of v2, p1, Landroid/view/View;

    if-nez v2, :cond_1

    .line 625
    :goto_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 631
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 626
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 627
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    move-object v2, p1

    .line 628
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setEnableForAll(Landroid/view/View;Z)V

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setIsReturnResult(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isReturnResult"    # Ljava/lang/Boolean;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mReturnResult:Ljava/lang/Boolean;

    .line 535
    return-void
.end method

.method public setOnShareClickListener(Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareListener:Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;

    .line 569
    return-void
.end method

.method public setShareActivityNotFinish(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->AFTER_SELECTED_NOT_FINISH:Z

    .line 561
    return-void
.end method

.method public setShareFileCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mFileCount:I

    .line 123
    return-void
.end method

.method public setShareFileSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mFiileSize:F

    .line 127
    return-void
.end method

.method public setShareSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mSummaryString:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setShareWidgetColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTargetIntent(Landroid/content/Intent;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isCommonLayout"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object p2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mIsCommonLayout:Ljava/lang/Boolean;

    .line 108
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mTargetIntent:Landroid/content/Intent;

    .line 109
    invoke-direct {p0, p1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getTheInitIntents(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initViews(Z)V

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->initViews(Z)V

    goto :goto_0
.end method

.method public showCheckboxView()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mCheckboxView:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 555
    invoke-direct {p0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareLayoutSize()V

    goto :goto_0
.end method
