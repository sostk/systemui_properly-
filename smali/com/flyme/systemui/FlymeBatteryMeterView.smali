.class public Lcom/flyme/systemui/FlymeBatteryMeterView;
.super Lcom/android/systemui/BatteryMeterView;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/FlymeBatteryMeterView$1;,
        Lcom/flyme/systemui/FlymeBatteryMeterView$2;,
        Lcom/flyme/systemui/FlymeBatteryMeterView$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static LOW_LEVEL:I

.field private static STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

.field private static mLastBatteryMeterView:Lcom/flyme/systemui/FlymeBatteryMeterView;

.field private static stat_sys_battery_charge:I

.field private static stat_sys_battery_low:I

.field private static stat_sys_battery_low_power_mode:I

.field private static stat_sys_battery_normal:I

.field private static stat_sys_battery_unknown:I


# instance fields
.field private mBatteryCharge:Landroid/graphics/drawable/Drawable;

.field private mBatteryFormatString:Ljava/lang/String;

.field private mBatteryLightAlpha:I

.field private mBatteryLightning:Landroid/graphics/drawable/Drawable;

.field private mBatteryLow:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormal:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryPlugged:Landroid/graphics/drawable/Drawable;

.field private mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryUnknown:Landroid/graphics/drawable/Drawable;

.field private mCharging:Z

.field private mClipWidth:I

.field private mDoChargeAnimation:Z

.field private mDoChargeHandler:Landroid/os/Handler;

.field private mDoChargeLevel:I

.field private mDoChargeRunnable:Ljava/lang/Runnable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilterColor:I

.field private mHasChangeColor:Z

.field private mHidePercentAnyWay:Z

.field private mLastLevel:I

.field private mLastPlugged:Z

.field private mLowPowerMode:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mShowAnim:Landroid/animation/ValueAnimator;

.field private mShowBatteryPercent:Z

.field private mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

.field private mToggleChargeAnimationObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/FlymeBatteryMeterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    return v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/FlymeBatteryMeterView;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/flyme/systemui/FlymeBatteryMeterView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/flyme/systemui/FlymeBatteryMeterView;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    return v0
.end method

.method static synthetic -get7(Lcom/flyme/systemui/FlymeBatteryMeterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mClipWidth:I

    return p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    return p1
.end method

.method static synthetic -set3(Lcom/flyme/systemui/FlymeBatteryMeterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/FlymeBatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleChargeAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "statusbar_battery_charge_anim"

    sput-object v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "FlymeBatteryMeterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->DEBUG:Z

    .line 44
    const v0, 0x7f02058d

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_normal:I

    .line 45
    const v0, 0x7f02057f

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_charge:I

    .line 46
    const v0, 0x7f02058b

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_low:I

    .line 47
    const v0, 0x7f02058f

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_unknown:I

    .line 48
    const v0, 0x7f02058c

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode:I

    .line 49
    const/16 v0, 0x8

    sput v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;)V

    .line 50
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    .line 62
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    .line 65
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 68
    iput v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 74
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 77
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 185
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$3;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 92
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->initBattery()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    .line 62
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    .line 65
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 68
    iput v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 74
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 77
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 185
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$3;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 374
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->initBattery()V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    .line 62
    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    .line 65
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 68
    iput v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 74
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 77
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 185
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$3;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 379
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->initBattery()V

    .line 377
    return-void
.end method

.method private initBattery()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->refreshResource()V

    .line 109
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    .line 111
    new-instance v1, Lcom/flyme/systemui/FlymeBatteryMeterView$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/FlymeBatteryMeterView$4;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;)V

    iput-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleChargeAnimation()V

    .line 121
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x2

    .line 121
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 122
    const/4 v2, 0x2

    .line 121
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 107
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 383
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 385
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "statusbar_battery_percent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 389
    sget-object v2, Lcom/flyme/systemui/FlymeBatteryMeterView;->STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 393
    const-string/jumbo v2, "mz_current_power_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    return-void
.end method

