.class public Lcom/meizu/common/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_APP_VERSIONS:I = 0x7

.field public static final FORMAT_TYPE_CALENDAR_APPWIDGET:I = 0x8

.field public static final FORMAT_TYPE_CALL_LOGS:I = 0x5

.field public static final FORMAT_TYPE_CALL_LOGS_NEW:I = 0xb

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_MD:I = 0xa

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_YMD:I = 0x9

.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_PERSONAL_FOOTPRINT:I = 0x6

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field public static final FORMAT_TYPE_SIMPLE:I = 0xc

.field private static FormatResultLast:Ljava/lang/String; = null

.field private static FormatTypeLast:I = 0x0

.field private static final MILLISECONDS_OF_HOUR:I = 0x36ee80

.field private static NowMillisLast:J

.field private static NowTimeLast:Landroid/text/format/Time;

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 148
    sput-wide v0, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    const/4 v0, -0x1

    .line 149
    sput v0, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "type"    # I

    .prologue
    .line 165
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 166
    .local v22, "then":Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v12, 0x0

    .line 168
    .local v12, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 169
    .local v13, "nowmillis":Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 171
    .local v6, "is24":Z
    sget v24, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v19, 0x0

    .line 172
    .local v19, "sameType":Z
    :goto_0
    sput p3, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    .line 174
    const/16 v18, 0x0

    .line 175
    .local v18, "sameNowDay":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-eqz v24, :cond_5

    .line 179
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-wide v26, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    cmp-long v24, v24, v26

    if-gez v24, :cond_6

    const/16 v24, 0x1

    :goto_1
    if-nez v24, :cond_8

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-wide v26, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    const-wide/32 v28, 0x5265c00

    add-long v26, v26, v28

    cmp-long v24, v24, v26

    if-ltz v24, :cond_7

    const/16 v24, 0x1

    :goto_2
    if-nez v24, :cond_8

    .line 180
    const/16 v18, 0x1

    .line 185
    :goto_3
    if-eqz v18, :cond_9

    .line 192
    sget-object v12, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 195
    .local v12, "now":Landroid/text/format/Time;
    :goto_4
    const/16 v20, 0x0

    .line 196
    .local v20, "sameWhenDay":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-nez v24, :cond_a

    .line 200
    .end local v20    # "sameWhenDay":Z
    :goto_5
    const/16 v21, 0x0

    .line 201
    .local v21, "sameWhenMonth":Z
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-nez v24, :cond_d

    .line 205
    .end local v21    # "sameWhenMonth":Z
    :goto_6
    sput-object v22, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 206
    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->weekDay:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 207
    .local v23, "weekStart":I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    const/4 v7, 0x0

    .line 208
    .local v7, "isBeforeYear":Z
    :goto_7
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    :cond_0
    const/4 v9, 0x0

    .line 209
    .local v9, "isThisYear":Z
    :goto_8
    if-nez v9, :cond_12

    :cond_1
    const/4 v10, 0x0

    .line 210
    .local v10, "isToday":Z
    :goto_9
    if-nez v9, :cond_13

    :cond_2
    const/4 v11, 0x0

    .line 211
    .local v11, "isYesterday":Z
    :goto_a
    if-nez v9, :cond_14

    :cond_3
    const/4 v8, 0x0

    .line 212
    .local v8, "isThisWeek":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .local v16, "resources":Landroid/content/res/Resources;
    const-string/jumbo v5, ""

    .local v5, "currentTime":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 215
    .local v4, "currentDay":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    const/16 v24, 0x0

    .line 539
    return-object v24

    .end local v4    # "currentDay":Ljava/lang/String;
    .end local v5    # "currentTime":Ljava/lang/String;
    .end local v7    # "isBeforeYear":Z
    .end local v8    # "isThisWeek":Z
    .end local v9    # "isThisYear":Z
    .end local v10    # "isToday":Z
    .end local v11    # "isYesterday":Z
    .end local v16    # "resources":Landroid/content/res/Resources;
    .end local v18    # "sameNowDay":Z
    .end local v19    # "sameType":Z
    .end local v23    # "weekStart":I
    .local v12, "now":Landroid/text/format/Time;
    :cond_4
    const/16 v19, 0x1

    .line 171
    goto/16 :goto_0

    .line 176
    .restart local v18    # "sameNowDay":Z
    .restart local v19    # "sameType":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 179
    :cond_6
    const/16 v24, 0x0

    goto :goto_1

    :cond_7
    const/16 v24, 0x0

    goto :goto_2

    .line 182
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 186
    :cond_9
    new-instance v12, Landroid/text/format/Time;

    .end local v12    # "now":Landroid/text/format/Time;
    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 187
    .local v12, "now":Landroid/text/format/Time;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 189
    sput-object v12, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 190
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x3c

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x3c

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v27, v0

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    sput-wide v24, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    goto/16 :goto_4

    .line 197
    .restart local v20    # "sameWhenDay":Z
    :cond_a
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    :cond_b
    const/16 v20, 0x0

    .local v20, "sameWhenDay":Z
    :goto_c
    goto/16 :goto_5

    .local v20, "sameWhenDay":Z
    :cond_c
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/16 v20, 0x1

    goto :goto_c

    .line 202
    .end local v20    # "sameWhenDay":Z
    .restart local v21    # "sameWhenMonth":Z
    :cond_d
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    :cond_e
    const/16 v21, 0x0

    .local v21, "sameWhenMonth":Z
    :goto_d
    goto/16 :goto_6

    .local v21, "sameWhenMonth":Z
    :cond_f
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    goto :goto_d

    .end local v21    # "sameWhenMonth":Z
    .restart local v23    # "weekStart":I
    :cond_10
    const/4 v7, 0x1

    .line 207
    goto/16 :goto_7

    .line 208
    .restart local v7    # "isBeforeYear":Z
    :cond_11
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_8

    .line 209
    .restart local v9    # "isThisYear":Z
    :cond_12
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_9

    .line 210
    .restart local v10    # "isToday":Z
    :cond_13
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_a

    .line 211
    .restart local v11    # "isYesterday":Z
    :cond_14
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v12, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_b

    .line 217
    .restart local v4    # "currentDay":Ljava/lang/String;
    .restart local v5    # "currentTime":Ljava/lang/String;
    .restart local v8    # "isThisWeek":Z
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    if-nez v10, :cond_16

    .line 223
    if-nez v11, :cond_18

    .line 225
    if-nez v8, :cond_19

    .line 232
    if-nez v9, :cond_1c

    .line 239
    if-nez v7, :cond_1f

    .line 248
    if-nez v18, :cond_22

    .line 251
    :cond_15
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 252
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 218
    :cond_16
    if-nez v6, :cond_17

    .line 221
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 219
    :cond_17
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 224
    :cond_18
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 227
    :cond_19
    if-nez v18, :cond_1b

    .line 230
    :cond_1a
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 231
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 227
    :cond_1b
    if-eqz v20, :cond_1a

    if-eqz v19, :cond_1a

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 228
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 234
    :cond_1c
    if-nez v18, :cond_1e

    .line 237
    :cond_1d
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 238
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 234
    :cond_1e
    if-eqz v20, :cond_1d

    if-eqz v19, :cond_1d

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1d

    .line 235
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 240
    :cond_1f
    if-nez v18, :cond_21

    .line 243
    :cond_20
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 244
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 240
    :cond_21
    if-eqz v20, :cond_20

    if-eqz v19, :cond_20

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_20

    .line 241
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 248
    :cond_22
    if-eqz v20, :cond_15

    if-eqz v19, :cond_15

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 249
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 255
    :pswitch_1
    if-nez v10, :cond_23

    .line 261
    if-nez v11, :cond_25

    .line 263
    if-nez v8, :cond_26

    .line 269
    if-nez v9, :cond_28

    .line 275
    if-nez v7, :cond_2a

    .line 282
    if-nez v6, :cond_2d

    .line 285
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 256
    :cond_23
    if-nez v6, :cond_24

    .line 259
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 257
    :cond_24
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 262
    :cond_25
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 264
    :cond_26
    if-nez v6, :cond_27

    .line 267
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 265
    :cond_27
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 270
    :cond_28
    if-nez v6, :cond_29

    .line 273
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 271
    :cond_29
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 276
    :cond_2a
    if-nez v18, :cond_2c

    .line 279
    :cond_2b
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 280
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 276
    :cond_2c
    if-eqz v20, :cond_2b

    if-eqz v19, :cond_2b

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2b

    .line 277
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 283
    :cond_2d
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 289
    :pswitch_2
    if-nez v9, :cond_2e

    .line 295
    if-nez v7, :cond_30

    .line 302
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 290
    :cond_2e
    if-nez v6, :cond_2f

    .line 293
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 291
    :cond_2f
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 296
    :cond_30
    if-nez v18, :cond_32

    .line 299
    :cond_31
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 300
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 296
    :cond_32
    if-eqz v20, :cond_31

    if-eqz v19, :cond_31

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_31

    .line 297
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 305
    :pswitch_3
    if-nez v10, :cond_33

    .line 311
    if-nez v11, :cond_35

    .line 313
    if-nez v9, :cond_36

    .line 319
    if-nez v7, :cond_38

    .line 326
    if-nez v6, :cond_3b

    .line 329
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 306
    :cond_33
    if-nez v6, :cond_34

    .line 309
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 307
    :cond_34
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 312
    :cond_35
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 314
    :cond_36
    if-nez v6, :cond_37

    .line 317
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 315
    :cond_37
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 320
    :cond_38
    if-nez v18, :cond_3a

    .line 323
    :cond_39
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 324
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 320
    :cond_3a
    if-eqz v20, :cond_39

    if-eqz v19, :cond_39

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_39

    .line 321
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 327
    :cond_3b
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 333
    :pswitch_4
    if-nez v10, :cond_3d

    .line 339
    if-nez v11, :cond_3f

    .line 341
    if-nez v9, :cond_40

    .line 348
    if-nez v7, :cond_43

    .line 356
    if-nez v18, :cond_46

    .line 359
    :cond_3c
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 360
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 334
    :cond_3d
    if-nez v6, :cond_3e

    .line 337
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 335
    :cond_3e
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 340
    :cond_3f
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 343
    :cond_40
    if-nez v18, :cond_42

    .line 346
    :cond_41
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 347
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 343
    :cond_42
    if-eqz v20, :cond_41

    if-eqz v19, :cond_41

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_41

    .line 344
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 349
    :cond_43
    if-nez v18, :cond_45

    .line 352
    :cond_44
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 353
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 349
    :cond_45
    if-eqz v20, :cond_44

    if-eqz v19, :cond_44

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_44

    .line 350
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 356
    :cond_46
    if-eqz v20, :cond_3c

    if-eqz v19, :cond_3c

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3c

    .line 357
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 363
    :pswitch_5
    if-nez v10, :cond_47

    .line 369
    if-nez v11, :cond_49

    .line 375
    if-nez v8, :cond_4b

    .line 381
    if-nez v9, :cond_4d

    .line 388
    if-nez v6, :cond_4f

    .line 391
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 393
    :goto_e
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 364
    :cond_47
    if-nez v6, :cond_48

    .line 367
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 365
    :cond_48
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 370
    :cond_49
    if-nez v6, :cond_4a

    .line 373
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget v25, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 371
    :cond_4a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget v25, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 376
    :cond_4b
    if-nez v6, :cond_4c

    .line 379
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 377
    :cond_4c
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 382
    :cond_4d
    if-nez v6, :cond_4e

    .line 385
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 383
    :cond_4e
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 389
    :cond_4f
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_e

    .line 396
    :pswitch_6
    if-nez v10, :cond_51

    .line 414
    if-nez v11, :cond_56

    .line 416
    if-nez v9, :cond_57

    .line 423
    if-nez v7, :cond_5a

    .line 431
    if-nez v18, :cond_5d

    .line 434
    :cond_50
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 435
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 397
    :cond_51
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v14, v24, p1

    .local v14, "offsetMilliSecounds":J
    const-wide/32 v24, 0x36ee80

    .line 399
    cmp-long v24, v14, v24

    if-gez v24, :cond_52

    const/16 v24, 0x1

    :goto_f
    if-nez v24, :cond_54

    .line 400
    long-to-int v0, v14

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x3c

    div-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .local v17, "returnValue":I
    const/16 v24, 0x1

    .line 401
    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_53

    .line 404
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_before:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ","

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 399
    .end local v17    # "returnValue":I
    :cond_52
    const/16 v24, 0x0

    goto :goto_f

    .line 402
    .restart local v17    # "returnValue":I
    :cond_53
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_a_hour_before:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 407
    .end local v17    # "returnValue":I
    :cond_54
    long-to-int v0, v14

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .restart local v17    # "returnValue":I
    const/16 v24, 0x1

    .line 408
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_55

    .line 411
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_minute_before:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, ","

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 409
    :cond_55
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_a_minute_before:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 415
    .end local v14    # "offsetMilliSecounds":J
    .end local v17    # "returnValue":I
    :cond_56
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 418
    :cond_57
    if-nez v18, :cond_59

    .line 421
    :cond_58
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 422
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 418
    :cond_59
    if-eqz v20, :cond_58

    if-eqz v19, :cond_58

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_58

    .line 419
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 424
    :cond_5a
    if-nez v18, :cond_5c

    .line 427
    :cond_5b
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 428
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 424
    :cond_5c
    if-eqz v20, :cond_5b

    if-eqz v19, :cond_5b

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5b

    .line 425
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 431
    :cond_5d
    if-eqz v20, :cond_50

    if-eqz v19, :cond_50

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_50

    .line 432
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 439
    :pswitch_7
    if-nez v18, :cond_5f

    .line 442
    :cond_5e
    if-nez v9, :cond_60

    .line 446
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 447
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 439
    :cond_5f
    if-eqz v20, :cond_5e

    if-eqz v19, :cond_5e

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5e

    .line 440
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 443
    :cond_60
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 444
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 450
    :pswitch_8
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_62

    .line 459
    if-nez v18, :cond_65

    .line 462
    :cond_61
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 463
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 452
    :cond_62
    if-nez v18, :cond_64

    .line 455
    :cond_63
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 456
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 452
    :cond_64
    if-eqz v20, :cond_63

    if-eqz v19, :cond_63

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_63

    .line 453
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 459
    :cond_65
    if-eqz v21, :cond_61

    if-eqz v19, :cond_61

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_61

    .line 460
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 467
    :pswitch_9
    if-nez v18, :cond_67

    .line 470
    :cond_66
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 471
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 467
    :cond_67
    if-eqz v20, :cond_66

    if-eqz v19, :cond_66

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_66

    .line 468
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 474
    :pswitch_a
    if-nez v18, :cond_69

    .line 477
    :cond_68
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 478
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 474
    :cond_69
    if-eqz v20, :cond_68

    if-eqz v19, :cond_68

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_68

    .line 475
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 480
    :pswitch_b
    if-nez v10, :cond_6b

    .line 486
    if-nez v11, :cond_6d

    .line 488
    if-nez v8, :cond_6e

    .line 490
    if-nez v9, :cond_6f

    .line 493
    if-nez v18, :cond_70

    .line 497
    :cond_6a
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 498
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 481
    :cond_6b
    if-nez v6, :cond_6c

    .line 484
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 482
    :cond_6c
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 487
    :cond_6d
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 489
    :cond_6e
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 491
    :cond_6f
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 493
    :cond_70
    if-eqz v20, :cond_6a

    if-eqz v19, :cond_6a

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6a

    .line 494
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 501
    :pswitch_c
    if-nez v10, :cond_72

    .line 507
    if-nez v11, :cond_74

    .line 509
    if-nez v8, :cond_75

    .line 516
    if-nez v9, :cond_78

    .line 523
    if-nez v7, :cond_7b

    .line 532
    if-nez v18, :cond_7e

    .line 535
    :cond_71
    sget v24, Lcom/meizu/common/R$string;->mc_simple_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 536
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 502
    :cond_72
    if-nez v6, :cond_73

    .line 505
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 503
    :cond_73
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 508
    :cond_74
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    return-object v24

    .line 511
    :cond_75
    if-nez v18, :cond_77

    .line 514
    :cond_76
    sget v24, Lcom/meizu/common/R$string;->mc_pattern_week:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 515
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 511
    :cond_77
    if-eqz v20, :cond_76

    if-eqz v19, :cond_76

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_76

    .line 512
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 518
    :cond_78
    if-nez v18, :cond_7a

    .line 521
    :cond_79
    sget v24, Lcom/meizu/common/R$string;->mc_simple_pattern_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 522
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 518
    :cond_7a
    if-eqz v20, :cond_79

    if-eqz v19, :cond_79

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_79

    .line 519
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 524
    :cond_7b
    if-nez v18, :cond_7d

    .line 527
    :cond_7c
    sget v24, Lcom/meizu/common/R$string;->mc_simple_pattern_year_month_day:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 528
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 524
    :cond_7d
    if-eqz v20, :cond_7c

    if-eqz v19, :cond_7c

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7c

    .line 525
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 532
    :cond_7e
    if-eqz v20, :cond_71

    if-eqz v19, :cond_71

    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_71

    .line 533
    sget-object v24, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v24

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
        :pswitch_c
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "type"    # I
    .param p4, "hasTime"    # Z

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeek(Landroid/content/Context;III)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 543
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 544
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    const/4 v3, 0x7

    .line 545
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 546
    .local v1, "i":I
    add-int/lit8 v1, v1, -0x1

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$array;->mc_custom_weekday:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "weekday":[Ljava/lang/String;
    if-gez v1, :cond_1

    :cond_0
    const-string/jumbo v3, ""

    .line 549
    return-object v3

    .line 548
    :cond_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 551
    aget-object v3, v2, v1

    return-object v3
.end method
