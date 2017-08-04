.class public Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "FlymeNotificationLayout.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private group:I

.field private mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mInKeyguard:Z

.field private mMoreIcon:Landroid/view/View;

.field private mNaturalBarHeight:I

.field private mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "FlymeNotificationLayout"

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    .line 61
    return-void
.end method


# virtual methods
.method public getNotificationIcons()Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 66
    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 68
    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 71
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onFinishInflate()V

    .line 176
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    .line 177
    const v0, 0x7f0f01d0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 178
    const v0, 0x7f0f01cf

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 179
    const v0, 0x7f0f01d1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    .line 180
    const v0, 0x7f0f01d2

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mMoreIcon:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->setOngoingView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->setNotifyView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public setGroup(I)V
    .locals 0
    .param p1, "group"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    .line 43
    return-void
.end method

.method public setInKeyguard(Z)V
    .locals 0
    .param p1, "inKeyguard"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mInKeyguard:Z

    .line 78
    return-void
.end method

.method public setThirdPartyNotifyIcon(ZZZ)V
    .locals 4
    .param p1, "mIsGuestMode"    # Z
    .param p2, "hasThirdPartyNotificationItems"    # Z
    .param p3, "hasThirdPartyOngoingItems"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 168
    goto :goto_1

    :cond_2
    move v1, v2

    .line 169
    goto :goto_2
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;ZI)V
    .locals 23
    .param p1, "mNotificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p2, "mIsSuperPowerSaveEnabled"    # Z
    .param p3, "color"    # I

    .prologue
    .line 83
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNaturalBarHeight:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 86
    .local v2, "N":I
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v17, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v18, "uniqueIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object v12

    .line 89
    .local v12, "mSpaceController":Lmeizu/space/MSpaceController;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_7

    .line 90
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 91
    .local v7, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isSuperPowerModeIcon(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v20

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 101
    :cond_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mInKeyguard:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v14

    .line 105
    .local v14, "silence":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getIconView(I)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v20

    if-eqz v20, :cond_0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    if-nez v14, :cond_0

    .line 107
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 108
    const-string/jumbo v20, "android"

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 107
    if-nez v20, :cond_0

    .line 111
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 112
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 114
    sget-object v20, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateNotificationIcons(), IconMerger feature, skip pkg / icon / iconlevel ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 115
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 114
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 115
    const-string/jumbo v22, "/"

    .line 114
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 115
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    .line 114
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 115
    const-string/jumbo v22, "/"

    .line 114
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 115
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v22, v0

    .line 114
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 118
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v11    # "key":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getIconView(I)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v10

    .line 121
    .local v10, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v10, :cond_6

    .line 122
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getIconView(I)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v10

    .line 123
    if-eqz v10, :cond_6

    .line 124
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->copy()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v10

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->group:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0, v10}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIconView(ILcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 128
    :cond_6
    if-eqz v10, :cond_0

    .line 129
    sget-object v20, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 133
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v14    # "silence":Z
    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v15, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 136
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 137
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 140
    .end local v5    # "child":Landroid/view/View;
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 141
    .local v16, "toRemoveCount":I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_a

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v21, v0

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->removeView(Landroid/view/View;)V

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 144
    :cond_a
    const/4 v9, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_c

    .line 145
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 146
    .local v19, "v":Landroid/view/View;
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_b

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9, v13}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 151
    .end local v19    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildCount()I

    move-result v6

    .line 152
    .local v6, "childCount":I
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_e

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 154
    .local v4, "actual":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 155
    .local v8, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v4, v8, :cond_d

    .line 152
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 158
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->removeView(Landroid/view/View;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 81
    .end local v4    # "actual":Landroid/view/View;
    .end local v8    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_e
    return-void
.end method
