.class public Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;
.super Landroid/widget/LinearLayout;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;,
        Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;
    }
.end annotation


# static fields
.field private static KEYGUARD_TYPE_SECURITY:I

.field private static KEYGUARD_TYPE_SLIDE:I

.field private static mDateColor:I

.field private static mDateHorizontal:Z

.field private static mDateLeft:I

.field private static mDateSize:F

.field private static mDateTop:I

.field private static mTimeHorizontal:Z

.field private static mTimeLeft:I

.field private static mTimeTop:I


# instance fields
.field private EASY_MODE_TIME_TEXTSIZE:I

.field private clockLayout:Landroid/widget/LinearLayout;

.field private clockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private hourLayout:Landroid/widget/LinearLayout;

.field private hourList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field private mDateBox:Landroid/view/View;

.field private mDateViewFirst:Landroid/widget/TextView;

.field private mDateViewLast:Landroid/widget/TextView;

.field protected mDefaultColor:I

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNotChineseLanguage:Z

.field private mKeyguardType:I

.field private mLastLocale:Ljava/lang/String;

.field private mLive:Z

.field mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field mMonthDayWeekFormat:Ljava/text/SimpleDateFormat;

.field mMonthFormat:Ljava/text/SimpleDateFormat;

.field private mPmString:Ljava/lang/String;

.field private mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

.field private mWeekFormatString:Ljava/lang/String;

.field private minuteLayout:Landroid/widget/LinearLayout;

