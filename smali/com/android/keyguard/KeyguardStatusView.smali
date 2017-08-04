.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;,
        Lcom/android/keyguard/KeyguardStatusView$1;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Landroid/widget/TextClock;

.field private mDateView:Landroid/widget/TextClock;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 97
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 95
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const-string/jumbo v2, ""

    return-object v2

    .line 170
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const-string/jumbo v1, "EHm"

    .line 173
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 172
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 207
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    .line 208
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 148
    .local v0, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 145
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEnableMarquee(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    :cond_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x2

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 189
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_big_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 129
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 131
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 133
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 109
    sget v1, Lcom/android/keyguard/R$id;->alarm_status:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 110
    sget v1, Lcom/android/keyguard/R$id;->date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 111
    sget v1, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 114
    sget v1, Lcom/android/keyguard/R$id;->owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 115
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 117
    .local v0, "screenOn":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 107
    return-void
.end method

.method refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v5, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "alarm":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    .end local v0    # "alarm":Ljava/lang/String;
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method
