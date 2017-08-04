.class public Lcom/meizu/keyguard/BatteryInfoView;
.super Landroid/widget/LinearLayout;
.source "BatteryInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/BatteryInfoView$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private batteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private isRegistered:Z

.field private mBattery:I

.field private mBatteryCapacity:I

.field private mBatteryLevel:I

.field private mBatteryScale:I

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRemainingBattery:Landroid/widget/TextView;

.field private mRemainingStandbyTime:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meizu/keyguard/BatteryInfoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/BatteryInfoView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/BatteryInfoView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/BatteryInfoView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryScale:I

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/BatteryInfoView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingBattery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/BatteryInfoView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/BatteryInfoView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/keyguard/BatteryInfoView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryScale:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/BatteryInfoView;I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/BatteryInfoView;->setBatteryImage(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/BatteryInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/BatteryInfoView;->setRemainingStandbyTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "BatteryInfoView"

    sput-object v0, Lcom/meizu/keyguard/BatteryInfoView;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/BatteryInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    .line 29
    iput-boolean v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->isRegistered:Z

    .line 68
    new-instance v0, Lcom/meizu/keyguard/BatteryInfoView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/BatteryInfoView$1;-><init>(Lcom/meizu/keyguard/BatteryInfoView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->batteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    iput-object p1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 38
    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    .line 34
    return-void
.end method

.method private getRemainUseMinuteTime(I)I
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 180
    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    mul-int/lit16 v0, p1, 0xd16

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 183
    :cond_0
    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    mul-int/lit16 v0, p1, 0xc1c

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 186
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    mul-int/lit16 v0, p1, 0x9c4

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 189
    :cond_2
    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    mul-int/lit16 v0, p1, 0xc1c

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 192
    :cond_3
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    mul-int/lit16 v0, p1, 0x960

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 195
    :cond_4
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    mul-int/lit16 v0, p1, 0x76c

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x32

    return v0

    .line 198
    :cond_5
    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    if-nez v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    .line 201
    :cond_6
    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x23

    return v0
.end method

.method private getRemainUseTime(I)I
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 156
    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    mul-int/lit16 v0, p1, 0xd16

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x23

    return v0

    .line 159
    :cond_0
    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    mul-int/lit16 v0, p1, 0xc1c

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x1e

    return v0

    .line 162
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    mul-int/lit16 v0, p1, 0x9c4

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x1a

    return v0

    .line 165
    :cond_2
    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    mul-int/lit16 v0, p1, 0xc1c

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x1e

    return v0

    .line 168
    :cond_3
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    mul-int/lit16 v0, p1, 0x960

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x32

    return v0

    .line 171
    :cond_4
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    mul-int/lit16 v0, p1, 0x76c

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x32

    return v0

    .line 174
    :cond_5
    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    if-nez v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    .line 177
    :cond_6
    iget v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBatteryCapacity:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x23

    return v0
.end method

.method private setBatteryImage(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const/16 v6, 0x1e

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 100
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->battery_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->battery_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingBattery:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v1, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingBattery:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->battery_textpadding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 97
    return-void

    .line 102
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v1, 0x5a

    if-lt p1, v1, :cond_1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 104
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v1, 0x50

    if-lt p1, v1, :cond_2

    const/16 v1, 0x5a

    if-ge p1, v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 106
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v1, 0x46

    if-lt p1, v1, :cond_3

    const/16 v1, 0x50

    if-ge p1, v1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_70:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 108
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_4

    const/16 v1, 0x46

    if-ge p1, v1, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_60:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 110
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/16 v1, 0x32

    if-lt p1, v1, :cond_5

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_50:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 112
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-lt p1, v6, :cond_6

    const/16 v1, 0x32

    if-ge p1, v1, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_30:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 114
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    if-lt p1, v3, :cond_7

    if-ge p1, v6, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 116
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    if-lt p1, v2, :cond_8

    if-ge p1, v3, :cond_8

    .line 117
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 118
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    if-ltz p1, :cond_9

    if-ge p1, v2, :cond_9

    .line 119
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 121
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->sys_battery_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method

.method private setRemainingStandbyTime()V
    .locals 7

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "isDayMiss":Z
    const/4 v1, 0x0

    .line 130
    .local v1, "isHourMiss":Z
    const/4 v2, 0x0

    .line 132
    .local v2, "isMinuteMiss":Z
    iget v3, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v3}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseTime(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x18

    if-nez v3, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_0
    iget v3, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v3}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseTime(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x18

    if-nez v3, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 138
    :cond_1
    iget v3, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v3}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseMinuteTime(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 139
    const/4 v2, 0x1

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->remainingstandbytime:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 145
    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    .line 148
    :cond_3
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 149
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseMinuteTime(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->minute:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 127
    :goto_2
    return-void

    .line 143
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseTime(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x18

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->day:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 144
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseTime(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x18

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->hour:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 146
    :cond_6
    const/4 v2, 0x1

    .line 147
    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    const-string/jumbo v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseMinuteTime(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->minute:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 151
    :cond_8
    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    const-string/jumbo v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/keyguard/BatteryInfoView;->mBattery:I

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/BatteryInfoView;->getRemainUseMinuteTime(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->minute:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method public initViews()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/keyguard/R$id;->remainingbattery:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingBattery:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/android/keyguard/R$id;->remainingstandbytime:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mRemainingStandbyTime:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 44
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->registerReceivers()V

    .line 42
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 50
    invoke-virtual {p0}, Lcom/meizu/keyguard/BatteryInfoView;->unregisterReceivers()V

    .line 48
    return-void
.end method

.method public registerReceivers()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->isRegistered:Z

    .line 59
    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/keyguard/BatteryInfoView;->batteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/keyguard/BatteryInfoView;->batteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/keyguard/BatteryInfoView;->isRegistered:Z

    .line 62
    :cond_0
    return-void
.end method