.field private minuteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeLeft:I

    .line 102
    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeTop:I

    .line 103
    sput-boolean v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeHorizontal:Z

    .line 104
    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateLeft:I

    .line 105
    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTop:I

    .line 106
    sput-boolean v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateHorizontal:Z

    .line 107
    const/high16 v0, 0x41600000    # 14.0f

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    .line 108
    const/4 v0, -0x1

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateColor:I

    .line 110
    sput v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->KEYGUARD_TYPE_SLIDE:I

    .line 111
    const/4 v0, 0x2

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->KEYGUARD_TYPE_SECURITY:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    .line 115
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    .line 120
    iput-boolean v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIsNotChineseLanguage:Z

    .line 129
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLastLocale:Ljava/lang/String;

    .line 153
    new-instance v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$1;-><init>(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    const-string/jumbo v2, "DigitalClockAndWeatherForLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLastLocale:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh-CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh-TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 188
    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string/jumbo v3, "zh-HK"

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 188
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIsNotChineseLanguage:Z

    .line 191
    const-string/jumbo v0, "DigitalClockAndWeatherForLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EASY_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsNotChineseLanguage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIsNotChineseLanguage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->initRes()V

    .line 184
    return-void
.end method

.method private getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 3
    .param p1, "formatString"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 676
    .local v0, "currentLocale":Ljava/util/Locale;
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v2
.end method

.method private initRes()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 652
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 653
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 654
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    sget v2, Lcom/android/keyguard/R$layout;->mz_keyguard_screen_weather_and_date_widget_core_intl:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 659
    .local v1, "view":Landroid/view/View;
    :goto_0
    sget v2, Lcom/android/keyguard/R$id;->clock1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    .line 660
    sget v2, Lcom/android/keyguard/R$id;->hour:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourLayout:Landroid/widget/LinearLayout;

    .line 661
    sget v2, Lcom/android/keyguard/R$id;->minute:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteLayout:Landroid/widget/LinearLayout;

    .line 662
    sget v2, Lcom/android/keyguard/R$id;->lock_date:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    .line 663
    sget v2, Lcom/android/keyguard/R$id;->lock_week:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    .line 664
    sget v2, Lcom/android/keyguard/R$id;->date_box:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    .line 665
    sget v2, Lcom/android/keyguard/R$id;->am_pm:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    .line 666
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->initializeAmPm()V

    .line 651
    return-void

    .line 657
    .local v1, "view":Landroid/view/View;
    :cond_0
    sget v2, Lcom/android/keyguard/R$layout;->mz_keyguard_screen_weather_and_date_widget_core:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    goto :goto_0
.end method

.method private initializeAmPm()V
    .locals 2

    .prologue
    .line 681
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "ampm":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmString:Ljava/lang/String;

    .line 683
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mPmString:Ljava/lang/String;

    .line 680
    return-void
.end method

.method private isNotChineseLanguage()Z
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 670
    if-nez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 670
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setClockImageList(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newTime"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 411
    const/4 v0, 0x0

    .end local v1    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 412
    if-ltz v0, :cond_1

    if-ge v0, v4, :cond_1

    .line 413
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getTimeView(IC)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    if-le v0, v3, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 418
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getTimeView(IC)Landroid/view/View;

    move-result-object v1

    .line 419
    .restart local v1    # "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "kk:mm"

    :goto_0
    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "hh:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 375
    .local v0, "shouldShowAmPm":Z
    :goto_1
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    return-void

    .line 373
    .end local v0    # "shouldShowAmPm":Z
    :cond_1
    const-string/jumbo v1, "hh:mm"

    goto :goto_0

    .line 374
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "shouldShowAmPm":Z
    goto :goto_1

    .line 375
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected addImageViewToClock()V
    .locals 3

    .prologue
    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 365
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 354
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public changeTimeLanguage()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_week:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_month_day:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 624
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->mz_date_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayWeekFormat:Ljava/text/SimpleDateFormat;

    .line 625
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_month:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthFormat:Ljava/text/SimpleDateFormat;

    .line 626
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->initializeAmPm()V

    .line 627
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 621
    return-void
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 614
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeView(IC)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I
    .param p2, "num"    # C

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 491
    .local v1, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    .line 492
    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 494
    const/16 v2, 0x3a

    if-eq p2, v2, :cond_0

    .line 495
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    const/4 v3, 0x0

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 501
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 605
    :goto_1
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 606
    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 609
    :cond_1
    return-object v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    move-object v2, v1

    .line 505
    check-cast v2, Landroid/widget/ImageView;

    .line 506
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_0:I

    .line 505
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    move-object v2, v1

    .line 509
    check-cast v2, Landroid/widget/ImageView;

    .line 510
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_1:I

    .line 509
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    move-object v2, v1

    .line 513
    check-cast v2, Landroid/widget/ImageView;

    .line 514
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_2:I

    .line 513
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_4
    move-object v2, v1

    .line 517
    check-cast v2, Landroid/widget/ImageView;

    .line 518
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_3:I

    .line 517
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_5
    move-object v2, v1

    .line 521
    check-cast v2, Landroid/widget/ImageView;

    .line 522
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_4:I

    .line 521
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_6
    move-object v2, v1

    .line 525
    check-cast v2, Landroid/widget/ImageView;

    .line 526
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_5:I

    .line 525
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_7
    move-object v2, v1

    .line 529
    check-cast v2, Landroid/widget/ImageView;

    .line 530
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_6:I

    .line 529
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_8
    move-object v2, v1

    .line 533
    check-cast v2, Landroid/widget/ImageView;

    .line 534
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_7:I

    .line 533
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_9
    move-object v2, v1

    .line 537
    check-cast v2, Landroid/widget/ImageView;

    .line 538
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_8:I

    .line 537
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_a
    move-object v2, v1

    .line 541
    check-cast v2, Landroid/widget/ImageView;

    .line 542
    sget v3, Lcom/android/keyguard/R$drawable;->lock_time_num_9:I

    .line 541
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_b
    move-object v2, v1

    .line 545
    check-cast v2, Landroid/widget/ImageView;

    .line 546
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_colon:I

    .line 545
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 553
    :pswitch_c
    packed-switch p2, :pswitch_data_2

    goto :goto_1

    :pswitch_d
    move-object v2, v1

    .line 555
    check-cast v2, Landroid/widget/ImageView;

    .line 556
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_0:I

    .line 555
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_e
    move-object v2, v1

    .line 559
    check-cast v2, Landroid/widget/ImageView;

    .line 560
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_1:I

    .line 559
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_f
    move-object v2, v1

    .line 563
    check-cast v2, Landroid/widget/ImageView;

    .line 564
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_2:I

    .line 563
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_10
    move-object v2, v1

    .line 567
    check-cast v2, Landroid/widget/ImageView;

    .line 568
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_3:I

    .line 567
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_11
    move-object v2, v1

    .line 571
    check-cast v2, Landroid/widget/ImageView;

    .line 572
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_4:I

    .line 571
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_12
    move-object v2, v1

    .line 575
    check-cast v2, Landroid/widget/ImageView;

    .line 576
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_5:I

    .line 575
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_13
    move-object v2, v1

    .line 579
    check-cast v2, Landroid/widget/ImageView;

    .line 580
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_6:I

    .line 579
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_14
    move-object v2, v1

    .line 583
    check-cast v2, Landroid/widget/ImageView;

    .line 584
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_7:I

    .line 583
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_15
    move-object v2, v1

    .line 587
    check-cast v2, Landroid/widget/ImageView;

    .line 588
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_8:I

    .line 587
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_16
    move-object v2, v1

    .line 591
    check-cast v2, Landroid/widget/ImageView;

    .line 592
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_9:I

    .line 591
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_17
    move-object v2, v1

    .line 595
    check-cast v2, Landroid/widget/ImageView;

    .line 596
    sget v3, Lcom/android/keyguard/R$drawable;->lock_minute_num_colon:I

    .line 595
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 503
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 553
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method protected initThemeValues()V
    .locals 2

    .prologue
    .line 427
    sget v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->KEYGUARD_TYPE_SLIDE:I

    iput v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mKeyguardType:I

    .line 428
    iget v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mKeyguardType:I

    sget v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->KEYGUARD_TYPE_SLIDE:I

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getSlideDetails()Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    .line 430
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mTimeLeft:I

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeLeft:I

    .line 431
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mTimeTop:I

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeTop:I

    .line 432
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget-boolean v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mTimeHorizontal:Z

    sput-boolean v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeHorizontal:Z

    .line 433
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mDateLeft:I

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateLeft:I

    .line 434
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mDateTop:I

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTop:I

    .line 435
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget-boolean v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mDateHorizontal:Z

    sput-boolean v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateHorizontal:Z

    .line 436
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mDateSize:F

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    .line 437
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    iget v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;->mDateColor:I

    sput v0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateColor:I

    .line 426
    :cond_0
    return-void
.end method

.method public loadEasyModeView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    .line 271
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 272
    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_easy_mode_data_textsize:I

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 269
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 274
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    .line 276
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_easy_mode_data_textsize:I

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 274
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_easy_mode_data_textsize:I

    .line 282
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 280
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public loadNormalModeView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadEasyModeView()V

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    .line 256
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 245
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    sget v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    sget v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 253
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    sget v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public loadSaveModeView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 260
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 220
    const-string/jumbo v1, "DigitalClockAndWeatherForLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAttachedToWindow mAttached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-eqz v1, :cond_0

    .line 222
    return-void

    .line 223
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 225
    iget-boolean v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v1, :cond_1

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;-><init>(Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;)V

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 237
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 238
    iget-object v3, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 237
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadEasyModeView()V

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 218
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 643
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 644
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->isNotChineseLanguage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIsNotChineseLanguage:Z

    .line 645
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLastLocale:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->changeTimeLanguage()V

    .line 648
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLastLocale:Ljava/lang/String;

    .line 642
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 293
    iget-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 297
    iget-boolean v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 198
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_week:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_month_day:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 200
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->mz_date_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayWeekFormat:Ljava/text/SimpleDateFormat;

    .line 201
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->lock_month:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthFormat:Ljava/text/SimpleDateFormat;

    .line 203
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    .line 210
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    .line 212
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_easy_mode_time_textsize:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->EASY_MODE_TIME_TEXTSIZE:I

    .line 215
    iget-object v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDefaultColor:I

    .line 196
    return-void
.end method

.method public setColorFilterForHolster(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 631
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 635
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 634
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 636
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 637
    .local v0, "newTime":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setClockImageList(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->addImageViewToClock()V

    .line 630
    return-void
.end method

.method protected setThemeValues()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 447
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 448
    sget-boolean v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeHorizontal:Z

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 453
    :goto_0
    sget-boolean v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateHorizontal:Z

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 459
    :goto_1
    const/4 v0, 0x0

    .line 460
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 461
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 466
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 467
    sget v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeLeft:I

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeTop:I

    sget v4, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeLeft:I

    neg-int v4, v4

    sget v5, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mTimeTop:I

    neg-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 468
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 472
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateLeft:I

    sget v3, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTop:I

    sget v4, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateLeft:I

    neg-int v4, v4

    sget v5, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTop:I

    neg-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 473
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    return-void

    .line 451
    .end local v1    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 463
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_2
.end method

.method protected updateColors(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDefaultColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDefaultColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDefaultColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, "newTime":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setClockImageList(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->addImageViewToClock()V

    .line 136
    return-void

    .line 143
    .end local v0    # "newTime":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 147
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 146
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method updateTime()V
    .locals 12

    .prologue
    .line 309
    iget-boolean v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v8, :cond_0

    .line 310
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 312
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 313
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->hourList:Ljava/util/ArrayList;

    .line 314
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->minuteList:Ljava/util/ArrayList;

    .line 316
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 320
    .local v4, "newTime":Ljava/lang/CharSequence;
    invoke-direct {p0, v4}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setClockImageList(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->addImageViewToClock()V

    .line 323
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "monthDayStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthDayWeekFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "monthDayWeekStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "vi-VN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 326
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mMonthFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "monthStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "monthTemp":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 329
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .end local v2    # "monthStr":Ljava/lang/String;
    .end local v3    # "monthTemp":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "weekTemp":Ljava/lang/String;
    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string/jumbo v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 334
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "weekStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mIsNotChineseLanguage:Z

    if-eqz v8, :cond_3

    .line 342
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 343
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_0
    iget-object v9, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mAmString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void

    .line 337
    :cond_3
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 338
    .local v5, "time":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 339
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/meizu/keyguard/KeyguardDateUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardDateUtils;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v5}, Lcom/meizu/keyguard/KeyguardDateUtils;->formatLunarDate(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ru-RU"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    :cond_5
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewFirst:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mDateViewLast:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 351
    :cond_6
    iget-object v8, p0, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->mPmString:Ljava/lang/String;

    goto :goto_1
.end method
