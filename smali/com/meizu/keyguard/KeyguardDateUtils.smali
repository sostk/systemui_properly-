.class public Lcom/meizu/keyguard/KeyguardDateUtils;
.super Ljava/lang/Object;
.source "KeyguardDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/KeyguardDateUtils$1;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/meizu/keyguard/KeyguardDateUtils;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private sLunarDayOfMonth:[Ljava/lang/String;

.field private sLunarMonth:[Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/meizu/keyguard/KeyguardDateUtils;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarDayOfMonth:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/KeyguardDateUtils;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarMonth:[Ljava/lang/String;

    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/meizu/keyguard/KeyguardDateUtils$1;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/KeyguardDateUtils$1;-><init>(Lcom/meizu/keyguard/KeyguardDateUtils;)V

    iput-object v1, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardDateUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/meizu/keyguard/KeyguardDateUtils;->mInstance:Lcom/meizu/keyguard/KeyguardDateUtils;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/meizu/keyguard/KeyguardDateUtils;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/KeyguardDateUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardDateUtils;->mInstance:Lcom/meizu/keyguard/KeyguardDateUtils;

    .line 34
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/KeyguardDateUtils;->mInstance:Lcom/meizu/keyguard/KeyguardDateUtils;

    return-object v0
.end method


# virtual methods
.method public formatLunarDate(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 39
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarDayOfMonth:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 40
    sget v3, Lcom/android/keyguard/R$array;->lunar_day:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarDayOfMonth:[Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarMonth:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 43
    sget v3, Lcom/android/keyguard/R$array;->lunar_month:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarMonth:[Ljava/lang/String;

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "dayWithMonth":Ljava/lang/StringBuilder;
    iget v3, p2, Landroid/text/format/Time;->year:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    .line 47
    iget v5, p2, Landroid/text/format/Time;->monthDay:I

    .line 46
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    .line 48
    .local v1, "lunarDay":[I
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarMonth:[Ljava/lang/String;

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardDateUtils;->sLunarDayOfMonth:[Ljava/lang/String;

    const/4 v4, 0x2

    aget v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
