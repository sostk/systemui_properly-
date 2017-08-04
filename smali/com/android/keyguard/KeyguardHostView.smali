.class public Lcom/android/keyguard/KeyguardHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;,
        Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;,
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;,
        Lcom/android/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/keyguard/KeyguardHostView$1;,
        Lcom/android/keyguard/KeyguardHostView$2;,
        Lcom/android/keyguard/KeyguardHostView$3;,
        Lcom/android/keyguard/KeyguardHostView$4;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUGXPORT:Z


# instance fields
.field private final MAX_WIDGETS:I

.field private mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDisabledFeatures:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field private mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

.field private mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

.field private mPostBootCompletedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private final mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardHostView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 72
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v6, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    .line 234
    new-instance v6, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 233
    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 445
    new-instance v6, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 444
    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 611
    new-instance v6, Lcom/android/keyguard/KeyguardHostView$3;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardHostView$3;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 610
    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 817
    new-instance v6, Lcom/android/keyguard/KeyguardHostView$4;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardHostView$4;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 132
    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "KeyguardHostView"

    const-string/jumbo v7, "KeyguardHostView()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 143
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 144
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 146
    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 152
    :cond_1
    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 151
    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    const/4 v4, 0x0

    .line 160
    .local v4, "userContext":Landroid/content/Context;
    :try_start_1
    const-string/jumbo v3, "system"

    .line 161
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "system"

    .line 162
    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 161
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 170
    .end local v3    # "packageName":Ljava/lang/String;
    .local v4, "userContext":Landroid/content/Context;
    :goto_1
    new-instance v6, Landroid/appwidget/AppWidgetHost;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    .line 171
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    .line 170
    const v9, 0x4b455947    # 1.2933447E7f

    invoke-direct {v6, v4, v9, v7, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 173
    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 175
    new-instance v6, Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 177
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 178
    const-string/jumbo v7, "user_setup_complete"

    const/4 v8, -0x2

    .line 177
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 183
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v5, :cond_3

    .line 184
    const-string/jumbo v5, "KeyguardHostView"

    const-string/jumbo v6, "Keyguard widgets disabled by safe mode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 187
    const-string/jumbo v5, "KeyguardHostView"

    const-string/jumbo v6, "Keyguard widgets disabled by DPM"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4
    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 190
    const-string/jumbo v5, "KeyguardHostView"

    const-string/jumbo v6, "Keyguard secure camera disabled by DPM"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    return-void

    .line 164
    .local v4, "userContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 167
    move-object v4, p1

    .local v4, "userContext":Landroid/content/Context;
    goto :goto_1

    .line 153
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 709
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 710
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->keyguard_status_view:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 711
    .local v1, "statusWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 708
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 652
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 651
    :cond_1
    :goto_1
    return-void

    .line 653
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 654
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/android/keyguard/R$layout;->keyguard_add_widget:I

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "addWidget":Landroid/view/View;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v5}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 656
    sget v4, Lcom/android/keyguard/R$id;->keyguard_add_widget_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, "addWidgetButton":Landroid/view/View;
    new-instance v4, Lcom/android/keyguard/KeyguardHostView$6;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardHostView$6;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 669
    .end local v0    # "addWidget":Landroid/view/View;
    .end local v1    # "addWidgetButton":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    .line 670
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->kg_enable_camera_default_widget:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 669
    if-eqz v4, :cond_1

    .line 671
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 672
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v6

    .line 671
    invoke-static {v4, v5, v6}, Lcom/android/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 673
    .local v2, "cameraWidget":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 674
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    goto :goto_1
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .param p1, "appId"    # I
    .param p2, "pageIndex"    # I
    .param p3, "updateDbIfFailed"    # Z

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 595
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 597
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 598
    const/4 v2, 0x1

    return v2

    .line 600
    .end local v1    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_0
    if-eqz p3, :cond_1

    .line 601
    const-string/jumbo v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    const-string/jumbo v4, ", deleting"

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 606
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private addWidgetsFromSettings()V
    .locals 2

    .prologue
    .line 715
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 717
    return-void

    .line 720
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v0

    .line 714
    .local v0, "insertionIndex":I
    return-void
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 744
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    .line 745
    sget v4, Lcom/android/keyguard/R$string;->widget_default_package_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 746
    sget v5, Lcom/android/keyguard/R$string;->widget_default_class_name:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 744
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .local v1, "defaultAppWidget":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 752
    .local v0, "appWidgetId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    return v0

    .line 753
    :catch_0
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 756
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v2, :cond_0

    .line 417
    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 417
    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 204
    :cond_1
    return-void
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 6

    .prologue
    .line 1023
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1024
    .local v3, "um":Landroid/os/UserManager;
    if-nez v3, :cond_0

    .line 1025
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1026
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1027
    const-string/jumbo v4, "KeyguardHostView"

    const-string/jumbo v5, "user service is null."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    return-void

    .line 1032
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1033
    return-void

    .line 1036
    :cond_1
    sget v4, Lcom/android/keyguard/R$id;->keyguard_user_selector:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1037
    .local v1, "multiUserView":Landroid/view/View;
    if-nez v1, :cond_3

    .line 1038
    sget-boolean v4, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KeyguardHostView"

    const-string/jumbo v5, "can\'t find user_selector in layout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_2
    return-void

    .line 1042
    :cond_3
    instance-of v4, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v4, :cond_4

    .line 1043
    check-cast v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .end local v1    # "multiUserView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 1044
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1045
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1046
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$9;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 1071
    .local v0, "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    .line 1022
    .end local v0    # "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    :goto_0
    return-void

    .line 1073
    .restart local v1    # "multiUserView":Landroid/view/View;
    :cond_4
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 1074
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1075
    if-nez v1, :cond_5

    .line 1076
    const-string/jumbo v4, "KeyguardHostView"

    const-string/jumbo v5, "could not find the user_selector."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1078
    :cond_5
    const-string/jumbo v4, "KeyguardHostView"

    const-string/jumbo v5, "user_selector is the wrong type."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)Z
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 959
    sget v5, Lcom/android/keyguard/R$id;->keyguard_transport_control:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v3, 0x1

    .line 960
    .local v3, "showing":Z
    :goto_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    const/4 v4, 0x1

    .line 961
    .local v4, "visible":Z
    :goto_1
    if-ne p1, v8, :cond_5

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v2

    .line 962
    :goto_2
    if-nez v3, :cond_7

    if-nez v4, :cond_0

    if-eqz v2, :cond_7

    .line 964
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 965
    .local v0, "lastWidget":I
    const/4 v1, 0x0

    .line 966
    .local v1, "position":I
    if-ltz v0, :cond_1

    .line 967
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 968
    move v1, v0

    .line 970
    :cond_1
    :goto_3
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "KeyguardHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add transport at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 972
    return v8

    .line 959
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    .end local v3    # "showing":Z
    .end local v4    # "visible":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "showing":Z
    goto :goto_0

    .line 960
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "visible":Z
    goto :goto_1

    .line 961
    :cond_5
    const/4 v2, 0x0

    .local v2, "shouldBeVisible":Z
    goto :goto_2

    .line 968
    .end local v2    # "shouldBeVisible":Z
    .restart local v0    # "lastWidget":I
    .restart local v1    # "position":I
    :cond_6
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 973
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :cond_7
    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    .line 974
    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "KeyguardHostView"

    const-string/jumbo v6, "remove transport"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 976
    iput-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 977
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 979
    :cond_9
    return v7
