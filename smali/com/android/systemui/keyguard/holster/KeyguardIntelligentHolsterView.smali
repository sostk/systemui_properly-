.class public Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.super Landroid/widget/FrameLayout;
.source "KeyguardIntelligentHolsterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$1;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;,
        Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;",
        ">;"
    }
.end annotation


# static fields
.field protected static mBackground:Landroid/graphics/drawable/Drawable;

.field private static mMusicView:Landroid/view/View;


# instance fields
.field private indicators:Lcom/meizu/keyguard/PageIndicators;

.field private isMusicExist:Z

.field private final mActivityLauncher:Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;

.field private mAdapter:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

.field private mAddWidgetSyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetLoader:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader",
            "<",
            "Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mChildsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/support/v4/view/ViewPager;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHolsterHeight:F

.field private mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

.field private mHolsterView:Landroid/widget/FrameLayout;

.field private mIntent:Landroid/content/Intent;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIndex:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMzReceiver:Landroid/content/BroadcastReceiver;

.field private mOnClickHandler:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;

.field private mPagingTouchSlop:I

.field private mSetHolsterViews:Ljava/lang/Runnable;

.field private mUserId:I

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private widgets:[I

.field xOffset:F

.field yOffset:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/meizu/keyguard/PageIndicators;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->indicators:Lcom/meizu/keyguard/PageIndicators;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAdapter:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mChildsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mLastIndex:I

    return v0
.end method

.method static synthetic -get5()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMusicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mSetHolsterViews:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mCurrentPage:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mLastIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addWidgetForHolster(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addWidgetFromSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->cleanupAppWidgetIds()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mChildsList:Ljava/util/ArrayList;

    .line 69
    iput v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mCurrentPage:I

    .line 76
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mOnClickHandler:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;

    .line 77
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->isMusicExist:Z

    .line 81
    iput-object v5, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mIntent:Landroid/content/Intent;

    .line 85
    iput v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->xOffset:F

    .line 86
    iput v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->yOffset:F

    .line 125
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$1;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mActivityLauncher:Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;

    .line 201
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$2;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMzReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mSetHolsterViews:Ljava/lang/Runnable;

    .line 144
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 145
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04001a

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0f00cc

    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterView:Landroid/widget/FrameLayout;

    .line 147
    const v3, 0x7f040006

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 148
    .local v2, "weatherView":Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
    sget-object v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 149
    const-string/jumbo v3, "KeyguardIntelligentHolsterView"

    const-string/jumbo v4, "mBackground is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 153
    sget-object v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v2, v6, v5}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setFocusable(Z)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setFocusableInTouchMode(Z)V

    .line 158
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    .line 160
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mChildsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mChildsList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAdapter:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

    .line 163
    const v3, 0x7f0f00cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    .line 164
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v8, v5}, Landroid/support/v4/view/ViewPager;->setLayerType(ILandroid/graphics/Paint;)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAdapter:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 167
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 168
    const v3, 0x7f0f00ce

    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/keyguard/PageIndicators;

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->indicators:Lcom/meizu/keyguard/PageIndicators;

    .line 169
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->indicators:Lcom/meizu/keyguard/PageIndicators;

    invoke-virtual {v3, v8}, Lcom/meizu/keyguard/PageIndicators;->setIndicatorCount(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b034b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterHeight:F

    .line 171
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mPagingTouchSlop:I

    .line 173
    sput-object v5, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMusicView:Landroid/view/View;

    .line 174
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setBackgroundColor(I)V

    .line 175
    const v3, -0xb2b5a5

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setColorFilterForHolster(I)V

    .line 142
    return-void
.end method

.method private addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 0
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "insertionIndex"    # I

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addWidget(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method private addWidget(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 372
    instance-of v3, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v3, :cond_0

    .line 373
    new-instance v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 374
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 376
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    sput-object v1, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMusicView:Landroid/view/View;

    .line 369
    return-void

    .line 383
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object v1, p1

    .line 388
    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    goto :goto_0
.end method

.method private addWidget(IIZ)Z
    .locals 8
    .param p1, "appId"    # I
    .param p2, "insertionIndex"    # I
    .param p3, "b"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 338
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 339
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v2, 0x0

    .line 340
    .local v2, "view":Landroid/appwidget/AppWidgetHostView;
    const/4 v1, 0x0

    .line 341
    .local v1, "i":I
    if-eqz v0, :cond_4

    .line 342
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.meizu.media.music.appwidget.MusicAppWidgetProvider_window"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->isMusicExist:Z

    if-nez v3, :cond_2

    .line 343
    const-string/jumbo v3, "KeyguardIntelligentHolsterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "yingchun, appWidgetInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 345
    .local v2, "view":Landroid/appwidget/AppWidgetHostView;
    :goto_0
    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 346
    const-string/jumbo v3, "KeyguardIntelligentHolsterView"

    const-string/jumbo v4, "yingchun, getErrorView"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 352
    .end local v2    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_2
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.meizu.media.music.appwidget.MusicAppWidgetProvider_window"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 353
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->isMusicExist:Z

    .line 355
    :cond_3
    return v7

    .line 357
    .local v2, "view":Landroid/appwidget/AppWidgetHostView;
    :cond_4
    if-eqz p3, :cond_5

    .line 358
    const-string/jumbo v3, "KeyguardIntelligentHolsterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  was null for user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 359
    iget v5, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mUserId:I

    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 359
    const-string/jumbo v5, ", deleting"

    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->removeAppWidget(I)Z

    .line 363
    :cond_5
    return v6
.end method

.method private addWidgetForHolster(Ljava/lang/String;)V
    .locals 11
    .param p1, "componentString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 556
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getAppWidgets(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    .line 557
    const/4 v1, 0x0

    .line 559
    .local v1, "appWidgetId":I
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    array-length v7, v7

    if-lez v7, :cond_1

    .line 560
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 561
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 562
    iget-object v8, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    aget v8, v8, v5

    .line 561
    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 563
    .local v2, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_0

    .line 564
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 566
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    invoke-virtual {p0, v2, v7}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->sendUpdateIntentLocked(Landroid/appwidget/AppWidgetProviderInfo;[I)V

    .line 567
    return-void

    .line 560
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 572
    .end local v2    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 573
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 574
    .local v3, "data":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 575
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 576
    const-string/jumbo v7, "KeyguardIntelligentHolsterView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "yingchun, getComponent name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 578
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;

    iget-object v7, v7, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 580
    const-string/jumbo v7, "appWidgetId"

    .line 579
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 594
    :goto_2
    invoke-virtual {p0, v1, v10}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addAppWidget(II)Z

    .line 572
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 584
    :cond_3
    const v0, 0x4b455947    # 1.2933447E7f

    .line 585
    .local v0, "KEYGUARD_HOST_ID":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 586
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 587
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 588
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 589
    iget-object v9, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 587
    invoke-virtual {v7, v1, v8, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 590
    .end local v6    # "userId":I
    :catch_0
    move-exception v4

    .line 591
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 555
    .end local v0    # "KEYGUARD_HOST_ID":I
    .end local v3    # "data":Landroid/content/Intent;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    return-void
.end method

.method private addWidgetFromSettings()V
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getInsertPageIndex()I

    move-result v1

    .line 216
    .local v1, "insertionIndex":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getAppWidgets(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    .line 218
    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    if-nez v2, :cond_1

    .line 219
    const-string/jumbo v2, "KeyguardIntelligentHolsterView"

    const-string/jumbo v3, "Problem reading widgets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->widgets:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addWidget(IIZ)Z

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 7

    .prologue
    .line 631
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getAppWidgets(I)[I

    move-result-object v2

    .line 632
    .local v2, "appWidgetIdsInKeyguardSettings":[I
    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 633
    .local v1, "appWidgetIdsBoundToHost":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 634
    aget v0, v1, v3

    .line 635
    .local v0, "appWidgetId":I
    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    const-string/jumbo v4, "KeyguardIntelligentHolsterView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 633
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 302
    array-length v1, p0

    .line 304
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_0

    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 316
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 317
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 318
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 319
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 320
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 321
    add-int/2addr v4, v3

    .line 317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v6, ""

    return-object v6

    .line 309
    :pswitch_1
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 325
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 328
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_2

    .line 330
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    const/4 v2, 0x0

    .line 643
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p0, v1

    .line 644
    .local v0, "value":I
    if-ne v0, p1, :cond_0

    .line 645
    const/4 v1, 0x1

    return v1

    .line 643
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "value":I
    :cond_1
    return v2
.end method

.method private getAppWidgets(I)[I
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 229
    iget-object v7, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_screen_appwidget_ids"

    .line 228
    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string/jumbo v4, ","

    .line 231
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 232
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 234
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 235
    aget-object v0, v3, v6

    .line 237
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "KeyguardIntelligentHolsterView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v10

    .line 243
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v2

    .line 245
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_1
    new-array v7, v9, [I

    return-object v7
.end method

.method private getInsertPageIndex()I
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mChildsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private initHost()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mActivityLauncher:Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/holster/KeyguardActivityLauncher;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mIntent:Landroid/content/Intent;

    .line 179
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mUserId:I

    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, "userContext":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v1, "system"

    .line 184
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "system"

    .line 185
    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 184
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    .end local v1    # "packageName":Ljava/lang/String;
    .local v2, "userContext":Landroid/content/Context;
    :goto_0
    new-instance v3, Landroid/appwidget/AppWidgetHost;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mOnClickHandler:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$MyOnClickHandler;

    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 192
    const v6, 0x4b455947    # 1.2933447E7f

    invoke-direct {v3, v2, v6, v4, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 194
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 195
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 197
    new-instance v3, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v3, v4, v5, p0}, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader$ItemConstructor;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetLoader:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;

    .line 198
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetLoader:Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;

    iget-object v4, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/holster/KeyguardWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mItems:Ljava/util/List;

    .line 199
    iget-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "appWidgetOptions"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 177
    return-void

    .line 187
    .local v2, "userContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    .local v2, "userContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private writeAppWidgets([I)V
    .locals 4
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "lock_screen_appwidget_ids"

    .line 297
    const-string/jumbo v2, ","

    invoke-static {p1, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    const/4 v3, -0x2

    .line 295
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 294
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .locals 6
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 272
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getAppWidgets(I)[I

    move-result-object v3

    .line 273
    .local v3, "widgets":[I
    if-nez v3, :cond_0

    .line 274
    return v5

    .line 276
    :cond_0
    if-ltz p2, :cond_1

    array-length v4, v3

    if-le p2, v4, :cond_2

    .line 277
    :cond_1
    return v5

    .line 279
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 280
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 281
    if-ne p2, v0, :cond_3

    .line 282
    aput p1, v2, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_3
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 286
    aget v4, v3, v1

    aput v4, v2, v0

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 280
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->writeAppWidgets([I)V

    .line 291
    const/4 v4, 0x1

    return v4
.end method

.method public addHolsterStatusBarView(Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;)V
    .locals 1
    .param p1, "statusBarView"    # Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 663
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 664
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setColor()V

    .line 661
    return-void
.end method

.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 545
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 547
    .local v1, "label":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 548
    .local v0, "item":Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->appWidgetPreviewId:I

    .line 549
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->iconId:I

    .line 550
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->packageName:Ljava/lang/String;

    .line 551
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->className:Ljava/lang/String;

    .line 552
    iput-object p3, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;->extras:Landroid/os/Bundle;

    .line 553
    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 544
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$Item;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 492
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 425
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->initHost()V

    .line 427
    const-string/jumbo v0, "KeyguardIntelligentHolsterView"

    const-string/jumbo v1, "KeyguardIntelligentHolsterView onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$4;-><init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAddWidgetSyncTask:Landroid/os/AsyncTask;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAddWidgetSyncTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mFilter:Landroid/content/IntentFilter;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.meizu.media.music.back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMzReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 484
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 451
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mSetHolsterViews:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 453
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mMzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 450
    return-void
.end method

.method public removeAppWidget(I)Z
    .locals 6
    .param p1, "widgetId"    # I

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->getAppWidgets(I)[I

    move-result-object v3

    .line 251
    .local v3, "widgets":[I
    array-length v4, v3

    if-nez v4, :cond_0

    .line 252
    return v5

    .line 255
    :cond_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [I

    .line 256
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 257
    aget v4, v3, v0

    if-ne v4, p1, :cond_1

    .line 256
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    array-length v4, v2

    if-lt v1, v4, :cond_2

    .line 261
    return v5

    .line 263
    :cond_2
    aget v4, v3, v0

    aput v4, v2, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->writeAppWidgets([I)V

    .line 268
    const/4 v4, 0x1

    return v4
.end method

.method sendUpdateIntentLocked(Landroid/appwidget/AppWidgetProviderInfo;[I)V
    .locals 4
    .param p1, "p"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 652
    const-string/jumbo v1, "KeyguardIntelligentHolsterView"

    const-string/jumbo v2, "sendUpdateIntentLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 656
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 651
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setColor()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-eqz v0, :cond_0

    .line 669
    iget v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mCurrentPage:I

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    const v1, -0xb2b5a5

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mContainer:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 487
    :cond_0
    return-void
.end method
