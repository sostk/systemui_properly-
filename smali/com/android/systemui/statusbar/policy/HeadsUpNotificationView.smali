.class public Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.super Landroid/widget/FrameLayout;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;,
        Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;
    }
.end annotation


# static fields
.field private static final CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field private mAutoSnoozeLengthMs:I

.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mContentHolder:Landroid/view/ViewGroup;

.field private final mDefaultSnoozeLengthMs:I

.field private mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

.field private mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mHeadsUpNotificationDecay:I

.field private final mMaxAlpha:F

.field private mMostRecentPackageName:Ljava/lang/String;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSnoozeLengthMs:I

.field private final mSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnoozedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStartShowTime:J

.field private mStartTouchTime:J

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTwoArray:[I

.field private final mTouchSensitivityDelay:I

.field private mUser:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snooze()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;-><init>()V

    .line 305
    sput-object v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMaxAlpha:F

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 97
    const v1, 0x7f10003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    .line 98
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    .line 100
    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mAutoSnoozeLengthMs:I

    .line 101
    const v1, 0x7f100039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUpNotificationDecay:I

    .line 102
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 91
    return-void
.end method

.method private autoSnooze()V
    .locals 6

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartShowTime:J

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 601
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartShowTime:J

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mAutoSnoozeLengthMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_0
    return-void
.end method

.method private static isRequestedHeadsUp(Landroid/app/Notification;)Z
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    if-eqz p0, :cond_1

    .line 592
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "headsup"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 593
    .local v0, "flag":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 595
    .end local v0    # "flag":I
    :cond_1
    return v2
.end method

.method private snooze()V
    .locals 8

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snoozeNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 278
    .end local v0    # "enable":Z
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 272
    return-void

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static snoozeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # I

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 205
    return-void
.end method

.method public disableBlur()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isStaticBlurMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->blurUnderMeRect(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onNotificationClear(Landroid/service/notification/StatusBarNotification;)V

    .line 227
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 217
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->snoozeNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    goto :goto_0
.end method

.method public expansionStateChanged(Z)V
    .locals 0
    .param p1, "isExpanding"    # Z

    .prologue
    .line 443
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 461
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public isClearable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isShowing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnoozed(Landroid/service/notification/StatusBarNotification;)Z
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "packageName":Ljava/lang/String;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 245
    .local v4, "snoozedUntil":Ljava/lang/Long;
    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 248
    const/4 v5, 0x1

    return v5

    .line 250
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isRequestedHeadsUp(Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 254
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "sbnKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "snoozedUntil":Ljava/lang/Long;
    check-cast v4, Ljava/lang/Long;

    .line 256
    .restart local v4    # "snoozedUntil":Ljava/lang/Long;
    if-eqz v4, :cond_5

    .line 257
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 258
    const/4 v3, 0x1

    .line 259
    .local v3, "snooze":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartShowTime:J

    sub-long/2addr v6, v8

    long-to-float v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUpNotificationDecay:I

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 263
    :cond_2
    :goto_0
    return v3

    .line 260
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 265
    .end local v3    # "snooze":Z
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v2    # "sbnKey":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    return v5
.end method

.method public onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 322
    .local v3, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v2, v4

    .line 323
    .local v2, "touchSlop":F
    new-instance v4, Lcom/android/systemui/SwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v7, p0, v5}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 324
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/SwipeHelper;->setMaxSwipeProgress(F)V

    .line 325
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;F)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b038d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 328
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b038e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 330
    .local v0, "maxHeight":I
    const v4, 0x7f0f006a

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    .line 331
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 333
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 334
    const-string/jumbo v5, "heads_up_snooze_length_ms"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mDefaultSnoozeLengthMs:I

    .line 333
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I

    .line 335
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 346
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 347
    const-string/jumbo v5, "heads_up_snooze_length_ms"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 348
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 346
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v4, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 320
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    const-string/jumbo v0, "HeadsUpNotificationView"

    const-string/jumbo v1, "User swiped heads up to dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHeadsUpDismissed()V

    .line 465
    return-void
.end method

.method public onChildDismissedManually(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 577
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 480
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 504
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 505
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v2, v2, v5

    .line 506
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 507
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 505
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 501
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 406
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 408
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 403
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 475
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 378
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 368
    return v0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 370
    if-nez v1, :cond_1

    .line 372
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 370
    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 397
    if-nez v0, :cond_1

    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 397
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V

    .line 236
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 232
    return-void
.end method

.method public releaseAndClose()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 290
    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 115
    return-void
.end method

.method public setKeyguardState(Z)V
    .locals 1
    .param p1, "keyguard"    # Z

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 580
    :cond_0
    return-void
.end method

.method public setUser(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mUser:I

    .line 518
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_8

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMostRecentPackageName:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitive(ZZJJ)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 143
    return v2

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const-string/jumbo v3, "HeadsUpContentHolder"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isStaticBlurMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->blurUnderMeRect(Z)V

    .line 159
    :goto_1
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v9}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->autoSnooze()V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "flyme.dynamic.transparent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    :goto_2
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "lucky_money"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 173
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getRedEnvelopeAssistantController()Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;->customizeHeadsUpStyle(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V

    .line 175
    :cond_6
    if-nez v0, :cond_7

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    .line 181
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpOpen()V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 189
    :cond_8
    return v8

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 167
    :cond_a
    const/4 v0, 0x0

    .local v0, "transparent":Z
    goto :goto_2
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setBlurAlpha(F)V

    .line 487
    const/4 v0, 0x0

    return v0
.end method
