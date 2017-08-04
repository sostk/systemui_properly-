.class public Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

.field private mCaptureValues:Z

.field private mCarrierLabel:Landroid/widget/TextView;

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSTilesEditButton:Landroid/view/View;

.field private mSettingsButton:Landroid/view/View;

.field private mShowFilterPanel:Landroid/view/View;

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 133
    return-void
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 641
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 642
    :cond_0
    return-void

    .line 644
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 645
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :goto_0
    return-void

    .line 647
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 648
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5
    .param p1, "values"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 667
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    .line 671
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 670
    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 677
    sub-float/2addr v1, v2

    .line 676
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 683
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 687
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 696
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 700
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 652
    return-void

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 673
    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2
.end method

.method private loadDimens()V
    .locals 4

    .prologue
    const v3, 0x7f0b0285

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 274
    .local v0, "mCurrentOrientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 279
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 281
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 283
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 285
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 288
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 290
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    .line 293
    div-float/2addr v1, v2

    .line 292
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 299
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 270
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto/16 :goto_0
.end method

.method private requestCaptureValues()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 265
    return-void
.end method

.method private setClipping(F)V
    .locals 5
    .param p1, "height"    # F

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V

    .line 521
    return-void
.end method

.method private startBatteryActivity()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    const/4 v2, 0x1

    .line 571
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 570
    return-void
.end method

.method private startQSTilesEditMode()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTilesEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 562
    .local v0, "state":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectShortcutSetting(Landroid/content/Context;)V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->setTilesEditMode(ZZ)V

    .line 559
    .end local v0    # "state":Z
    :cond_1
    return-void

    .line 561
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "state":Z
    goto :goto_0
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    const/4 v2, 0x1

    .line 553
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectSystemSetting(Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method private updateAmPmTranslation()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 435
    .local v0, "rtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 433
    return-void

    .line 434
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    .line 435
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 414
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 256
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b03f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 258
    .local v2, "padding":I
    const v4, 0x7f0b03f2

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 259
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 260
    const v5, 0x3fa66666    # 1.3f

    .line 259
    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    .line 260
    const v5, 0x3e999998    # 0.29999995f

    .line 259
    div-float v0, v4, v5

    .line 261
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 254
    return-void
.end method

.method private updateClockScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 426
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 425
    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 424
    return-void

    .line 427
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    .line 513
    return-void
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 404
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateVisibilitiesFlyme()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 886
    const v1, 0x7f0f024e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Landroid/view/View;

    .line 887
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    .line 888
    .local v0, "isProductInternational":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowFilterPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 885
    return-void

    :cond_0
    move v1, v3

    .line 888
    goto :goto_0

    :cond_1
    move v3, v2

    .line 889
    goto :goto_1
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 603
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 440
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startQSTilesEditMode()V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    goto :goto_0

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 546
    .local v0, "showIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0b03b8

    const v4, 0x7f0b02b6

    const v3, 0x7f0b0285

    .line 219
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v2, 0x7f0b040e

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 222
    const v2, 0x7f0b03fb

    .line 221
    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 226
    const v1, 0x1020016

    invoke-static {p0, v1, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 227
    const v1, 0x1020017

    invoke-static {p0, v1, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    const v2, 0x7f0b03f9

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 229
    const v1, 0x7f0f0231

    const v2, 0x7f0b03fa

    invoke-static {p0, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v2, 0x1040303

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 241
    .local v0, "carrierMaxWidth":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02050f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 248
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 218
    return-void

    .line 238
    .end local v0    # "carrierMaxWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "carrierMaxWidth":I
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 140
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 141
    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0f0252

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 144
    const v0, 0x7f0f00bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    .line 145
    const v0, 0x7f0f022f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0f0230

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0f00db

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 148
    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0f0253

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0f024f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0f024d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0f0250

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f00e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0f00d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0f023b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 167
    const v0, 0x7f0f0238

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 168
    const v0, 0x7f0f0251

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilitiesFlyme()V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->refreshFont()V

    .line 138
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 201
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 200
    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 450
    return-void

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public refreshFont()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 705
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-static {p0, v3}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 704
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/DINPro-Medium-numbers.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 709
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 711
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    goto :goto_0
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 303
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 309
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 307
    return-void
.end method

.method public setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V
    .locals 1
    .param p1, "batterytracker"    # Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryTracker:Lcom/flyme/systemui/statusbar/policy/BatteryTracker;

    .line 882
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryTracker(Lcom/flyme/systemui/statusbar/policy/BatteryTracker;)V

    .line 880
    return-void
.end method

.method public setExpansion(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 498
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    .line 499
    const/4 p1, 0x0

    .line 501
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    .line 502
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 503
    .local v0, "height":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 504
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    .line 506
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 507
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    .line 509
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    .line 510
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 497
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    .line 324
    return-void
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 312
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2
    .param p1, "qsp"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSTilesEditButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setTilesEditButton(Landroid/widget/ImageView;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 575
    return-void
.end method

.method public setShowEmergencyCallsOnly(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 589
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 528
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 527
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 340
    return-void
.end method