.method private toggleChargeAnimation()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;->showChargingAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 213
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 214
    sget-object v4, Lcom/flyme/systemui/FlymeBatteryMeterView;->STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const/4 v5, -0x2

    .line 213
    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 215
    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;->showChargingAnimation()Z

    move-result v1

    :cond_1
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 216
    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-eqz v0, :cond_3

    .line 217
    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    iput v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 214
    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private unregisterContentObservers()V
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 401
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 398
    return-void
.end method


# virtual methods
.method protected apply(Z)V
    .locals 12
    .param p1, "showAnim"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 266
    iget-boolean v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLowPowerMode:Z

    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

    .line 267
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    if-gez v7, :cond_0

    iget-boolean v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v7, :cond_8

    .line 268
    :cond_0
    iget-boolean v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v7, :cond_6

    .line 269
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v7, :cond_b

    .line 283
    iput-boolean v9, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 284
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_4

    .line 285
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mClipWidth:I

    .line 286
    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mClipWidth:I

    .line 287
    .local v2, "mStartClipWidth":I
    iget v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mClipWidth:I

    if-eqz v7, :cond_4

    .line 288
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    .line 289
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    .line 291
    :cond_2
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    .line 292
    if-gez v2, :cond_9

    const/16 v1, 0xff

    .line 293
    .local v1, "endAlpha":I
    :goto_2
    if-nez v1, :cond_a

    const/16 v5, 0xff

    .line 294
    .local v5, "startAlpha":I
    :goto_3
    const-string/jumbo v7, "alpha"

    new-array v8, v11, [I

    aput v5, v8, v6

    aput v6, v8, v9

    aput v1, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 295
    .local v3, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "width"

    new-array v8, v11, [I

    aput v2, v8, v6

    if-gez v2, :cond_3

    move v2, v6

    .end local v2    # "mStartClipWidth":I
    :cond_3
    aput v2, v8, v9

    aput v6, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 296
    .local v4, "pvhWidth":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-array v8, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v8, v6

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 297
    iget-object v6, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x10a

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    iget-object v6, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/flyme/systemui/FlymeBatteryMeterView$7;

    invoke-direct {v7, p0}, Lcom/flyme/systemui/FlymeBatteryMeterView$7;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 307
    iget-object v6, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/flyme/systemui/FlymeBatteryMeterView$8;

    invoke-direct {v7, p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView$8;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v6, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 326
    .end local v1    # "endAlpha":I
    .end local v3    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhWidth":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "startAlpha":I
    :cond_4
    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->requestLayout()V

    .line 265
    :goto_4
    return-void

    .line 266
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 271
    :cond_6
    iget v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_7

    .line 272
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 274
    :cond_7
    iget-boolean v7, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastPlugged:Z

    if-eqz v7, :cond_1

    .line 275
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 280
    :cond_8
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 292
    .restart local v2    # "mStartClipWidth":I
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "endAlpha":I
    goto :goto_2

    .line 293
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "startAlpha":I
    goto :goto_3

    .line 329
    .end local v1    # "endAlpha":I
    .end local v2    # "mStartClipWidth":I
    .end local v5    # "startAlpha":I
    :cond_b
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    goto :goto_4
.end method

.method protected changeFilterColor(Z)V
    .locals 4
    .param p1, "changeColor"    # Z

    .prologue
    .line 334
    iget-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    .line 335
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 336
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_5

    .line 337
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 338
    .local v0, "mBackground":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    sget v2, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_3

    .line 339
    :cond_1
    iget v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 344
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_4

    .line 345
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 333
    .end local v0    # "mBackground":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 341
    .restart local v0    # "mBackground":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 348
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 352
    .end local v0    # "mBackground":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 360
    .local v0, "drawLevel":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v3, v0, 0x64

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 362
    sget-object v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastBatteryMeterView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->changeFilterColor(Z)V

    .line 363
    sput-object p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastBatteryMeterView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    .line 364
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    iget v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    if-lez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    :cond_0
    return-void

    .line 359
    .end local v0    # "drawLevel":I
    :cond_1
    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    .restart local v0    # "drawLevel":I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 362
    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/systemui/BatteryMeterView;->onAttachedToWindow()V

    .line 98
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->registerContentObservers()V

    .line 96
    return-void
.end method

.method public onBatteryLevelChanged(IZI)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 226
    const-string/jumbo v2, "FlymeBatteryMeterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hashCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->hashCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",level="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",pluggedIn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",status="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    move-result-object v2

    invoke-interface {v2, p2, p3, p1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;->isPlugForProtection(ZII)Z

    move-result v1

    .line 228
    .local v1, "charging":Z
    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastPlugged:Z

    if-eq v2, p2, :cond_6

    .line 229
    :cond_0
    :goto_0
    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    sget v3, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-lt v2, v3, :cond_7

    sget v2, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge p1, v2, :cond_7

    .line 230
    :goto_1
    iput-boolean v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 232
    :cond_1
    iget-boolean v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eq v2, v1, :cond_8

    const/4 v0, 0x1

    .line 233
    .local v0, "change":Z
    :goto_2
    iput p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    .line 234
    iput-boolean p2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastPlugged:Z

    .line 235
    iput-boolean v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    .line 236
    invoke-virtual {p0, v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->apply(Z)V

    .line 237
    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleChargeAnimation()V

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    instance-of v2, v2, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    check-cast v2, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    iget v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    sget v6, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v3, v6, :cond_3

    iget-boolean v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v3, :cond_9

    :cond_3
    move v3, v4

    :goto_3
    const v6, -0x9bff1

    invoke-virtual {v2, v3, v6}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->setLowColorMode(ZI)V

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0    # "change":Z
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 225
    return-void

    .line 228
    :cond_6
    iget-boolean v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mCharging:Z

    if-eq v2, v1, :cond_5

    goto :goto_0

    .line 229
    :cond_7
    iget v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    sget v3, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v2, v3, :cond_1

    sget v2, Lcom/flyme/systemui/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-lt p1, v2, :cond_1

    goto :goto_1

    .line 232
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "change":Z
    goto :goto_2

    :cond_9
    move v3, v5

    .line 242
    goto :goto_3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/systemui/BatteryMeterView;->onDetachedFromWindow()V

    .line 104
    invoke-direct {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->unregisterContentObservers()V

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 252
    iget-object v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 253
    .local v1, "mDrawableWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 254
    .local v0, "heightSize":I
    iget v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mClipWidth:I

    add-int v2, v1, v3

    .line 255
    .local v2, "widthSize":I
    invoke-virtual {p0, v2, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setMeasuredDimension(II)V

    .line 251
    return-void
.end method

.method public refreshResource()V
    .locals 3

    .prologue
    const v2, 0x7f0f029b

    .line 415
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    .line 416
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_charge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    .line 417
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02058e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    .line 418
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_low:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    .line 419
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

    .line 421
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

    .line 422
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02058a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    .line 423
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->apply(Z)V

    .line 414
    return-void
.end method

.method public setBatteryPercentView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "percentView"    # Landroid/widget/TextView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V

    .line 85
    return-void
.end method

.method public setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    if-eq v0, p1, :cond_0

    .line 407
    iput p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mFilterColor:I

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 409
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 405
    :cond_0
    return-void
.end method

.method public setHidePercentAnyWay(Z)V
    .locals 0
    .param p1, "hidePercentAnyWay"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 81
    invoke-virtual {p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V

    .line 79
    return-void
.end method

.method public toggleBatteryPercent()V
    .locals 18

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 127
    const-string/jumbo v14, "statusbar_battery_percent"

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 126
    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v8, 0x1

    .line 128
    .local v8, "showBatteryPercent":Z
    :goto_0
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    if-eqz v13, :cond_6

    :cond_0
    const/4 v8, 0x0

    .line 129
    :goto_1
    sget-boolean v13, Lcom/flyme/systemui/FlymeBatteryMeterView;->DEBUG:Z

    if-eqz v13, :cond_1

    .line 130
    const-string/jumbo v13, "FlymeBatteryMeterView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mShowBatteryPercent is change,the value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    if-eq v13, v8, :cond_4

    .line 133
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v13, :cond_4

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->isShown()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mLastLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    if-eqz v8, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_2
    const/4 v13, -0x1

    const/high16 v14, -0x80000000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 141
    .local v12, "wmSpec":I
    const/4 v13, -0x1

    const/high16 v14, -0x80000000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 142
    .local v11, "whSpec":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v13, v12, v11}, Landroid/widget/TextView;->measure(II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 144
    .local v5, "measuredWidth":I
    if-eqz v8, :cond_7

    const/4 v9, 0x0

    .line 145
    .local v9, "startAlpha":I
    :goto_2
    if-eqz v8, :cond_8

    const/4 v3, 0x1

    .line 146
    .local v3, "endAlpha":I
    :goto_3
    if-eqz v8, :cond_9

    neg-int v10, v5

    .line 147
    .local v10, "startPadding":I
    :goto_4
    if-eqz v8, :cond_a

    const/4 v4, 0x0

    .line 148
    .local v4, "endPadding":I
    :goto_5
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 149
    .local v2, "animator":Landroid/animation/ValueAnimator;
    const-string/jumbo v13, "alpha"

    const/4 v14, 0x3

    new-array v14, v14, [F

    int-to-float v15, v9

    const/16 v16, 0x0

    aput v15, v14, v16

    if-eqz v8, :cond_b

    .end local v9    # "startAlpha":I
    :goto_6
    int-to-float v15, v9

    const/16 v16, 0x1

    aput v15, v14, v16

    int-to-float v15, v3

    const/16 v16, 0x2

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 150
    .local v6, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "padding"

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v10, v14, v15

    if-eqz v8, :cond_3

    move v10, v4

    .end local v10    # "startPadding":I
    :cond_3
    const/4 v15, 0x1

    aput v10, v14, v15

    const/4 v15, 0x2

    aput v4, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 151
    .local v7, "pvhWidth":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 152
    const-wide/16 v14, 0x10a

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    new-instance v13, Lcom/flyme/systemui/FlymeBatteryMeterView$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView$5;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;)V

    invoke-virtual {v2, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 165
    new-instance v13, Lcom/flyme/systemui/FlymeBatteryMeterView$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView$6;-><init>(Lcom/flyme/systemui/FlymeBatteryMeterView;)V

    invoke-virtual {v2, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 125
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    .end local v3    # "endAlpha":I
    .end local v4    # "endPadding":I
    .end local v5    # "measuredWidth":I
    .end local v6    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "pvhWidth":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "whSpec":I
    .end local v12    # "wmSpec":I
    :cond_4
    :goto_7
    return-void

    .line 126
    .end local v8    # "showBatteryPercent":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "showBatteryPercent":Z
    goto/16 :goto_0

    .line 128
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 144
    .restart local v5    # "measuredWidth":I
    .restart local v11    # "whSpec":I
    .restart local v12    # "wmSpec":I
    :cond_7
    const/4 v9, 0x1

    .restart local v9    # "startAlpha":I
    goto :goto_2

    .line 145
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "endAlpha":I
    goto :goto_3

    .line 146
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "startPadding":I
    goto :goto_4

    .line 147
    :cond_a
    neg-int v4, v5

    .restart local v4    # "endPadding":I
    goto :goto_5

    .restart local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_b
    move v9, v3

    .line 149
    goto :goto_6

    .line 178
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    .end local v3    # "endAlpha":I
    .end local v4    # "endPadding":I
    .end local v5    # "measuredWidth":I
    .end local v9    # "startAlpha":I
    .end local v10    # "startPadding":I
    .end local v11    # "whSpec":I
    .end local v12    # "wmSpec":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/flyme/systemui/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_d
    const/16 v13, 0x8

    goto :goto_8
.end method
