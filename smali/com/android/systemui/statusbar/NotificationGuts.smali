.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/FrameLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$1;,
        Lcom/android/systemui/statusbar/NotificationGuts$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isSystemApp:Z

.field private mActualHeight:I

.field private mAllowItem:Landroid/view/ViewGroup;

.field private mAllowSelect:Landroid/widget/ImageView;

.field private mAppUid:I

.field private mClipTopAmount:I

.field private mDisplayListener:Landroid/view/View$OnClickListener;

.field private mFirstSelectItem:Landroid/view/ViewGroup;

.field private mIsPriorityDisplay:Z

.field private mItemGroup:Landroid/view/ViewGroup;

.field private mLastSelectItem:Landroid/view/ViewGroup;

.field private mNoDisplayItem:Landroid/view/ViewGroup;

.field private mNoDisplaySelect:Landroid/widget/ImageView;

.field private mNotRemindItem:Landroid/view/ViewGroup;

.field private mNotRemindSelect:Landroid/widget/ImageView;

.field private mPackageName:Ljava/lang/String;

.field private mPriorityDisplayItem:Landroid/view/ViewGroup;

.field private mPriorityDisplaySelect:Landroid/widget/ImageView;

.field private mPriorityListener:Landroid/view/View$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowSelect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplaySelect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindSelect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplaySelect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/NotificationGuts;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getAppUid()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->saveBySelectItem()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "NotificationGuts"

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGuts;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAppUid:I

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mDisplayListener:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityListener:Landroid/view/View$OnClickListener;

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    .line 121
    return-void
.end method

.method private getAppUid()I
    .locals 6

    .prologue
    .line 248
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAppUid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 251
    .local v2, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    .line 252
    const/16 v4, 0x2200

    .line 251
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 253
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 254
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAppUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pmUser":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAppUid:I

    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/systemui/statusbar/NotificationGuts;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveBySelectItem()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getAppUid()I

    move-result v0

    .line 92
    .local v0, "appUid":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    .line 105
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplaySelect:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    invoke-static {v3, v0, v1}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 90
    return-void

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_3

    .line 98
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 100
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 106
    goto :goto_1
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    const v1, 0x7f0f01c4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mItemGroup:Landroid/view/ViewGroup;

    .line 151
    const v1, 0x7f0f01c5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    .line 152
    const v1, 0x7f0f01c9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    .line 153
    const v1, 0x7f0f01c7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindItem:Landroid/view/ViewGroup;

    .line 154
    const v1, 0x7f0f01cb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplayItem:Landroid/view/ViewGroup;

    .line 155
    const v1, 0x7f0f01c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowSelect:Landroid/widget/ImageView;

    .line 156
    const v1, 0x7f0f01ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplaySelect:Landroid/widget/ImageView;

    .line 157
    const v1, 0x7f0f01c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindSelect:Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f0f01cc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplaySelect:Landroid/widget/ImageView;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mDisplayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mDisplayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mDisplayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplayItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f0f01c3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "saveBtn":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$3;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method public reloadData()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 276
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v4, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getAppUid()I

    move-result v0

    .line 278
    .local v0, "appUid":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetViewState()V

    .line 279
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    if-eqz v4, :cond_3

    .line 280
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->getHighPriority(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsPriorityDisplay:Z

    .line 281
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplayItem:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsPriorityDisplay:Z

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplaySelect:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsPriorityDisplay:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .end local v0    # "appUid":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "appUid":I
    :cond_1
    move v2, v3

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    .line 284
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 285
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v1

    .line 286
    .local v1, "remind":Z
    if-eqz v1, :cond_4

    .line 287
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    .line 288
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 289
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    .end local v1    # "remind":Z
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    goto :goto_2

    .line 291
    .restart local v1    # "remind":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindItem:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    .line 292
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 296
    .end local v1    # "remind":Z
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    .line 297
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplaySelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method resetViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplaySelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mAllowItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNotRemindItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNoDisplayItem:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 270
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsPriorityDisplay:Z

    .line 271
    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFirstSelectItem:Landroid/view/ViewGroup;

    .line 272
    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mLastSelectItem:Landroid/view/ViewGroup;

    .line 263
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 198
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 211
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 305
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->checkSystemPush(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 230
    const-string/jumbo v3, "android.originalPackageName"

    .line 229
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->hasLauncherActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->isSystemApp:Z

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mItemGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplayItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->reloadData()V

    .line 223
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 233
    goto :goto_1

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mItemGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mPriorityDisplayItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method