.end method

.method private findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 984
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CameraWidgetFrame;

    return-object v1

    .line 983
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 988
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppropriateWidgetPage(I)I
    .locals 6
    .param p1, "musicTransportState"    # I

    .prologue
    const/4 v5, 0x0

    .line 997
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 998
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 999
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1000
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    .line 1001
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1000
    if-ne v3, v4, :cond_0

    .line 1002
    return v1

    .line 999
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1008
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 1009
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KeyguardHostView"

    const-string/jumbo v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    return v3

    .line 1014
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1015
    .local v2, "rightMost":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1016
    add-int/lit8 v2, v2, -0x1

    .line 1018
    :cond_5
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_6
    return v2
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    const/4 v2, 0x0

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "disabledFeatures":I
    if-eqz p1, :cond_0

    .line 401
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 402
    .local v0, "currentUser":I
    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 404
    .end local v0    # "currentUser":I
    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 197
    .local v0, "dcs":Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 200
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, ", pbstate="

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void

    .line 198
    :cond_1
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    sget v3, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, "addWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 700
    .local v1, "insertionIndex":I
    if-gez v1, :cond_0

    .line 701
    const/4 v1, 0x0

    .line 705
    :goto_0
    return v1

    .line 703
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 687
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_transport_control_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 686
    check-cast v1, Lcom/android/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 688
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    new-instance v2, Lcom/android/keyguard/KeyguardHostView$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$7;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView;->setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V

    .line 694
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getWidgetPosition(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 281
    .local v0, "appWidgetContainer":Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 282
    .local v1, "children":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 283
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, "content":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 285
    return v3

    .line 286
    :cond_0
    if-nez v2, :cond_1

    .line 288
    const-string/jumbo v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "content":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .param p0, "playbackState"    # I

    .prologue
    .line 252
    packed-switch p0, :pswitch_data_0

    .line 261
    const/4 v0, 0x0

    return v0

    .line 259
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private maybeEnableAddButton()V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 642
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 643
    .local v2, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 644
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    add-int/lit8 v2, v2, 0x1

    .line 643
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_1
    return v2
.end method

.method private setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 897
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 900
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 901
    .local v0, "cameraWidget":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setInsets(Landroid/graphics/Rect;)V

    .line 895
    :cond_2
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAppropriateWidgetPage()V
    .locals 4

    .prologue
    .line 920
    iget v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 921
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)Z

    move-result v2

    .line 922
    .local v2, "transportAdded":Z
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 923
    .local v0, "pageToShow":I
    if-nez v2, :cond_1

    .line 924
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 928
    new-instance v3, Lcom/android/keyguard/KeyguardHostView$8;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$8;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateAndAddWidgets()V
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 344
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 345
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->maybeEnableAddButton()V

    .line 347
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setEnableChallengeDragging(Z)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 342
    return-void

    .line 351
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private widgetsDisabled()Z
    .locals 3

    .prologue
    .line 408
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 410
    .local v1, "disabledByLowRamDevice":Z
    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 412
    .local v0, "disabledByDpm":Z
    :goto_0
    if-nez v1, :cond_1

    .end local v0    # "disabledByDpm":Z
    :goto_1
    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disabledByDpm":Z
    goto :goto_0

    .line 412
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "pageIndex"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 440
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 9

    .prologue
    .line 762
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 763
    .local v2, "childCount":I
    const/4 v6, 0x0

    .line 764
    .local v6, "widgetPageExists":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 765
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 766
    const/4 v6, 0x1

    .line 770
    :cond_0
    if-nez v6, :cond_3

    .line 771
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 773
    .local v4, "insertPageIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    .line 775
    .local v5, "userAddedWidgetsEnabled":Z
    :goto_1
    const/4 v0, 0x0

    .line 777
    .local v0, "addedDefaultAppWidget":Z
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_1

    .line 778
    if-eqz v5, :cond_1

    .line 779
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 780
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_1

    .line 781
    const/4 v7, 0x1

    invoke-direct {p0, v1, v4, v7}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 805
    .end local v0    # "addedDefaultAppWidget":Z
    .end local v1    # "appWidgetId":I
    :cond_1
    if-nez v0, :cond_2

    .line 806
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 810
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 811
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 812
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 811
    invoke-virtual {v7, v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    .line 761
    .end local v4    # "insertPageIndex":I
    .end local v5    # "userAddedWidgetsEnabled":Z
    :cond_3
    return-void

    .line 764
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 773
    .restart local v4    # "insertPageIndex":I
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "userAddedWidgetsEnabled":Z
    goto :goto_1
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1088
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1089
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 1090
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeAllViews()V

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 1084
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 589
    return-void
.end method

.method public dismiss(Z)Z
    .locals 8
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    .line 374
    .local v0, "finished":Z
    if-nez v0, :cond_1

    .line 375
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 379
    .local v3, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$bool;->kg_sim_puk_account_full_screen:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 380
    .local v1, "isFullScreen":Z
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_0

    .line 381
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_2

    .line 380
    :cond_0
    const/4 v2, 0x1

    .line 383
    .local v2, "isSimOrAccount":Z
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 384
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/16 v4, 0x8

    .line 383
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 387
    if-eqz v2, :cond_5

    .line 388
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v4

    const/high16 v7, 0x2000000

    or-int/2addr v4, v7

    .line 387
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 391
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v4, :cond_1

    .line 392
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 395
    .end local v1    # "isFullScreen":Z
    .end local v2    # "isSimOrAccount":Z
    .end local v3    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1
    return v0

    .line 382
    .restart local v1    # "isFullScreen":Z
    .restart local v3    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "isSimOrAccount":Z
    goto :goto_0

    .end local v2    # "isSimOrAccount":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isSimOrAccount":Z
    goto :goto_0

    :cond_4
    move v4, v5

    .line 384
    goto :goto_1

    .line 389
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v4

    const v7, -0x2000001

    and-int/2addr v4, v7

    goto :goto_2

    :cond_6
    move v5, v6

    .line 392
    goto :goto_3
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    return-wide v0

    .line 508
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 427
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 434
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onFinishInflate()V

    .line 300
    sget v2, Lcom/android/keyguard/R$id;->keyguard_widget_pager_delete_target:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "deleteDropTarget":Landroid/view/View;
    sget v2, Lcom/android/keyguard/R$id;->app_widget_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 302
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 304
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 305
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 307
    sget v2, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    .line 308
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 315
    sget v2, Lcom/android/keyguard/R$id;->multi_pane_challenge:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout;

    .line 314
    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    .line 316
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    .line 318
    .local v0, "challenge":Lcom/android/keyguard/ChallengeLayout;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 319
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 320
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 321
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V

    .line 323
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    .line 325
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    .line 338
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 295
    return-void

    .line 317
    .end local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    .restart local v0    # "challenge":Lcom/android/keyguard/ChallengeLayout;
    goto :goto_0

    .line 330
    :cond_2
    new-instance v2, Lcom/android/keyguard/KeyguardHostView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$5;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 576
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onPause()V

    .line 579
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 580
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 584
    .local v0, "cameraPage":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 575
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 876
    instance-of v1, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_0

    .line 877
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 878
    return-void

    :cond_0
    move-object v0, p1

    .line 880
    check-cast v0, Lcom/android/keyguard/KeyguardHostView$SavedState;

    .line 881
    .local v0, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 882
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 883
    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 884
    iget-object v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 885
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 875
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 567
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 862
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 864
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 866
    .local v1, "ss":Lcom/android/keyguard/KeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_2

    .line 867
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 868
    .local v0, "showing":Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 869
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 870
    iget-object v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 871
    return-object v1

    .line 867
    .end local v0    # "showing":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showing":Z
    goto :goto_0

    .line 866
    .end local v0    # "showing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showing":Z
    goto :goto_0

    .line 868
    :cond_3
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 271
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 273
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    .end local v0    # "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 276
    return v0

    .line 274
    .restart local v0    # "result":Z
    :cond_0
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 495
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 906
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 907
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string/jumbo v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 910
    sget v1, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 911
    .local v0, "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 912
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 913
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 915
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 905
    .end local v0    # "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 907
    :cond_3
    const-string/jumbo v1, "unfocused"

    goto :goto_0
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    .line 421
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 489
    :cond_0
    return-void
.end method
