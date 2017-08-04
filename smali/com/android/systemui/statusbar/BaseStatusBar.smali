.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$1;,
        Lcom/android/systemui/statusbar/BaseStatusBar$2;,
        Lcom/android/systemui/statusbar/BaseStatusBar$3;,
        Lcom/android/systemui/statusbar/BaseStatusBar$4;,
        Lcom/android/systemui/statusbar/BaseStatusBar$5;,
        Lcom/android/systemui/statusbar/BaseStatusBar$6;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public fakeNotiEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mClickedFakeNotiPackageName:Ljava/lang/String;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field protected mEnablePullDownOnKeyguard:Z

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field protected mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mFontScale:F

.field protected mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field public mIsAppLockEnabled:Z

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field mMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field protected mScreenOn:Ljava/lang/Boolean;

.field protected mScreenOnFromKeyguard:Z

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowFilterPanel:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

.field protected mShowLockscreenNotifications:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/service/notification/NotificationListenerService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateEnablePullDownOnKeyguardSetting()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 215
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 240
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 253
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 273
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    .line 325
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 345
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 356
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 470
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 511
    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1369
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 153
    return-void
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 3
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3045
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3046
    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 3045
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3046
    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3490
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3493
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3494
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3495
    .local v0, "appName":Ljava/lang/String;
    return-object v0

    .line 3496
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 3498
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3500
    const/4 v4, 0x0

    return-object v4
.end method

