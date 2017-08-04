.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$1;
    }
.end annotation


# instance fields
.field private final mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/android/systemui/R$styleable;->Clock:[I

    .line 77
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    throw v1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 160
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUserId()I

    move-result v19

    .line 161
    .local v19, "userId":I
    move/from16 v0, v19

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v12

    .line 162
    .local v12, "is24":Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 164
    .local v8, "d":Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 165
    .local v2, "MAGIC1":C
    const v3, 0xef01

    .line 168
    .local v3, "MAGIC2":C
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    .line 169
    .local v9, "format":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 176
    const/4 v4, -0x1

    .line 177
    .local v4, "a":I
    const/4 v15, 0x0

    .line 178
    .local v15, "quoted":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 179
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 181
    .local v6, "c":C
    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 182
    if-eqz v15, :cond_3

    const/4 v15, 0x0

    .line 184
    :cond_0
    :goto_2
    if-nez v15, :cond_4

    const/16 v20, 0x61

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 185
    move v4, v11

    .line 190
    .end local v6    # "c":C
    :cond_1
    if-ltz v4, :cond_6

    .line 192
    move v5, v4

    .line 193
    .local v5, "b":I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 194
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 168
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v15    # "quoted":Z
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_0

    .line 182
    .restart local v4    # "a":I
    .restart local v6    # "c":C
    .restart local v11    # "i":I
    .restart local v15    # "quoted":Z
    :cond_3
    const/4 v15, 0x1

    goto :goto_2

    .line 178
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 196
    .end local v6    # "c":C
    .restart local v5    # "b":I
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 197
    const-string/jumbo v21, "a"

    .line 196
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 197
    const v21, 0xef01

    .line 196
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 197
    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 196
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v11    # "i":I
    .end local v15    # "quoted":Z
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 201
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 205
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 208
    const v20, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 209
    .local v13, "magic1":I
    const v20, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 210
    .local v14, "magic2":I
    if-ltz v13, :cond_a

    if-le v14, v13, :cond_a

    .line 211
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .local v10, "formatted":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 213
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 223
    :goto_5
    return-object v10

    .line 203
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 215
    .restart local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .restart local v13    # "magic1":I
    .restart local v14    # "magic2":I
    .restart local v16    # "result":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 216
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v20, 0x3f333333    # 0.7f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 218
    .local v18, "style":Landroid/text/style/CharacterStyle;
    const/16 v20, 0x22

    .line 217
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v10, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    .end local v18    # "style":Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 221
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 227
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    :cond_a
    return-object v16
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 235
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string/jumbo v4, "enter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "exit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0

    .line 240
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "clock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const-string/jumbo v4, "millis"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "millis":Ljava/lang/String;
    const-string/jumbo v4, "hhmm"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 244
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 246
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "hh":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 248
    .local v3, "mm":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 249
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 94
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->addCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 100
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 89
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/statusbar/policy/TimeTickTracker;->removeCallback(Lcom/flyme/systemui/statusbar/policy/TimeTickTracker$Callback;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 119
    :cond_0
    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 257
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method
