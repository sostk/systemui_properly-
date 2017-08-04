.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$1;
    }
.end annotation


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/android/systemui/R$styleable;->DateView:[I

    .line 67
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090150

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 65
    :cond_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    throw v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->addCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 91
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->removeCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 100
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 128
    return-void
.end method

.method protected updateClock()V
    .locals 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_0

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 113
    .local v1, "l":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "fmt":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 117
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    .line 110
    :cond_1
    return-void
.end method
