.class public Lcom/flyme/systemui/statusbar/policy/FlymeDateView;
.super Landroid/widget/TextView;
.source "FlymeDateView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;
.implements Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;
    }
.end annotation


# instance fields
.field private mCurrentLocale:Ljava/util/Locale;

.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/FlymeDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    .line 30
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeDateView;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->addCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 64
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->updateClock()V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 72
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->removeCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 68
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->updateClock()V

    .line 111
    return-void
.end method

.method public refreshFont()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 101
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->setTypeface(Landroid/graphics/Typeface;Z)V

    goto :goto_0
.end method

.method protected updateClock()V
    .locals 8

    .prologue
    .line 77
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_1

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    .line 79
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    .line 80
    .local v1, "is24":Z
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "localDatePattern":Ljava/lang/String;
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v1, :cond_3

    const v5, 0x7f0900cd

    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "mainDatePattern":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string/jumbo v3, "%s"

    .line 83
    :cond_0
    if-nez v2, :cond_4

    const-string/jumbo v0, ""

    .line 84
    .local v0, "fmt":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 87
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "is24":Z
    .end local v2    # "localDatePattern":Ljava/lang/String;
    .end local v3    # "mainDatePattern":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 88
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    invoke-virtual {p0, v4}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput-object v4, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mLastText:Ljava/lang/String;

    .line 76
    :cond_2
    return-void

    .line 81
    .end local v4    # "text":Ljava/lang/String;
    .restart local v1    # "is24":Z
    .restart local v2    # "localDatePattern":Ljava/lang/String;
    :cond_3
    const v5, 0x7f0900cc

    goto :goto_0

    .line 83
    .restart local v3    # "mainDatePattern":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fmt":Ljava/lang/String;
    goto :goto_1
.end method