.method private getNotiCounts(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3454
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3455
    .local v0, "N":I
    const/4 v1, 0x0

    .line 3457
    .local v1, "counts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 3458
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 3459
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-eqz v4, :cond_1

    .line 3457
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3464
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    if-nez v1, :cond_3

    .line 3465
    const/4 v1, 0x1

    .line 3470
    :cond_3
    return v1
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 22
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1064
    const v18, 0x7f0f0260

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    .line 1065
    .local v17, "stub":Landroid/view/ViewStub;
    if-eqz v17, :cond_0

    .line 1066
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1068
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    .line 1070
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1069
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1071
    .local v14, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const v19, 0x7f0f0003

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 1073
    const v18, 0x7f0f01bd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1076
    .local v10, "guts":Landroid/view/View;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1075
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->checkSystemPush(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1076
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    .line 1077
    const-string/jumbo v19, "android.originalPackageName"

    .line 1076
    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1079
    .local v12, "pkg":Ljava/lang/String;
    :goto_0
    move-object v8, v12

    .line 1080
    .local v8, "appname":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1081
    .local v13, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v6, -0x1

    .line 1084
    .local v6, "appUid":I
    const/16 v18, 0x2200

    .line 1083
    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1086
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_1

    .line 1087
    invoke-virtual {v14, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1088
    invoke-virtual {v14, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1089
    .local v13, "pkgicon":Landroid/graphics/drawable/Drawable;
    iget v6, v11, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    const v18, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    const v18, 0x7f0f01c1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/DateTimeView;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1097
    const v18, 0x7f0f01bf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    const v18, 0x7f0f01be

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1100
    .local v16, "settingsButton":Landroid/view/View;
    const v18, 0x7f0f01c2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1101
    .local v5, "appSettingsButton":Landroid/view/View;
    if-ltz v6, :cond_3

    .line 1102
    move v7, v6

    .line 1104
    .local v7, "appUidF":I
    move-object v4, v8

    .line 1105
    .local v4, "appNameF":Ljava/lang/String;
    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v7, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    .end local v4    # "appNameF":Ljava/lang/String;
    .end local v7    # "appUidF":I
    :goto_2
    return-void

    .line 1077
    .end local v5    # "appSettingsButton":Landroid/view/View;
    .end local v6    # "appUid":I
    .end local v8    # "appname":Ljava/lang/String;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v16    # "settingsButton":Landroid/view/View;
    :cond_2
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 1091
    .restart local v6    # "appUid":I
    .restart local v8    # "appname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1093
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13    # "pkgicon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 1136
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "appSettingsButton":Landroid/view/View;
    .restart local v16    # "settingsButton":Landroid/view/View;
    :cond_3
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1565
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 54
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 1574
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1573
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v43

    .line 1576
    .local v43, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v42, v0

    .line 1577
    .local v42, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v48, v0

    .line 1578
    .local v48, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    .line 1579
    .local v20, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v15, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1581
    .local v15, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_0

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b038f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    .line 1584
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v15, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1587
    :cond_0
    if-nez v20, :cond_1

    .line 1588
    const/4 v4, 0x0

    return v4

    .line 1591
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1592
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "publicNotification: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_2
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v44, v0

    .line 1601
    .local v44, "publicNotification":Landroid/app/Notification;
    const/16 v30, 0x0

    .line 1602
    .local v30, "hasUserChangedExpansion":Z
    const/16 v51, 0x0

    .line 1603
    .local v51, "userExpanded":Z
    const/16 v52, 0x0

    .line 1605
    .local v52, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_17

    .line 1606
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v47, v0

    .line 1607
    .local v47, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v30

    .line 1608
    .local v30, "hasUserChangedExpansion":Z
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v51

    .line 1609
    .local v51, "userExpanded":Z
    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v52

    .line 1610
    .local v52, "userLocked":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 1611
    if-eqz v30, :cond_3

    .line 1612
    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1625
    .end local v30    # "hasUserChangedExpansion":Z
    .end local v51    # "userExpanded":Z
    .end local v52    # "userLocked":Z
    :cond_3
    :goto_0
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f0f0003

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 1629
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 1630
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v53

    .line 1631
    .local v53, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1632
    const v5, 0x7f0901ce

    .line 1631
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1638
    const v4, 0x7f0f025d

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1640
    .local v28, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const v4, 0x7f0f025e

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1642
    .local v29, "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v4, 0x60000

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1650
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    .line 1651
    .local v18, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v4, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    move-object/from16 v34, v0

    .line 1654
    .local v34, "iconIntent":Landroid/app/PendingIntent;
    if-eqz v18, :cond_18

    .line 1655
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v41

    .line 1657
    .local v41, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1663
    .end local v41    # "listener":Landroid/view/View$OnClickListener;
    :goto_1
    sget v33, Lcom/flyme/internal/R$id;->icon:I

    .line 1664
    .local v33, "iconId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1665
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_19

    .line 1674
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1695
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->isNotificationReplyEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->supportReply(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1696
    if-nez v15, :cond_5

    .line 1697
    new-instance v15, Landroid/widget/RemoteViews;

    .end local v15    # "bigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04008b

    invoke-direct {v15, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1698
    .restart local v15    # "bigContentView":Landroid/widget/RemoteViews;
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$layout;->notification_action_list:I

    invoke-direct {v13, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1699
    .local v13, "actions":Landroid/widget/RemoteViews;
    const v4, 0x7f0f01d7

    move-object/from16 v0, v20

    invoke-virtual {v15, v4, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1700
    const v4, 0x7f0f01d7

    invoke-virtual {v15, v4, v13}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1702
    .end local v13    # "actions":Landroid/widget/RemoteViews;
    :cond_5
    const/4 v10, 0x0

    .line 1703
    .local v10, "N":I
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_6

    .line 1704
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v10, v4

    .line 1706
    :cond_6
    const/4 v4, 0x3

    if-ge v10, v4, :cond_a

    .line 1708
    sget v4, Lcom/flyme/internal/R$id;->actions:I

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1709
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 1710
    sget v5, Lcom/flyme/internal/R$layout;->mz_title_only_notification_action:I

    .line 1709
    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1711
    .local v17, "button":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1712
    .local v12, "actionTitle":Ljava/lang/String;
    sget v4, Lcom/flyme/internal/R$id;->action0:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1713
    sget v4, Lcom/flyme/internal/R$id;->action0:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1714
    if-eqz p3, :cond_7

    .line 1715
    sget v4, Lcom/flyme/internal/R$id;->action0:I

    const-string/jumbo v5, "setBackgroundColor"

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1717
    :cond_7
    sget v4, Lcom/flyme/internal/R$id;->actions:I

    move-object/from16 v0, v17

    invoke-virtual {v15, v4, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1720
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v4, "com.flyme.quickreply.action.main"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "flyme.headsup"

    move/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1722
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_8

    .line 1723
    const-string/jumbo v4, "flyme.replyIntent"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1725
    :cond_8
    const-string/jumbo v4, "flyme.contentIntent"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getData(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1727
    const-string/jumbo v4, "flyme.extraData"

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->getData(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1729
    :cond_9
    const-string/jumbo v4, "flyme.replyContentView"

    invoke-virtual {v6, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1730
    const-string/jumbo v4, "flyme.packageName"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    const-string/jumbo v4, "flyme.tag"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1732
    const-string/jumbo v4, "flyme.id"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1733
    const-string/jumbo v4, "flyme.userId"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 1734
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1736
    .local v11, "actionIntent":Landroid/app/PendingIntent;
    sget v4, Lcom/flyme/internal/R$id;->action0:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1742
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "N":I
    .end local v11    # "actionIntent":Landroid/app/PendingIntent;
    .end local v12    # "actionTitle":Ljava/lang/String;
    .end local v17    # "button":Landroid/widget/RemoteViews;
    :cond_a
    const/16 v21, 0x0

    .line 1743
    .local v21, "contentViewLocal":Landroid/view/View;
    const/16 v16, 0x0

    .line 1745
    .local v16, "bigContentViewLocal":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    if-nez v4, :cond_1c

    const/16 v23, 0x0

    .line 1746
    :goto_3
    if-eqz v23, :cond_1d

    const/16 v22, 0x1

    .line 1749
    .local v22, "dynamicNotiFlag":Z
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1750
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1749
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v21

    .line 1752
    .local v21, "contentViewLocal":Landroid/view/View;
    if-eqz v22, :cond_b

    .line 1753
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification;->dealwithContentView(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Z

    .line 1754
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setContent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V

    .line 1757
    :cond_b
    if-eqz v15, :cond_d

    .line 1758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1759
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1758
    move-object/from16 v0, v28

    invoke-virtual {v15, v4, v0, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v16

    .line 1761
    .local v16, "bigContentViewLocal":Landroid/view/View;
    if-eqz v22, :cond_d

    .line 1762
    if-eqz p3, :cond_1e

    .line 1763
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification;->dealwithHeadsupcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-result-object v24

    .line 1764
    .local v24, "dynamicType":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    sget-object v4, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_c

    .line 1765
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "flyme.dynamic.transparent"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1767
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setHeadsupcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V

    .line 1776
    .end local v16    # "bigContentViewLocal":Landroid/view/View;
    .end local v24    # "dynamicType":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    :cond_d
    :goto_5
    if-eqz v22, :cond_e

    .line 1777
    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getContent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getHeadsupcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual/range {v23 .. v23}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getBigcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v4

    if-nez v4, :cond_e

    .line 1778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->removeModel(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :cond_e
    if-eqz v21, :cond_f

    .line 1792
    sget v4, Lcom/flyme/internal/R$id;->icon:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    .line 1834
    .local v37, "iconOneU":Landroid/widget/ImageView;
    if-eqz v37, :cond_1f

    if-eqz v34, :cond_1f

    .line 1835
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeIconClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    move-result-object v36

    .line 1836
    .local v36, "iconListener":Landroid/view/View$OnClickListener;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iconIntent = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1838
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v19

    .line 1839
    .local v19, "contentListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1850
    .end local v19    # "contentListener":Landroid/view/View$OnClickListener;
    .end local v36    # "iconListener":Landroid/view/View$OnClickListener;
    :goto_6
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1851
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1853
    .end local v37    # "iconOneU":Landroid/widget/ImageView;
    :cond_f
    if-eqz v16, :cond_11

    .line 1856
    sget v4, Lcom/flyme/internal/R$id;->icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    .line 1862
    .local v35, "iconLarge":Landroid/widget/ImageView;
    if-eqz v35, :cond_10

    .line 1863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1864
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_21

    .line 1873
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1905
    :cond_10
    :goto_7
    if-eqz v35, :cond_24

    if-eqz v34, :cond_24

    .line 1906
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeIconClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    move-result-object v36

    .line 1907
    .restart local v36    # "iconListener":Landroid/view/View$OnClickListener;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iconIntent = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-virtual/range {v35 .. v36}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1909
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v19

    .line 1910
    .restart local v19    # "contentListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1921
    .end local v19    # "contentListener":Landroid/view/View$OnClickListener;
    .end local v36    # "iconListener":Landroid/view/View$OnClickListener;
    :goto_8
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1922
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 1926
    .end local v35    # "iconLarge":Landroid/widget/ImageView;
    :cond_11
    const/16 v45, 0x0

    .line 1927
    .local v45, "publicViewLocal":Landroid/view/View;
    if-eqz v44, :cond_12

    .line 1929
    :try_start_1
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1930
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1929
    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0, v7}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v45

    .line 1932
    .local v45, "publicViewLocal":Landroid/view/View;
    if-eqz v45, :cond_12

    .line 1933
    const/4 v4, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1934
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1946
    .end local v45    # "publicViewLocal":Landroid/view/View;
    :cond_12
    :goto_9
    :try_start_2
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v40

    .line 1947
    .local v40, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v40

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1953
    .end local v40    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_a
    if-nez v45, :cond_15

    .line 1955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1957
    sget v5, Lcom/flyme/internal/R$layout;->notification_template_base:I

    .line 1958
    const/4 v7, 0x0

    .line 1955
    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    .line 1959
    .restart local v45    # "publicViewLocal":Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1960
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1962
    sget v4, Lcom/flyme/internal/R$id;->title:I

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 1965
    .local v50, "title":Landroid/widget/TextView;
    :try_start_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1964
    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1970
    :goto_b
    sget v4, Lcom/flyme/internal/R$id;->icon:I

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    .line 2012
    .local v31, "icon":Landroid/widget/ImageView;
    if-eqz v31, :cond_13

    .line 2013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2014
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_26

    .line 2015
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2016
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2055
    :cond_13
    :goto_c
    sget v4, Lcom/flyme/internal/R$id;->text:I

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 2056
    .local v49, "text":Landroid/widget/TextView;
    if-eqz v49, :cond_14

    .line 2057
    const v4, 0x7f09027c

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2069
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2079
    .end local v31    # "icon":Landroid/widget/ImageView;
    .end local v45    # "publicViewLocal":Landroid/view/View;
    .end local v49    # "text":Landroid/widget/TextView;
    .end local v50    # "title":Landroid/widget/TextView;
    :cond_15
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2080
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 2081
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 2082
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2083
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 2084
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 2086
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2089
    if-eqz v30, :cond_16

    .line 2092
    move-object/from16 v0, v47

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2094
    :cond_16
    move-object/from16 v0, v47

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 2095
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2096
    const/4 v4, 0x1

    return v4

    .line 1616
    .end local v18    # "contentIntent":Landroid/app/PendingIntent;
    .end local v21    # "contentViewLocal":Landroid/view/View;
    .end local v22    # "dynamicNotiFlag":Z
    .end local v28    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v29    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v33    # "iconId":I
    .end local v34    # "iconIntent":Landroid/app/PendingIntent;
    .end local v47    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v53    # "vetoButton":Landroid/view/View;
    .local v30, "hasUserChangedExpansion":Z
    .local v51, "userExpanded":Z
    .local v52, "userLocked":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1617
    const-string/jumbo v5, "layout_inflater"

    .line 1616
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/LayoutInflater;

    .line 1618
    .local v39, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400bd

    .line 1619
    const/4 v5, 0x0

    .line 1618
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    check-cast v47, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1620
    .restart local v47    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1659
    .end local v30    # "hasUserChangedExpansion":Z
    .end local v39    # "inflater":Landroid/view/LayoutInflater;
    .end local v51    # "userExpanded":Z
    .end local v52    # "userLocked":Z
    .restart local v18    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v28    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v29    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v34    # "iconIntent":Landroid/app/PendingIntent;
    .restart local v53    # "vetoButton":Landroid/view/View;
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1680
    .restart local v33    # "iconId":I
    :cond_19
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    if-eqz v4, :cond_1a

    .line 1681
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 1682
    :cond_1a
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 1683
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 1687
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1688
    .local v14, "appIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_4

    instance-of v4, v14, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    .line 1689
    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1690
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1745
    .local v16, "bigContentViewLocal":Landroid/view/View;
    .local v21, "contentViewLocal":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->getModel(Landroid/service/notification/StatusBarNotification;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    move-result-object v23

    .local v23, "dynamicNotiModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    goto/16 :goto_3

    .line 1746
    .end local v23    # "dynamicNotiModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    :cond_1d
    const/16 v22, 0x0

    .restart local v22    # "dynamicNotiFlag":Z
    goto/16 :goto_4

    .line 1769
    .local v16, "bigContentViewLocal":Landroid/view/View;
    .local v21, "contentViewLocal":Landroid/view/View;
    :cond_1e
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification;->dealwithBigcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    .line 1770
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setBigcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 1783
    .end local v16    # "bigContentViewLocal":Landroid/view/View;
    .end local v21    # "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v26

    .line 1784
    .local v26, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1785
    .local v38, "ident":Ljava/lang/String;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t inflate view for notification "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1786
    const/4 v4, 0x0

    return v4

    .line 1841
    .end local v26    # "e":Ljava/lang/RuntimeException;
    .end local v38    # "ident":Ljava/lang/String;
    .restart local v21    # "contentViewLocal":Landroid/view/View;
    .restart local v37    # "iconOneU":Landroid/widget/ImageView;
    :cond_1f
    if-eqz v18, :cond_20

    .line 1842
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v41

    .line 1843
    .restart local v41    # "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 1845
    .end local v41    # "listener":Landroid/view/View$OnClickListener;
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 1879
    .end local v37    # "iconOneU":Landroid/widget/ImageView;
    .restart local v35    # "iconLarge":Landroid/widget/ImageView;
    :cond_21
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    if-eqz v4, :cond_22

    .line 1880
    const/16 v46, 0x0

    .line 1882
    .local v46, "remoteResource":Landroid/content/res/Resources;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v46

    .line 1886
    .end local v46    # "remoteResource":Landroid/content/res/Resources;
    :goto_d
    if-eqz v46, :cond_10

    .line 1888
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    .line 1887
    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 1889
    .local v32, "iconDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1883
    .end local v32    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v46    # "remoteResource":Landroid/content/res/Resources;
    :catch_1
    move-exception v25

    .line 1884
    .local v25, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 1891
    .end local v25    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "remoteResource":Landroid/content/res/Resources;
    :cond_22
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    .line 1892
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 1896
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1897
    .restart local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1898
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1912
    .end local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_24
    if-eqz v18, :cond_25

    .line 1913
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v41

    .line 1914
    .restart local v41    # "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 1916
    .end local v41    # "listener":Landroid/view/View$OnClickListener;
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 1937
    .end local v35    # "iconLarge":Landroid/widget/ImageView;
    :catch_2
    move-exception v26

    .line 1938
    .restart local v26    # "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1939
    .restart local v38    # "ident":Ljava/lang/String;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t inflate public view for notification "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    const/16 v45, 0x0

    .local v45, "publicViewLocal":Landroid/view/View;
    goto/16 :goto_9

    .line 1948
    .end local v26    # "e":Ljava/lang/RuntimeException;
    .end local v38    # "ident":Ljava/lang/String;
    .end local v45    # "publicViewLocal":Landroid/view/View;
    :catch_3
    move-exception v27

    .line 1949
    .local v27, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed looking up ApplicationInfo for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1966
    .end local v27    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v45, "publicViewLocal":Landroid/view/View;
    .restart local v50    # "title":Landroid/widget/TextView;
    :catch_4
    move-exception v25

    .line 1967
    .restart local v25    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 2022
    .end local v25    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v31    # "icon":Landroid/widget/ImageView;
    :cond_26
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    if-eqz v4, :cond_27

    .line 2023
    const/16 v46, 0x0

    .line 2025
    .restart local v46    # "remoteResource":Landroid/content/res/Resources;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v46

    .line 2029
    .end local v46    # "remoteResource":Landroid/content/res/Resources;
    :goto_e
    if-eqz v46, :cond_13

    .line 2031
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v4, v4, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2030
    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 2032
    .restart local v32    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 2026
    .end local v32    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v46    # "remoteResource":Landroid/content/res/Resources;
    :catch_5
    move-exception v25

    .line 2027
    .restart local v25    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e

    .line 2034
    .end local v25    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "remoteResource":Landroid/content/res/Resources;
    :cond_27
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_28

    .line 2035
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v4, v4, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_c

    .line 2037
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2038
    .restart local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 2042
    .end local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2043
    .restart local v14    # "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1359
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setUser(I)V

    .line 892
    :cond_0
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 3909
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3910
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3911
    const-string/jumbo v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3912
    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3913
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3914
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3915
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 3908
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 1035
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;)V

    .line 1060
    const/4 v2, 0x0

    .line 1035
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1033
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 678
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 680
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 682
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    .line 677
    return-void
.end method

.method private updateEnablePullDownOnKeyguardSetting()V
    .locals 5

    .prologue
    .line 3927
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3928
    const-string/jumbo v2, "lockscreen_pull_notificationbar"

    .line 3930
    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 3929
    const/4 v4, 0x1

    .line 3927
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3931
    .local v0, "enable":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setEnablePullDownOnKeyguard(Z)V

    .line 3926
    return-void

    .line 3927
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2968
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2967
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2542
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2543
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 2542
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 2547
    .local v3, "show":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2548
    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    .line 2547
    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 2549
    .local v2, "dpmFlags":I
    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_2

    const/4 v0, 0x1

    .line 2553
    .local v0, "allowedByDpm":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2552
    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    .line 2555
    .local v1, "disableForLockscreenTheme":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateLockscreenNotificationSetting , show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2556
    const-string/jumbo v7, ",dpmFlags="

    .line 2555
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2556
    const-string/jumbo v7, ",allowedByDpm="

    .line 2555
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2554
    invoke-static {v6}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 2559
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 2537
    return-void

    .line 2542
    .end local v0    # "allowedByDpm":Z
    .end local v1    # "disableForLockscreenTheme":Z
    .end local v2    # "dpmFlags":I
    .end local v3    # "show":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "show":Z
    goto :goto_0

    .line 2549
    .restart local v2    # "dpmFlags":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowedByDpm":Z
    goto :goto_1

    .restart local v1    # "disableForLockscreenTheme":Z
    :cond_3
    move v4, v5

    .line 2559
    goto :goto_2
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2973
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2974
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_2

    .line 2975
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2977
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2978
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_3

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2982
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2983
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2984
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    .line 2985
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2984
    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2987
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2988
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2991
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2992
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_4

    .line 2993
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 2995
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2999
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 3000
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 3001
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 2972
    return-void

    .line 2976
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "publicVersion":Landroid/app/Notification;
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 2979
    .restart local v5    # "publicVersion":Landroid/app/Notification;
    :cond_3
    const/4 v4, 0x0

    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    goto :goto_1

    .line 2997
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    :cond_4
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private updateNotificationViewsWithoutReapply(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    const/4 v7, 0x0

    .line 3006
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3007
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_0

    .line 3008
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3010
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3011
    .local v5, "publicVersion":Landroid/app/Notification;
    if-eqz v5, :cond_1

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3025
    :goto_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3026
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 3027
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    .line 3029
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3033
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 3034
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 3035
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 3005
    return-void

    .line 3009
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "publicVersion":Landroid/app/Notification;
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 3012
    .restart local v5    # "publicVersion":Landroid/app/Notification;
    :cond_1
    const/4 v4, 0x0

    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    goto :goto_1

    .line 3031
    .end local v4    # "publicContentView":Landroid/widget/RemoteViews;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2399
    if-nez p1, :cond_0

    .line 2400
    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2398
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2199
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 984
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020373

    if-eq v1, v2, :cond_2

    .line 986
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 987
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_0

    .line 988
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 989
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1002
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 1003
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_4

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setColorFilter(Ljava/lang/Integer;)V

    .line 982
    :cond_1
    :goto_1
    return-void

    .line 993
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 994
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_3

    .line 996
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 997
    const v3, 0x7f0a00e7

    .line 996
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 995
    .end local v0    # "color":I
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 1006
    :cond_4
    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setColorFilter(Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public areThereNotiForPkg(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3862
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3864
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3865
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 3866
    .local v1, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-eqz v3, :cond_1

    .line 3864
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3867
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 3870
    .end local v1    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1291
    const/16 v0, 0x3ff

    .line 1292
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1290
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 1417
    :cond_0
    return-void
.end method

.method public clearAllFakes()V
    .locals 9

    .prologue
    .line 3751
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3752
    .local v5, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->getFakeEntries()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3754
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3755
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->getFakeEntries()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3757
    .local v1, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v8, 0x7f0f025f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3758
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3759
    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3764
    .end local v1    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v6    # "vetoButton":Landroid/view/View;
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "fake$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3765
    .local v2, "fake":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    goto :goto_1

    .line 3750
    .end local v2    # "fake":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public clearRealNotisBehindFake(Ljava/lang/String;)V
    .locals 9
    .param p1, "fakePkg"    # Ljava/lang/String;

    .prologue
    .line 3619
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3621
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 3622
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v8, v0, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    .line 3623
    .local v4, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-eqz v7, :cond_1

    .line 3621
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3625
    :cond_1
    iget-object v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3626
    .local v2, "_pkg":Ljava/lang/String;
    iget-object v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 3627
    .local v3, "_tag":Ljava/lang/String;
    iget-object v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    .line 3633
    .local v1, "_id":I
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-interface {v7, v2, v3, v1, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3634
    :catch_0
    move-exception v5

    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 3618
    .end local v1    # "_id":I
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1355
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 17
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2310
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2311
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createNotificationViews(notification="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 2315
    .local v16, "n":Landroid/app/Notification;
    new-instance v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2315
    move-object/from16 v0, v16

    invoke-direct {v12, v3, v4, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2317
    .local v12, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2319
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 2320
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_1

    .line 2322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No small icon in notification from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2323
    const/4 v3, 0x0

    return-object v3

    .line 2325
    :cond_1
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2326
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 2327
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2329
    move-object/from16 v0, v16

    iget v6, v0, Landroid/app/Notification;->iconLevel:I

    .line 2330
    move-object/from16 v0, v16

    iget v7, v0, Landroid/app/Notification;->number:I

    .line 2331
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2325
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2334
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getMeizuCustomizedIcon(Ljava/lang/String;I)I

    move-result v11

    .line 2335
    .local v11, "iconId":I
    if-eqz v11, :cond_2

    .line 2336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 2340
    :cond_2
    invoke-virtual {v12, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2341
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " n.icon = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v6, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ic = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t create icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2343
    const/4 v3, 0x0

    return-object v3

    .line 2346
    :cond_3
    new-instance v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2347
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v13, v3, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 2348
    .local v13, "intercept":Z
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2350
    const/4 v3, 0x0

    return-object v3

    .line 2348
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    goto :goto_0

    .line 2352
    :cond_5
    if-eqz v13, :cond_6

    .line 2353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotificationFilter(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 2359
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 2361
    .local v14, "isEncrypt":Z
    if-eqz v14, :cond_8

    .line 2363
    const/4 v15, 0x0

    .line 2365
    .local v15, "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2366
    const/4 v15, 0x1

    .line 2370
    :cond_7
    if-eqz v15, :cond_9

    .line 2372
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeEntryCounts(Ljava/lang/String;)V

    .line 2395
    .end local v15    # "isFakeExist":Z
    :cond_8
    :goto_1
    return-object v9

    .line 2378
    .restart local v15    # "isFakeExist":Z
    :cond_9
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2379
    .local v10, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 2381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2383
    const/4 v3, 0x0

    return-object v3

    .line 2387
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/NotificationData;->addFake(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 3119
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v1, :cond_0

    .line 3120
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3122
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3124
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    :goto_0
    return-void

    .line 3125
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 930
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 929
    return-void
.end method

.method public dismissPopups()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1229
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1231
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    iput-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1233
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 1235
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 1236
    .local v2, "x":I
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 1238
    .local v3, "y":I
    int-to-float v4, v2

    const/4 v5, 0x0

    .line 1237
    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1239
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1240
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1241
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1253
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1228
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    return-void
.end method

.method public findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1143
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;
    .locals 1

    .prologue
    .line 3953
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnlyOneNotiForPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3654
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3655
    .local v0, "N":I
    const/4 v4, 0x0

    .line 3656
    .local v4, "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v1, 0x0

    .line 3658
    .local v1, "count":I
    const/4 v3, 0x0

    .end local v4    # "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 3659
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 3664
    .local v2, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const-string/jumbo v5, "com.android.dialer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3665
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.dialer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3666
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3665
    if-nez v5, :cond_0

    .line 3667
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.server.telecom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3665
    if-eqz v5, :cond_1

    .line 3668
    :cond_0
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-eqz v5, :cond_2

    .line 3658
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3669
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 3670
    move-object v4, v2

    .local v4, "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_1

    .line 3673
    .end local v4    # "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-nez v5, :cond_1

    .line 3674
    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mClickedFakeNotiPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3673
    if-eqz v5, :cond_1

    .line 3675
    add-int/lit8 v1, v1, 0x1

    .line 3676
    move-object v4, v2

    .restart local v4    # "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_1

    .line 3681
    .end local v2    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "onlyOne":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 3682
    return-object v4

    .line 3684
    :cond_5
    const/4 v5, 0x0

    return-object v5
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3137
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 3142
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3144
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 3143
    const/4 v5, 0x4

    .line 3142
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3149
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 3145
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;
    .locals 1

    .prologue
    .line 3947
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 9
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2273
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2275
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 2276
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    .line 2275
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    :goto_0
    return-void

    .line 2277
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 5
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 2251
    if-eqz p1, :cond_2

    .line 2255
    :try_start_0
    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2256
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2257
    .local v2, "notificationLoad":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 2249
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    :goto_1
    return-void

    .line 2255
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_0

    .line 2259
    .end local v0    # "clearNotificationEffects":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2261
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1269
    const/16 v0, 0x3fc

    .line 1270
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1271
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    .line 1272
    :goto_0
    if-eqz p2, :cond_1

    .line 1271
    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    return-void

    :cond_0
    move v3, v2

    .line 1271
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1272
    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1398
    :cond_0
    return-void
.end method

.method protected inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 22
    .param p1, "fakeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3280
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    .line 3282
    .local v15, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3284
    .local v10, "fakeNotiSource":Landroid/service/notification/StatusBarNotification;
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3285
    .local v9, "fakeBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3286
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 3288
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 3287
    const v20, 0x7f0900ca

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3293
    :goto_0
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 3295
    .local v11, "fakeNotification":Landroid/app/Notification;
    iget-object v4, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3296
    .local v4, "contentView":Landroid/widget/RemoteViews;
    if-nez v4, :cond_1

    .line 3297
    const/16 v18, 0x0

    return v18

    .line 3290
    .end local v4    # "contentView":Landroid/widget/RemoteViews;
    .end local v11    # "fakeNotification":Landroid/app/Notification;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 3291
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 3290
    const v20, 0x7f0900cb

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 3301
    .restart local v4    # "contentView":Landroid/widget/RemoteViews;
    .restart local v11    # "fakeNotification":Landroid/app/Notification;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 3302
    const-string/jumbo v19, "layout_inflater"

    .line 3301
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 3304
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f0400bd

    const/16 v19, 0x0

    .line 3303
    move/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3305
    .local v17, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 3306
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 3308
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 3314
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeVetoButton(Landroid/view/View;Ljava/lang/String;)V

    .line 3319
    const v18, 0x7f0f025d

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 3322
    .local v8, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const/4 v5, 0x0

    .line 3324
    .local v5, "contentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v8, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 3332
    .local v5, "contentViewLocal":Landroid/view/View;
    sget v18, Lcom/flyme/internal/R$id;->icon:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 3333
    .local v12, "icon":Landroid/widget/ImageView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3338
    if-eqz v12, :cond_2

    .line 3339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3340
    .local v3, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3346
    .end local v3    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;)V

    .line 3396
    .local v7, "encryptListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3398
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeEntryCounts(Ljava/lang/String;)V

    .line 3400
    if-eqz v5, :cond_3

    .line 3401
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 3402
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 3405
    :cond_3
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDrawingCacheEnabled(Z)V

    .line 3407
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 3408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const v19, 0x7f0f0003

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 3410
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3411
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 3412
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 3413
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 3414
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 3415
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 3417
    const/16 v18, 0x1

    return v18

    .line 3325
    .end local v7    # "encryptListener":Landroid/view/View$OnClickListener;
    .end local v12    # "icon":Landroid/widget/ImageView;
    .local v5, "contentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 3326
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3327
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    .line 3326
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3328
    .local v13, "ident":Ljava/lang/String;
    const-string/jumbo v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "couldn\'t inflate view for notification "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3329
    const/16 v18, 0x0

    return v18
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1569
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 3115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 915
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFakeClearable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3568
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 3572
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3573
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 3574
    .local v1, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    if-eqz v3, :cond_1

    .line 3572
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3574
    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3575
    const/4 v3, 0x0

    return v3

    .line 3578
    .end local v1    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 1013
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v2, 0x1020378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1013
    :cond_0
    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 904
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 905
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 906
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 910
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isEncrptedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 3155
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3153
    :goto_0
    return-void

    .line 3156
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 6
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "forHun"    # Z

    .prologue
    .line 2101
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method public makeIconClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;
    .locals 6
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "forHun"    # Z

    .prologue
    .line 3167
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method public notifyHeadsUpLidClosed(Z)V
    .locals 0
    .param p1, "lidClosed"    # Z

    .prologue
    .line 3939
    if-eqz p1, :cond_0

    .line 3940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 3938
    :cond_0
    return-void
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 3039
    if-nez p1, :cond_0

    .line 3040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 3038
    :cond_0
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 838
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 839
    const-string/jumbo v9, "show_note_about_notification_hiding"

    .line 838
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    .line 840
    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 842
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 843
    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 845
    const-string/jumbo v9, "show_note_about_notification_hiding"

    .line 844
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    return-void

    .line 848
    :cond_0
    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 851
    const-string/jumbo v9, "lock_screen_show_notifications"

    .line 850
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 852
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 853
    const-string/jumbo v9, "lock_screen_allow_private_notifications"

    .line 852
    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 856
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 857
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 856
    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 859
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 860
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 859
    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 863
    .local v7, "setupIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 864
    .local v6, "res":Landroid/content/res/Resources;
    const v1, 0x1060070

    .line 865
    .local v1, "colorRes":I
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 866
    const v9, 0x7f020055

    .line 865
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 867
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f090296

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 865
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 868
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f090297

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 865
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 871
    const v9, 0x1060070

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 865
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 874
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f090298

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 873
    const v10, 0x7f020067

    .line 865
    invoke-virtual {v8, v10, v9, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 877
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f090299

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 876
    const v10, 0x7f020126

    .line 865
    invoke-virtual {v8, v10, v9, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 881
    .local v4, "note":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 837
    .end local v0    # "cancelIntent":Landroid/app/PendingIntent;
    .end local v1    # "colorRes":I
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "note":Landroid/app/Notification$Builder;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "setupIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 3960
    return-void
.end method

.method public onClearAllNotifications(Z)V
    .locals 12
    .param p1, "isFilter"    # Z

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v7

    .line 3779
    .local v7, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 3780
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v1, v7, v10

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 3782
    .local v8, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v11, 0x0

    .line 3784
    .local v11, "isFakeExist":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3785
    const/4 v11, 0x1

    .line 3787
    :cond_0
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-ne p1, v0, :cond_1

    .line 3788
    if-nez v11, :cond_1

    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3790
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3791
    .local v2, "_pkg":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 3792
    .local v3, "_tag":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 3799
    .local v4, "_id":I
    :try_start_0
    new-instance v0, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;

    invoke-direct {v0}, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/FlymeExtIStatusBarServiceProxy;->onNotificationClearForReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3779
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3775
    .end local v8    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v11    # "isFakeExist":Z
    :cond_2
    return-void

    .line 3800
    .restart local v2    # "_pkg":Ljava/lang/String;
    .restart local v3    # "_tag":Ljava/lang/String;
    .restart local v4    # "_id":I
    .restart local v8    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v11    # "isFakeExist":Z
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 935
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 936
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 937
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 939
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-eq v1, v3, :cond_3

    .line 940
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 941
    const-string/jumbo v3, "StatusBar"

    .line 942
    const-string/jumbo v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    .line 941
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 942
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 943
    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 941
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 946
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 947
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 934
    :cond_2
    return-void

    .line 939
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1495
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1496
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1497
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1498
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 1499
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 1495
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1436
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 2203
    if-eqz p1, :cond_0

    .line 2205
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    :goto_0
    return-void

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2213
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2214
    sget v3, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_enter:I

    .line 2215
    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_exit:I

    const/4 v5, 0x0

    .line 2213
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2216
    :catch_1
    move-exception v0

    .line 2217
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1284
    const/16 v0, 0x3fe

    .line 1285
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1286
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1283
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1411
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method protected removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3587
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->removeFake(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3589
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 3590
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFakeNotificationViews()---removeNotification for unknown pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    return-object v5

    .line 3595
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3596
    .local v1, "rowParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 3597
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3603
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 3609
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v2
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v5, 0x0

    .line 2283
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2284
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2285
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNotification for unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    return-object v5

    .line 2294
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2295
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->areThereNotiForPkg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2296
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 2305
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2306
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v2

    .line 2301
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeEntryCounts(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 3108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 3107
    return-void
.end method

.method protected setEnablePullDownOnKeyguard(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3923
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEnablePullDownOnKeyguard:Z

    .line 3922
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 3103
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 1452
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1451
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2534
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 2533
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2528
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 2529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2526
    return-void
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 14
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3050
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3051
    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 3052
    const-string/jumbo v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Skipping HUN check for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " since it\'s filtered out."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_0
    const/4 v11, 0x0

    return v11

    .line 3057
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isSnoozed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3058
    const/4 v11, 0x0

    return v11

    .line 3062
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3063
    const-string/jumbo v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkg is encrypt --"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "-- no headsup notification..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const/4 v11, 0x0

    return v11

    .line 3068
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 3070
    .local v9, "notification":Landroid/app/Notification;
    iget v11, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4

    .line 3071
    iget v11, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_a

    .line 3070
    :cond_4
    const/4 v8, 0x1

    .line 3074
    .local v8, "isNoisy":Z
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_c

    const/4 v7, 0x1

    .line 3075
    .local v7, "isHighPriority":Z
    :goto_1
    iget-object v11, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_d

    const/4 v6, 0x1

    .line 3076
    .local v6, "isFullscreen":Z
    :goto_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_5

    iget-object v11, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_5
    const/4 v3, 0x0

    .line 3077
    .local v3, "hasTicker":Z
    :goto_3
    iget-object v11, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "headsup"

    .line 3078
    const/4 v13, 0x1

    .line 3077
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_f

    const/4 v5, 0x1

    .line 3079
    .local v5, "isAllowed":Z
    :goto_4
    if-eqz v6, :cond_10

    .line 3080
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 3082
    :goto_5
    iget-object v11, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "flyme.showHeadUpInOccluded"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    move v10, v6

    .line 3083
    :goto_6
    iget-object v11, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "headsup"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3084
    .local v2, "flag":I
    const/4 v11, 0x1

    if-ne v2, v11, :cond_12

    if-nez v6, :cond_13

    if-eqz v7, :cond_14

    if-nez v8, :cond_13

    move v4, v3

    .line 3085
    :goto_7
    if-nez v4, :cond_6

    if-eqz v10, :cond_7

    .line 3086
    :cond_6
    if-eqz v0, :cond_15

    .line 3085
    :cond_7
    const/4 v4, 0x0

    .line 3095
    :goto_8
    if-eqz v4, :cond_8

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_19

    :cond_8
    const/4 v4, 0x0

    .line 3099
    :goto_9
    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "interrupt: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_9
    return v4

    .line 3072
    .end local v2    # "flag":I
    .end local v3    # "hasTicker":Z
    .end local v5    # "isAllowed":Z
    .end local v6    # "isFullscreen":Z
    .end local v7    # "isHighPriority":Z
    .end local v8    # "isNoisy":Z
    :cond_a
    iget-object v11, v9, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_4

    .line 3073
    iget-object v11, v9, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_b

    const/4 v8, 0x1

    .restart local v8    # "isNoisy":Z
    goto/16 :goto_0

    .end local v8    # "isNoisy":Z
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "isNoisy":Z
    goto/16 :goto_0

    .line 3074
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "isHighPriority":Z
    goto/16 :goto_1

    .line 3075
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "isFullscreen":Z
    goto/16 :goto_2

    .line 3076
    :cond_e
    const/4 v3, 0x1

    .restart local v3    # "hasTicker":Z
    goto :goto_3

    .line 3077
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "isAllowed":Z
    goto :goto_4

    .line 3079
    :cond_10
    const/4 v0, 0x0

    .local v0, "accessibilityForcesLaunch":Z
    goto :goto_5

    .line 3082
    .end local v0    # "accessibilityForcesLaunch":Z
    :cond_11
    const/4 v10, 0x0

    .local v10, "showInOccluded":Z
    goto :goto_6

    .line 3084
    .end local v10    # "showInOccluded":Z
    .restart local v2    # "flag":I
    :cond_12
    const/4 v11, 0x2

    if-ne v2, v11, :cond_14

    :cond_13
    const/4 v4, 0x1

    .local v4, "interrupt":Z
    goto :goto_7

    .end local v4    # "interrupt":Z
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "interrupt":Z
    goto :goto_7

    .line 3088
    .end local v4    # "interrupt":Z
    :cond_15
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 3085
    if-eqz v11, :cond_7

    .line 3089
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isLipOpen()Z

    move-result v11

    .line 3085
    if-eqz v11, :cond_7

    .line 3090
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 3091
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    .line 3085
    if-eqz v11, :cond_7

    .line 3092
    :cond_16
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_18

    move v4, v10

    .local v4, "interrupt":Z
    goto :goto_8

    .end local v4    # "interrupt":Z
    :cond_17
    const/4 v4, 0x1

    .local v4, "interrupt":Z
    goto :goto_8

    .end local v4    # "interrupt":Z
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "interrupt":Z
    goto/16 :goto_8

    .line 3095
    .end local v4    # "interrupt":Z
    :cond_19
    const/4 v4, 0x1

    .restart local v4    # "interrupt":Z
    goto :goto_9

    .line 3096
    .end local v4    # "interrupt":Z
    :catch_0
    move-exception v1

    .line 3097
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "StatusBar"

    const-string/jumbo v12, "failed to query dream manager"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1298
    const/16 v0, 0x400

    .line 1299
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1297
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1305
    const/16 v0, 0x401

    .line 1306
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1304
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1262
    const/16 v0, 0x3fb

    .line 1263
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1264
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1261
    return-void

    :cond_0
    move v1, v2

    .line 1264
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 1391
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 1423
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1429
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1311
    :cond_0
    return-void
.end method

.method public simulateNotiOnClick(Landroid/service/notification/StatusBarNotification;)V
    .locals 14
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 3699
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v5, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3700
    .local v5, "mIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3701
    .local v7, "mPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 3702
    .local v8, "mTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 3703
    .local v4, "mId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 3710
    .local v6, "mNotificationKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 3713
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3717
    :goto_0
    if-eqz v5, :cond_0

    .line 3720
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3727
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3728
    const-string/jumbo v10, "keyguard"

    .line 3727
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3729
    .local v3, "kgm":Landroid/app/KeyguardManager;
    if-eqz v3, :cond_0

    .line 3730
    invoke-virtual {v3, v12}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 3733
    .end local v3    # "kgm":Landroid/app/KeyguardManager;
    :cond_0
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v9, v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3740
    :goto_2
    invoke-virtual {p0, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 3741
    invoke-virtual {p0, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 3697
    return-void

    .line 3722
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sending contentIntent failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3735
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 3715
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start()V
    .locals 22

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 690
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 693
    const-string/jumbo v18, "device_policy"

    .line 692
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 697
    new-instance v17, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "accessibility"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 699
    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 703
    const-string/jumbo v17, "dreams"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 702
    invoke-static/range {v17 .. v17}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 708
    const-string/jumbo v18, "device_provisioned"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    .line 708
    const/16 v20, 0x1

    .line 707
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 711
    const-string/jumbo v18, "zen_mode"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    .line 711
    const/16 v20, 0x0

    .line 710
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 714
    const-string/jumbo v18, "lock_screen_show_notifications"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    .line 714
    const/16 v20, 0x0

    .line 716
    const/16 v21, -0x1

    .line 713
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 719
    const-string/jumbo v18, "lockscreen_pull_notificationbar"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    .line 719
    const/16 v20, 0x0

    .line 721
    const/16 v21, -0x1

    .line 718
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 725
    const-string/jumbo v18, "lock_screen_allow_private_notifications"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    .line 726
    const/16 v20, 0x1

    .line 728
    const/16 v21, -0x1

    .line 724
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 731
    const-string/jumbo v17, "statusbar"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 730
    invoke-static/range {v17 .. v17}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 733
    const-class v17, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 737
    .local v7, "currentConfig":Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 739
    iget v0, v7, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "user"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 744
    const v18, 0x10c000e

    .line 743
    invoke-static/range {v17 .. v18}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 746
    const v18, 0x10c000f

    .line 745
    invoke-static/range {v17 .. v18}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 749
    new-instance v13, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v13}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 750
    .local v13, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v17, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 752
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 753
    .local v14, "switches":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v6, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v13, v14, v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 762
    const/16 v17, 0x0

    aget v17, v14, v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IZ)V

    .line 763
    const/16 v17, 0x1

    aget v17, v14, v17

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 764
    const/16 v17, 0x2

    aget v17, v14, v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 766
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/IBinder;

    const/16 v18, 0x3

    aget v19, v14, v18

    const/16 v18, 0x4

    aget v20, v14, v18

    const/16 v18, 0x5

    aget v18, v14, v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 769
    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    .line 770
    .local v5, "N":I
    const/16 v16, 0x0

    .line 771
    .local v16, "viewIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v5, :cond_3

    .line 772
    invoke-virtual {v13, v11}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v12

    .line 773
    .local v12, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v12, :cond_0

    .line 774
    invoke-virtual {v13, v11}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v11, v2, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 775
    add-int/lit8 v16, v16, 0x1

    .line 771
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 764
    .end local v5    # "N":I
    .end local v11    # "i":I
    .end local v12    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v16    # "viewIndex":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 766
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 781
    .restart local v5    # "N":I
    .restart local v11    # "i":I
    .restart local v16    # "viewIndex":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 782
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/16 v20, -0x1

    .line 781
    invoke-virtual/range {v17 .. v20}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    :goto_4
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v17, :cond_4

    .line 790
    const-string/jumbo v17, "StatusBar"

    .line 791
    const-string/jumbo v18, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    .line 790
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 792
    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 793
    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    .line 794
    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v19, v21

    .line 795
    const/16 v20, 0x2

    aget v20, v14, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x3

    aput-object v20, v19, v21

    .line 796
    const/16 v20, 0x3

    aget v20, v14, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    aput-object v20, v19, v21

    .line 790
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 803
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 804
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v17, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string/jumbo v17, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v17, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string/jumbo v17, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v17

    .line 814
    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 813
    invoke-virtual/range {v17 .. v18}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 824
    const-string/jumbo v17, "mz_app_lock_control"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 825
    .local v15, "toggleAppLockUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 826
    const-string/jumbo v18, "mz_app_lock_control"

    const/16 v19, 0x0

    .line 825
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsAppLockEnabled:Z

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 688
    return-void

    .line 784
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "toggleAppLockUri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 785
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "StatusBar"

    const-string/jumbo v18, "Unable to register notification listener"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 825
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v10    # "filter":Landroid/content/IntentFilter;
    .restart local v15    # "toggleAppLockUri":Landroid/net/Uri;
    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    .line 756
    .end local v5    # "N":I
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "i":I
    .end local v15    # "toggleAppLockUri":Landroid/net/Uri;
    .end local v16    # "viewIndex":I
    :catch_1
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 1277
    const/16 v0, 0x3fd

    .line 1278
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1276
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 1404
    :cond_0
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateExpansionStatesMz()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2496
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v6, v8, :cond_2

    const/4 v5, 0x1

    .line 2497
    .local v5, "onKeyguard":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 2498
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2499
    .local v0, "N":I
    const/4 v3, -0x1

    .line 2500
    .local v3, "expandedEntry":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 2501
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2506
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2507
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2511
    :cond_0
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2515
    :cond_1
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 2500
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2496
    .end local v0    # "N":I
    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "expandedEntry":I
    .end local v4    # "i":I
    .end local v5    # "onKeyguard":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "onKeyguard":Z
    goto :goto_0

    .line 2508
    .restart local v0    # "N":I
    .restart local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v3    # "expandedEntry":I
    .restart local v4    # "i":I
    :cond_3
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v6

    .line 2507
    if-eqz v6, :cond_0

    .line 2508
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v6

    .line 2507
    if-eqz v6, :cond_0

    .line 2508
    if-gez v3, :cond_0

    .line 2509
    move v3, v4

    .line 2510
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_2

    .line 2512
    :cond_4
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v6

    .line 2511
    if-eqz v6, :cond_1

    .line 2513
    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_2

    .line 2495
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5
    return-void
.end method

.method public updateFakeEntryCounts(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3428
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->findFakeByPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3429
    .local v0, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 3430
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification for unknown pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    return-void

    .line 3433
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    sget v3, Lcom/flyme/internal/R$id;->text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3435
    .local v1, "text":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 3437
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 3438
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0900ca

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3426
    :cond_1
    :goto_0
    return-void

    .line 3440
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotiCounts(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0900cb

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateFakeVetoButton(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "fakePkg"    # Ljava/lang/String;

    .prologue
    .line 3524
    const v1, 0x7f0f025f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3529
    .local v0, "vetoButton":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFakeClearable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3531
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3523
    :goto_0
    return-void

    .line 3555
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 52
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2579
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v32

    .line 2582
    .local v32, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v51

    .line 2584
    .local v51, "wasHeadsUp":Z
    if-eqz v51, :cond_1

    .line 2585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v37

    .line 2589
    .local v37, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    if-nez v37, :cond_2

    .line 2590
    return-void

    .line 2587
    .end local v37    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v37

    .restart local v37    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 2593
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTicker(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2594
    return-void

    .line 2597
    :cond_3
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v39, v0

    .line 2600
    .local v39, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v36, v0

    .line 2601
    .local v36, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v33

    .line 2603
    .local v33, "n":Landroid/app/Notification;
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_5

    .line 2604
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_4

    .line 2605
    return-void

    .line 2607
    :cond_4
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, v33

    iput-object v5, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2611
    :cond_5
    move-object/from16 v0, v33

    iget-object v15, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2612
    .local v15, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v35, v0

    .line 2613
    .local v35, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v33

    iget-object v13, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2614
    .local v13, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v38, v0

    .line 2615
    .local v38, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    .line 2616
    .local v21, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v41, v0

    .line 2617
    .local v41, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v41, :cond_f

    .line 2618
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v40, v0

    .line 2619
    :goto_1
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v43, v0

    .line 2620
    .local v43, "publicNotification":Landroid/app/Notification;
    if-eqz v43, :cond_10

    .line 2621
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v42, v0

    .line 2623
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 2624
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2625
    const-string/jumbo v7, " ongoing="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2625
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2626
    const-string/jumbo v7, " expanded="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2626
    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2627
    const-string/jumbo v7, " contentView="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2628
    const-string/jumbo v7, " bigContentView="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2629
    const-string/jumbo v7, " publicView="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2630
    const-string/jumbo v7, " rowParent="

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2630
    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 2624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2632
    const-string/jumbo v7, " ongoing="

    .line 2631
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2632
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 2631
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2633
    const-string/jumbo v7, " contentView="

    .line 2631
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2634
    const-string/jumbo v7, " bigContentView="

    .line 2631
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2635
    const-string/jumbo v7, " publicView="

    .line 2631
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_6
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_12

    .line 2643
    if-eqz v36, :cond_12

    .line 2645
    invoke-virtual {v15}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 2646
    invoke-virtual/range {v36 .. v36}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 2647
    invoke-virtual/range {v36 .. v36}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2641
    if-eqz v5, :cond_12

    .line 2648
    invoke-virtual/range {v36 .. v36}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v15}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_11

    const/16 v16, 0x1

    .line 2651
    .local v16, "contentsUnchanged":Z
    :goto_3
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_13

    if-nez v13, :cond_13

    const/4 v14, 0x1

    .line 2658
    .local v14, "bigContentsUnchanged":Z
    :goto_4
    if-nez v38, :cond_16

    if-nez v21, :cond_16

    const/16 v22, 0x1

    .line 2665
    .local v22, "headsUpContentsUnchanged":Z
    :goto_5
    if-nez v40, :cond_19

    if-nez v42, :cond_19

    const/16 v44, 0x1

    .line 2671
    .local v44, "publicUnchanged":Z
    :goto_6
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1d

    .line 2672
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2673
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2672
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v50, 0x0

    .line 2675
    .local v50, "updateTicker":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->isNotificationReplyEnabled()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2676
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationReplyManager()Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->supportReply(Landroid/service/notification/StatusBarNotification;)Z

    move-result v48

    .line 2679
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v47

    .line 2680
    .local v47, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 2681
    .local v11, "alertAgain":Z
    const/16 v49, 0x0

    .line 2684
    .local v49, "updateSuccessful":Z
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDynamicModelHolder:Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->containModel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2685
    const/16 v16, 0x0

    .line 2688
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v14, :cond_8

    if-eqz v22, :cond_8

    if-eqz v44, :cond_8

    .line 2689
    if-eqz v48, :cond_1f

    .line 2874
    :cond_8
    :goto_9
    if-nez v49, :cond_b

    .line 2875
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_9
    if-eqz v51, :cond_36

    .line 2877
    if-eqz v47, :cond_34

    .line 2878
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_a
    new-instance v34, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2880
    .local v34, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v23

    .line 2881
    .local v23, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0, v7}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    .line 2886
    if-eqz v11, :cond_b

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2926
    .end local v23    # "holder":Landroid/view/ViewGroup;
    .end local v34    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_b
    :goto_a
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 2932
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v19

    .line 2933
    .local v19, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v19, :cond_c

    .line 2934
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->findFakeEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v20, v0

    .line 2935
    .local v20, "fakeRow":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeVetoButton(Landroid/view/View;Ljava/lang/String;)V

    .line 2940
    .end local v20    # "fakeRow":Landroid/view/View;
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v31

    .line 2941
    .local v31, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string/jumbo v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v31, :cond_3b

    const-string/jumbo v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_d
    if-eqz v50, :cond_e

    if-eqz v31, :cond_e

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->haltTicker()V

    .line 2946
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2950
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 2951
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    .line 2953
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v5, :cond_3c

    .line 2954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0, v7}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    .line 2578
    :goto_c
    return-void

    .line 2618
    .end local v11    # "alertAgain":Z
    .end local v14    # "bigContentsUnchanged":Z
    .end local v16    # "contentsUnchanged":Z
    .end local v19    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v22    # "headsUpContentsUnchanged":Z
    .end local v31    # "isForCurrentUser":Z
    .end local v43    # "publicNotification":Landroid/app/Notification;
    .end local v44    # "publicUnchanged":Z
    .end local v47    # "shouldInterrupt":Z
    .end local v49    # "updateSuccessful":Z
    .end local v50    # "updateTicker":Z
    :cond_f
    const/16 v40, 0x0

    .local v40, "oldPublicContentView":Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 2621
    .end local v40    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v43    # "publicNotification":Landroid/app/Notification;
    :cond_10
    const/16 v42, 0x0

    .local v42, "publicContentView":Landroid/widget/RemoteViews;
    goto/16 :goto_2

    .line 2648
    .end local v42    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_11
    const/16 v16, 0x0

    .restart local v16    # "contentsUnchanged":Z
    goto/16 :goto_3

    .line 2641
    .end local v16    # "contentsUnchanged":Z
    :cond_12
    const/16 v16, 0x0

    .restart local v16    # "contentsUnchanged":Z
    goto/16 :goto_3

    .line 2652
    :cond_13
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_15

    if-eqz v13, :cond_15

    if-eqz v35, :cond_15

    .line 2653
    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 2654
    invoke-virtual/range {v35 .. v35}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 2655
    invoke-virtual/range {v35 .. v35}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2652
    if-eqz v5, :cond_15

    .line 2656
    invoke-virtual/range {v35 .. v35}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_14

    const/4 v14, 0x1

    .restart local v14    # "bigContentsUnchanged":Z
    goto/16 :goto_4

    .end local v14    # "bigContentsUnchanged":Z
    :cond_14
    const/4 v14, 0x0

    .restart local v14    # "bigContentsUnchanged":Z
    goto/16 :goto_4

    .line 2652
    .end local v14    # "bigContentsUnchanged":Z
    :cond_15
    const/4 v14, 0x0

    .restart local v14    # "bigContentsUnchanged":Z
    goto/16 :goto_4

    .line 2659
    :cond_16
    if-eqz v38, :cond_18

    if-eqz v21, :cond_18

    .line 2660
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 2661
    invoke-virtual/range {v38 .. v38}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 2662
    invoke-virtual/range {v38 .. v38}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2659
    if-eqz v5, :cond_18

    .line 2663
    invoke-virtual/range {v38 .. v38}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_17

    const/16 v22, 0x1

    .restart local v22    # "headsUpContentsUnchanged":Z
    goto/16 :goto_5

    .end local v22    # "headsUpContentsUnchanged":Z
    :cond_17
    const/16 v22, 0x0

    .restart local v22    # "headsUpContentsUnchanged":Z
    goto/16 :goto_5

    .line 2659
    .end local v22    # "headsUpContentsUnchanged":Z
    :cond_18
    const/16 v22, 0x0

    .restart local v22    # "headsUpContentsUnchanged":Z
    goto/16 :goto_5

    .line 2666
    :cond_19
    if-eqz v40, :cond_1b

    if-eqz v42, :cond_1b

    .line 2667
    invoke-virtual/range {v42 .. v42}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 2668
    invoke-virtual/range {v40 .. v40}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 2669
    invoke-virtual/range {v40 .. v40}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2666
    if-eqz v5, :cond_1b

    .line 2670
    invoke-virtual/range {v40 .. v40}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v42 .. v42}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1a

    const/16 v44, 0x1

    .restart local v44    # "publicUnchanged":Z
    goto/16 :goto_6

    .end local v44    # "publicUnchanged":Z
    :cond_1a
    const/16 v44, 0x0

    .restart local v44    # "publicUnchanged":Z
    goto/16 :goto_6

    .line 2666
    .end local v44    # "publicUnchanged":Z
    :cond_1b
    const/16 v44, 0x0

    .restart local v44    # "publicUnchanged":Z
    goto/16 :goto_6

    .line 2672
    :cond_1c
    const/16 v50, 0x1

    .restart local v50    # "updateTicker":Z
    goto/16 :goto_7

    .line 2671
    .end local v50    # "updateTicker":Z
    :cond_1d
    const/16 v50, 0x0

    .restart local v50    # "updateTicker":Z
    goto/16 :goto_7

    .line 2675
    :cond_1e
    const/16 v48, 0x0

    .local v48, "updateNotificationReply":Z
    goto/16 :goto_8

    .line 2690
    .end local v48    # "updateNotificationReply":Z
    .restart local v11    # "alertAgain":Z
    .restart local v47    # "shouldInterrupt":Z
    .restart local v49    # "updateSuccessful":Z
    :cond_1f
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_20

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2693
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v46, v0

    .line 2696
    .local v46, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_0
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icons:Landroid/util/SparseArray;

    if-eqz v5, :cond_21

    .line 2698
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2699
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 2700
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2701
    invoke-virtual/range {v33 .. v33}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 2702
    move-object/from16 v0, v33

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    .line 2703
    move-object/from16 v0, v33

    iget v9, v0, Landroid/app/Notification;->number:I

    .line 2704
    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2698
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2705
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotification(Landroid/app/Notification;)V

    .line 2706
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 2707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2708
    return-void

    .line 2712
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_21
    if-eqz v51, :cond_29

    .line 2713
    if-eqz v47, :cond_28

    .line 2714
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2715
    if-eqz v11, :cond_22

    .line 2716
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2740
    :cond_22
    :goto_d
    sget v25, Lcom/flyme/internal/R$id;->icon:I

    .line 2743
    .local v25, "iconId":I
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 2745
    .local v29, "iconOneU":Landroid/widget/ImageView;
    if-eqz v29, :cond_23

    .line 2746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2747
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2b

    .line 2756
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v25

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2781
    :cond_23
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v15, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2782
    if-eqz v13, :cond_24

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 2783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2791
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v0, v5, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    .line 2793
    .local v26, "iconIntent":Landroid/app/PendingIntent;
    if-eqz v29, :cond_25

    .line 2794
    if-eqz v26, :cond_2e

    .line 2795
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeIconClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    move-result-object v28

    .line 2796
    .local v28, "iconListener":Landroid/view/View$OnClickListener;
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iconIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2802
    .end local v28    # "iconListener":Landroid/view/View$OnClickListener;
    :cond_25
    :goto_f
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 2805
    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/flyme/internal/R$id;->icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 2811
    .local v27, "iconLarge":Landroid/widget/ImageView;
    if-eqz v27, :cond_26

    .line 2812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2813
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2f

    .line 2822
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2851
    :cond_26
    :goto_10
    if-eqz v27, :cond_27

    .line 2852
    if-eqz v26, :cond_32

    .line 2853
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeIconClicker(Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    move-result-object v28

    .line 2854
    .restart local v28    # "iconListener":Landroid/view/View$OnClickListener;
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iconIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2867
    .end local v27    # "iconLarge":Landroid/widget/ImageView;
    .end local v28    # "iconListener":Landroid/view/View$OnClickListener;
    :cond_27
    :goto_11
    const/16 v49, 0x1

    goto/16 :goto_9

    .line 2720
    .end local v25    # "iconId":I
    .end local v26    # "iconIntent":Landroid/app/PendingIntent;
    .end local v29    # "iconOneU":Landroid/widget/ImageView;
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 2721
    return-void

    .line 2724
    :cond_29
    if-eqz v47, :cond_2a

    if-eqz v11, :cond_2a

    .line 2725
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2726
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    .line 2869
    :catch_0
    move-exception v18

    .line 2871
    .local v18, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 2730
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :cond_2a
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViewsWithoutReapply(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    goto/16 :goto_d

    .line 2762
    .restart local v25    # "iconId":I
    .restart local v29    # "iconOneU":Landroid/widget/ImageView;
    :cond_2b
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v5, v5, Landroid/app/NotificationExt;->notificationIcon:I

    if-eqz v5, :cond_2c

    .line 2763
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v5, v5, Landroid/app/NotificationExt;->notificationIcon:I

    move/from16 v0, v25

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_e

    .line 2764
    :cond_2c
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v5, v5, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_23

    .line 2765
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v5, v5, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v25

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_e

    .line 2769
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 2770
    .local v12, "appIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_23

    instance-of v5, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_23

    .line 2771
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2772
    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_e

    .line 2799
    .restart local v26    # "iconIntent":Landroid/app/PendingIntent;
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_f

    .line 2828
    .restart local v27    # "iconLarge":Landroid/widget/ImageView;
    :cond_2f
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v5, v5, Landroid/app/NotificationExt;->notificationIcon:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_30

    .line 2829
    const/16 v45, 0x0

    .line 2831
    .local v45, "remoteResource":Landroid/content/res/Resources;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v45

    .line 2835
    .end local v45    # "remoteResource":Landroid/content/res/Resources;
    :goto_12
    if-eqz v45, :cond_26

    .line 2837
    :try_start_3
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v5, v5, Landroid/app/NotificationExt;->notificationIcon:I

    .line 2836
    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 2838
    .local v24, "iconDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 2832
    .end local v24    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v45    # "remoteResource":Landroid/content/res/Resources;
    :catch_1
    move-exception v17

    .line 2833
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12

    .line 2840
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v45    # "remoteResource":Landroid/content/res/Resources;
    :cond_30
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v5, v5, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_26

    .line 2841
    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget-object v5, v5, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_10

    .line 2845
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v46 .. v46}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 2846
    .restart local v12    # "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 2857
    .end local v12    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_32
    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_11

    .line 2890
    .end local v25    # "iconId":I
    .end local v26    # "iconIntent":Landroid/app/PendingIntent;
    .end local v27    # "iconLarge":Landroid/widget/ImageView;
    .end local v29    # "iconOneU":Landroid/widget/ImageView;
    .end local v46    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v23    # "holder":Landroid/view/ViewGroup;
    .restart local v34    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_33
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2891
    invoke-virtual {v15}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 2890
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2894
    .end local v23    # "holder":Landroid/view/ViewGroup;
    .end local v34    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_34
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_35

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_35
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2896
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 2897
    return-void

    .line 2900
    :cond_36
    if-eqz v47, :cond_38

    if-eqz v11, :cond_38

    .line 2901
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_37

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2903
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_a

    .line 2905
    :cond_38
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_39

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_39
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2907
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2908
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 2909
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2910
    invoke-virtual/range {v33 .. v33}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 2911
    move-object/from16 v0, v33

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    .line 2912
    move-object/from16 v0, v33

    iget v9, v0, Landroid/app/Notification;->number:I

    .line 2913
    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2907
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2914
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotification(Landroid/app/Notification;)V

    .line 2915
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2916
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v5, v5, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v0, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    move/from16 v30, v0

    .line 2917
    .local v30, "intercept":Z
    if-eqz v30, :cond_3a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFilterStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v51

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 2918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2919
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    .line 2917
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    goto :goto_13

    .line 2941
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v30    # "intercept":Z
    .restart local v19    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v31    # "isForCurrentUser":Z
    :cond_3b
    const-string/jumbo v5, "not "

    goto/16 :goto_b

    .line 2956
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0, v7}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->callReplyIntent(Landroid/content/Context;Landroid/os/Handler;Landroid/service/notification/StatusBarNotification;I)V

    goto/16 :goto_c
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationTicker(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2575
    const/4 v0, 0x0

    return v0
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 952
    const v0, 0x7f0f025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 953
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 955
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 958
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 959
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 976
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 977
    return-object v6

    .line 974
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateSearchPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1329
    const/4 v3, 0x0

    .line 1330
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 1331
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 1332
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1336
    .end local v3    # "visible":Z
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1337
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1338
    const v5, 0x7f0400c1

    .line 1337
    invoke-virtual {v4, v5, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 1339
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 1340
    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x403

    invoke-direct {v5, p0, v7, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    .line 1339
    invoke-virtual {v4, v5}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1341
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 1342
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v2

    .line 1343
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    .line 1345
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1347
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v5, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1348
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1349
    if-eqz v3, :cond_1

    .line 1350
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1327
    :cond_1
    return-void

    .line 1342
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .local v2, "vertical":Z
    goto :goto_0
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2235
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreenOnFromKeyguard:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2237
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 2238
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 2233
    :cond_0
    return-void

    .line 2235
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1464
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 1465
    const/4 v3, 0x1

    return v3

    .line 1468
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_4

    .line 1470
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1471
    const-string/jumbo v5, "lock_screen_allow_private_notifications"

    .line 1469
    invoke-static {v4, v5, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 1472
    .local v0, "allowed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1474
    .local v2, "dpmFlags":I
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 1476
    .local v1, "allowedByDpm":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    .end local v1    # "allowedByDpm":Z
    :goto_2
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1477
    return v0

    .line 1469
    .end local v0    # "allowed":Z
    .end local v2    # "dpmFlags":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_0

    .line 1474
    .restart local v2    # "dpmFlags":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "allowedByDpm":Z
    goto :goto_1

    :cond_3
    move v1, v3

    .line 1476
    goto :goto_2

    .line 1480
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 888
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 2225
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 2226
    if-nez p1, :cond_0

    .line 2227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 2230
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 2223
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1561
    return-void
.end method
