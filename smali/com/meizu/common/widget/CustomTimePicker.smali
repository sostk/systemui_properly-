.class public Lcom/meizu/common/widget/CustomTimePicker;
.super Landroid/widget/FrameLayout;
.source "CustomTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomTimePicker$1;,
        Lcom/meizu/common/widget/CustomTimePicker$DayPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$SavedState;,
        Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_MONTHS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CustomTimePicker"


# instance fields
.field private isLeapMonth:Z

.field private isLunar:Z

.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

.field private mDayUnit:Landroid/widget/TextView;

.field private mGregorianColor:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mLunarColor:I

.field private mLunarMonthCount:I

.field private mLunarNormalTextSize:I

.field private mLunarSelectTextSize:I

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/FrameLayout;

.field private final mPmText:Ljava/lang/String;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarNormalTextSize:I

.field private mSolarSelectTextSize:I

.field private mUnSlectColor:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 66
    iput v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 67
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 68
    iput-boolean v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 84
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    .line 85
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    .line 87
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;

    const/4 v3, 0x5

    .line 91
    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 199
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 200
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    :cond_0
    :goto_1
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 215
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "dfsAmPm":[Ljava/lang/String;
    aget-object v3, v1, v5

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;

    .line 217
    aget-object v3, v1, v6

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    .line 229
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->inflateLayout()V

    const/4 v3, -0x1

    .line 230
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CustomTimePicker;->setBackgroundColor(I)V

    .line 231
    return-void

    .line 205
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v1    # "dfsAmPm":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    iput v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    const/16 v3, 0x1e

    .line 203
    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 204
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto :goto_0

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-lt v3, v7, :cond_0

    .line 209
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 v3, v3, -0xc

    iput v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 210
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$1702(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return v0
.end method

.method static synthetic access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$2002(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doTabAnimate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v3, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 323
    .local v0, "selectcolor":I
    :goto_0
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 324
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {p0, v0, v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->setTextColor(III)V

    .line 325
    return-void

    .line 322
    .end local v0    # "selectcolor":I
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    goto :goto_0

    .restart local v0    # "selectcolor":I
    :cond_1
    move v1, v2

    .line 323
    goto :goto_1
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "days":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 739
    aget-object v1, v0, p1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 736
    return-object v1
.end method

.method private getMonthDays(IIZ)I
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLunar"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 644
    if-nez p3, :cond_0

    .line 653
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 654
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 655
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 656
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 657
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    return v3

    .line 645
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 646
    .local v2, "leapMonth":I
    const/4 v1, 0x0

    .line 647
    .local v1, "isLeapMonth":Z
    if-nez v2, :cond_1

    .line 651
    .end local v1    # "isLeapMonth":Z
    :goto_0
    invoke-static {p1, p2, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v3

    return v3

    .line 648
    .restart local v1    # "isLeapMonth":Z
    :cond_1
    if-eq v2, p2, :cond_2

    move v1, v3

    .local v1, "isLeapMonth":Z
    :goto_1
    goto :goto_0

    .local v1, "isLeapMonth":Z
    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private getMonthIndex(I)I
    .locals 4
    .param p1, "month"    # I

    .prologue
    .line 402
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    div-int/lit8 v0, v2, 0x2

    .line 404
    .local v0, "id":I
    if-gez p1, :cond_1

    .line 405
    :cond_0
    return v0

    :cond_1
    const/16 v2, 0xb

    .line 404
    if-gt p1, v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 409
    .local v1, "m":I
    if-ge p1, v1, :cond_2

    .line 412
    rsub-int/lit8 v2, v1, 0xc

    add-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 415
    :goto_0
    return v0

    .line 410
    :cond_2
    sub-int v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private inflateLayout()V
    .locals 22

    .prologue
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 240
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .local v18, "metrics":Landroid/util/DisplayMetrics;
    const/4 v2, 0x3

    .line 242
    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    .line 243
    sget v20, Lcom/meizu/common/R$layout;->mc_custom_picker_24hour:I

    .line 244
    .local v20, "resid":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_select_h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    .line 246
    .local v21, "selectItemHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    sget v2, Lcom/meizu/common/R$id;->picker_holder:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    .line 249
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 254
    :goto_1
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 259
    :goto_2
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_hour:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v6, 0xc

    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0xb

    :goto_4
    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 264
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_min:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    const/16 v6, 0x3c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 269
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_ampm:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_picker_selected_ampm_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mz_picker_unselected_ampm_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 279
    sget v2, Lcom/meizu/common/R$id;->mc_column_ampm:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 280
    .local v16, "ampmholder":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    :goto_6
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_month_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    if-nez v2, :cond_7

    .line 291
    :goto_7
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_day_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    if-nez v2, :cond_8

    .line 296
    :goto_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .local v17, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    .line 297
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    const/4 v2, 0x2

    .line 298
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    const/4 v2, 0x5

    .line 299
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    const/4 v2, 0x5

    .line 301
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 303
    .local v6, "max":I
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/meizu/common/widget/ScrollTextView;

    .line 304
    .local v19, "picker":Lcom/meizu/common/widget/ScrollTextView;
    new-instance v2, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setData(Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;IIIIIIZ)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 309
    sget v2, Lcom/meizu/common/R$id;->mc_scroll_month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    check-cast v19, Lcom/meizu/common/widget/ScrollTextView;

    .line 310
    .restart local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    new-instance v2, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    .line 311
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthIndex(I)I

    move-result v10

    const/16 v11, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->initTabView()V

    .line 318
    return-void

    .line 235
    .end local v6    # "max":I
    .end local v16    # "ampmholder":Landroid/widget/FrameLayout;
    .end local v17    # "cal":Ljava/util/Calendar;
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .end local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    .end local v20    # "resid":I
    .end local v21    # "selectItemHeight":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->removeAllViews()V

    goto/16 :goto_0

    .line 251
    .restart local v18    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v20    # "resid":I
    .restart local v21    # "selectItemHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v6, 0x18

    .line 260
    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x17

    goto/16 :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 270
    goto/16 :goto_5

    .restart local v16    # "ampmholder":Landroid/widget/FrameLayout;
    :cond_6
    const/16 v2, 0x8

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 288
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 293
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8
.end method

.method private initTabView()V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_lunar_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 331
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 333
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    .line 336
    return-void
.end method

.method private isInternational()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    :cond_0
    return v2

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method private setTabColor(IZZ)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "bLunar"    # Z
    .param p3, "doAnimate"    # Z

    .prologue
    const/4 v3, 0x1

    .local v3, "xyType":I
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "fromXValue":F
    const/4 v1, 0x0

    .line 343
    .local v1, "toXValue":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mc_custom_date_picker_unselected_tab_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 345
    .local v2, "unselectedTabColor":I
    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 355
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 347
    goto :goto_0
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-nez v0, :cond_1

    .line 536
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 530
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return v0

    .line 534
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTime([I)V
    .locals 8
    .param p1, "time"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v3, :cond_0

    .line 426
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    aput v3, p1, v1

    .line 427
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    aput v3, p1, v2

    .line 428
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    aput v3, p1, v6

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v3

    aput v3, p1, v7

    const/4 v3, 0x4

    .line 432
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, p1, v3

    const/4 v3, 0x5

    .line 433
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v4, :cond_1

    :goto_1
    aput v1, p1, v3

    .line 434
    return-void

    .line 420
    :cond_0
    new-array v0, v7, [I

    .line 421
    .local v0, "lunartime":[I
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    invoke-static {v3, v4, v5, v1}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v0

    .line 422
    aget v3, v0, v1

    aput v3, p1, v1

    .line 423
    aget v3, v0, v2

    aput v3, p1, v2

    .line 424
    aget v3, v0, v6

    aput v3, p1, v6

    goto :goto_0

    .end local v0    # "lunartime":[I
    :cond_1
    move v1, v2

    .line 433
    goto :goto_1
.end method

.method public getTimeMillis()J
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x6

    .line 437
    new-array v7, v1, [I

    .line 438
    .local v7, "time":[I
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/CustomTimePicker;->getTime([I)V

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 441
    .local v0, "c":Ljava/util/Calendar;
    aget v1, v7, v6

    const/4 v2, 0x1

    aget v2, v7, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget v3, v7, v3

    const/4 v4, 0x3

    aget v4, v7, v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 442
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 444
    .local v8, "timeInMillis":J
    return-wide v8
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1223
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1224
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_select_h:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1225
    .local v3, "selectItemHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_picker_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1227
    .local v1, "pickerHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v4, v3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 1228
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v4, v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 1229
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1230
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1232
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1233
    .local v2, "plp":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1234
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1235
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1236
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CustomTimePicker;

    .line 1243
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1244
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v8, p1

    .line 517
    check-cast v8, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .line 518
    .local v8, "ss":Lcom/meizu/common/widget/CustomTimePicker$SavedState;
    invoke-virtual {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1000(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1100(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 520
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1200(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v1

    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1300(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v2

    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1400(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v3

    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-eq v0, v9, :cond_1

    move v4, v6

    :goto_0
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1600(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-eq v0, v9, :cond_2

    move v5, v6

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 521
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-eq v0, v9, :cond_3

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 522
    .local v7, "selectColor":I
    :goto_2
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-eq v0, v9, :cond_0

    move v9, v6

    :cond_0
    invoke-direct {p0, v7, v9, v6}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 523
    return-void

    .end local v7    # "selectColor":I
    :cond_1
    move v4, v9

    .line 520
    goto :goto_0

    :cond_2
    move v5, v9

    goto :goto_1

    .line 521
    :cond_3
    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 512
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    iget-boolean v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIIIZZLcom/meizu/common/widget/CustomTimePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v7, 0x0

    .line 572
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 573
    if-eqz p1, :cond_0

    .line 577
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 579
    .local v2, "is24Hour":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 584
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v2, v4, :cond_1

    .line 590
    :goto_1
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 599
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 600
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 602
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 606
    .local v3, "selectColor":I
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 607
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 608
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 609
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 610
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 612
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    return-void

    .line 574
    .end local v2    # "is24Hour":Z
    .end local v3    # "selectColor":I
    :cond_0
    return-void

    .line 582
    .restart local v2    # "is24Hour":Z
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v1

    .line 586
    .local v1, "hour":I
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v1, v4, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    goto :goto_1

    .line 591
    .end local v1    # "hour":I
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 592
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 593
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 595
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 596
    .restart local v3    # "selectColor":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    invoke-direct {p0, v3, v4, v7}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    goto :goto_2
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 557
    if-nez p1, :cond_1

    .line 558
    :cond_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 560
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 561
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v0

    .line 566
    .local v0, "hour":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 567
    return-void
.end method

.method public setLunar(Z)V
    .locals 9
    .param p1, "isLunar"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 662
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->doTabAnimate()V

    const/4 v0, 0x4

    .line 664
    new-array v6, v0, [I

    .line 665
    .local v6, "date":[I
    new-array v7, v8, [I

    .line 666
    .local v7, "monthData":[I
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    aput v0, v6, v4

    .line 667
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, v7}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getMonth([I)I

    move-result v0

    aput v0, v6, v5

    .line 668
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v8

    const/4 v0, 0x3

    .line 669
    aput v4, v6, v0

    .line 671
    if-nez p1, :cond_1

    .line 674
    aget v1, v6, v4

    aget v2, v6, v5

    aget v3, v6, v8

    aget v0, v7, v5

    if-eq v0, v5, :cond_2

    move v0, v4

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v6

    .line 678
    :goto_1
    aget v1, v6, v4

    aget v2, v6, v5

    aget v3, v6, v8

    aget v0, v7, v5

    if-eq v0, v5, :cond_0

    move v5, v4

    :cond_0
    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZ)V

    .line 679
    return-void

    .line 672
    :cond_1
    aget v0, v6, v4

    aget v1, v6, v5

    aget v2, v6, v8

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v6

    goto :goto_1

    :cond_2
    move v0, v5

    .line 674
    goto :goto_0
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 630
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v0, :cond_0

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    goto :goto_0
.end method

.method public updateDate(IIIZZ)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "islunar"    # Z
    .param p5, "isleapmonth"    # Z

    .prologue
    .line 710
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 711
    return-void
.end method

.method public updateDate(IIIZZZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "islunar"    # Z
    .param p5, "isleapmonth"    # Z
    .param p6, "doAnimate"    # Z

    .prologue
    .line 683
    iput-boolean p4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    .line 684
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    .line 685
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    .line 686
    iput p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    .line 688
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    invoke-virtual {v0, v1, v2, v3, p5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setMonth(IIIZ)V

    .line 690
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v1, v2, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 696
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 702
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 703
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 706
    :goto_1
    return-void

    .line 691
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v0, v1, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    .line 692
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v1, v2, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 698
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 699
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateTime(IIZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "is24hour"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "updateHourPicker":Z
    const/4 v1, 0x0

    .line 361
    .local v1, "updateMinPicker":Z
    if-nez p3, :cond_1

    .line 367
    iput-boolean v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 368
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-ne v4, p1, :cond_2

    .line 372
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    .line 378
    :cond_0
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    if-ne v4, p2, :cond_4

    .line 383
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne p3, v4, :cond_5

    .line 388
    :goto_3
    if-nez v0, :cond_6

    .line 391
    :goto_4
    if-nez v1, :cond_7

    .line 394
    :goto_5
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v4, :cond_8

    .line 399
    :goto_6
    return-void

    .line 362
    :cond_1
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 364
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    goto :goto_1

    .line 369
    :cond_2
    const/4 v0, 0x1

    .line 370
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    goto :goto_0

    .line 373
    :cond_3
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 374
    iput-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    goto :goto_1

    .line 379
    :cond_4
    const/4 v1, 0x1

    .line 380
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    goto :goto_2

    .line 384
    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 385
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->inflateLayout()V

    goto :goto_3

    .line 389
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_4

    .line 392
    :cond_7
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_5

    .line 395
    :cond_8
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-nez v5, :cond_9

    :goto_7
    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_6

    :cond_9
    move v2, v3

    goto :goto_7
.end method

.method public updateTimeMillis(JZ)V
    .locals 7
    .param p1, "theTime"    # J
    .param p3, "doAnimate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 715
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 716
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v0, p0

    move v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 717
    return-void
.end method
