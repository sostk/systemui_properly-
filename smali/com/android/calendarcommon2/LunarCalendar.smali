.class public Lcom/android/calendarcommon2/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field private static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final DAYS_BEFORE_MONTH:[I

.field private static final LUNAR_INFO:[I

.field private static final TZ_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendarcommon2/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    .line 32
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    .line 44
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendarcommon2/LunarCalendar;->LUNAR_INFO:[I

    .line 316
    const-string/jumbo v0, "(19|20)[0-9]{2}-((0)?[1-9]|1[012])-((0)?[1-9]|(1|2)[0-9]|30)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/LunarCalendar;->DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x84b6bf
        0x4ae53
        0xa5748
        0x5526bd
        0xd2650
        0xd9544
        0x46aab9
        0x56a4d
        0x9ad42
        0x24aeb6
        0x4ae4a
        0x6a4dbe
        0xa4d52
        0xd2546
        0x5d52ba
        0xb544e
        0xd6a43
        0x296d37
        0x95b4b
        0x749bc1
        0x49754
        0xa4b48
        0x5b25bc
        0x6a550
        0x6d445
        0x4adab8
        0x2b64d
        0x95742
        0x2497b7
        0x4974a
        0x664b3e
        0xd4a51
        0xea546
        0x56d4ba
        0x5ad4e
        0x2b644
        0x393738
        0x92e4b
        0x7c96bf
        0xc9553
        0xd4a48
        0x6da53b
        0xb554f
        0x56a45
        0x4aadb9
        0x25d4d
        0x92d42
        0x2c95b6
        0xa954a
        0x7b4abd
        0x6ca51
        0xb5546
        0x555abb
        0x4da4e
        0xa5b43
        0x352bb8
        0x52b4c
        0x8a953f
        0xe9552
        0x6aa48
        0x6ad53c
        0xab54f
        0x4b645
        0x4a5739
        0xa574d
        0x52642
        0x3e9335
        0xd9549
        0x75aabe
        0x56a51
        0x96d46
        0x54aebb
        0x4ad4f
        0xa4d43
        0x4d26b7
        0xd254b
        0x8d52bf
        0xb5452
        0xb6a47
        0x696d3c
        0x95b50
        0x49b45
        0x4a4bb9
        0xa4b4d
        0xab25c2
        0x6a554
        0x6d449
        0x6ada3d
        0xab651
        0x95746
        0x5497bb
        0x4974f
        0x64b44
        0x36a537
        0xea54a
        0x86b2bf
        0x5ac53
        0xab647
        0x5936bc
        0x92e50
        0xc9645
        0x4d4ab8
        0xd4a4c
        0xda541
        0x25aab6
        0x56a49
        0x7aadbd
        0x25d52
        0x92d47
        0x5c95ba
        0xa954e
        0xb4a43
        0x4b5537
        0xad54a
        0x955abf
        0x4ba53
        0xa5b48
        0x652bbc
        0x52b50
        0xa9345
        0x474ab9
        0x6aa4c
        0xad541
        0x24dab6
        0x4b64a
        0x6a573d
        0xa4e51
        0xd2646
        0x5e933a
        0xd534d
        0x5aa43
        0x36b537
        0x96d4b
        0xb4aebf
        0x4ad53
        0xa4d48
        0x6d25bc
        0xd254f
        0xd5244
        0x5daa38
        0xb5a4c
        0x56d41
        0x24adb6
        0x49b4a
        0x7a4bbe
        0xa4b51
        0xaa546
        0x5b52ba
        0x6d24e
        0xada42
        0x355b37    # 4.900003E-39f
        0x9374b
        0x8497c1
        0x49753
        0x64b48
        0x66a53c
        0xea54f
        0x6aa44
        0x4ab638
        0xaae4c
        0x92e42
        0x3c9735
        0xc9649
        0x7d4abd
        0xd4a51
        0xda545
        0x55aaba
        0x56a4e
        0xa6d43
        0x452eb7
        0x52d4b
        0x8a95bf
        0xa9553
        0xb4a47
        0x6b553b
        0xad54f
        0x55a45
        0x4a5d38
        0xa5b4c
        0x52b42
        0x3a93b6
        0x69349
        0x7729bd
        0x6aa51
        0xad546
        0x54daba
        0x4b64e
        0xa5743
        0x452738
        0xd264a
        0x8e933e
        0xd5252
        0xdaa47
        0x66b53b
        0x56d4f
        0x4ae45
        0x4a4eb9
        0xa4d4c
        0xd1541
        0x2d92b5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 292
    sget-object v0, Lcom/android/calendarcommon2/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x100000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 293
    const/16 v0, 0x1d

    return v0

    .line 295
    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private static daysInLunarYear(I)I
    .locals 5
    .param p0, "year"    # I

    .prologue
    .line 272
    const/16 v2, 0x15c

    .line 273
    .local v2, "sum":I
    invoke-static {p0}, Lcom/android/calendarcommon2/LunarCalendar;->leapMonth(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/16 v2, 0x179

    .line 276
    :cond_0
    sget-object v3, Lcom/android/calendarcommon2/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x76c

    aget v3, v3, v4

    const v4, 0xfff80

    and-int v1, v3, v4

    .line 277
    .local v1, "monthInfo":I
    const/high16 v0, 0x80000

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-le v0, v3, :cond_2

    .line 278
    and-int v3, v1, v0

    if-eqz v3, :cond_1

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 277
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    return v2
.end method

.method public static leapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/android/calendarcommon2/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static final solarToLunar(III)[I
    .locals 18
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    .line 171
    const/4 v14, 0x4

    new-array v10, v14, [I

    .line 172
    .local v10, "lunarDate":[I
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v14, 0x76c

    const/4 v15, 0x0

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 173
    .local v2, "baseCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/android/calendarcommon2/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v2, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 174
    new-instance v11, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v11, v0, v14, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 175
    .local v11, "objCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/android/calendarcommon2/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v11, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 176
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 177
    .local v3, "baseDate":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 179
    .local v12, "objDate":Ljava/util/Date;
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    long-to-int v13, v14

    .line 183
    .local v13, "offset":I
    const/4 v5, 0x0

    .line 184
    .local v5, "daysOfYear":I
    const/16 v7, 0x76c

    .local v7, "iYear":I
    :goto_0
    const/16 v14, 0x833

    if-gt v7, v14, :cond_0

    if-lez v13, :cond_0

    .line 185
    invoke-static {v7}, Lcom/android/calendarcommon2/LunarCalendar;->daysInLunarYear(I)I

    move-result v5

    .line 186
    sub-int/2addr v13, v5

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 188
    :cond_0
    if-gez v13, :cond_1

    .line 189
    add-int/2addr v13, v5

    .line 190
    add-int/lit8 v7, v7, -0x1

    .line 194
    :cond_1
    const/4 v14, 0x0

    aput v7, v10, v14

    .line 196
    invoke-static {v7}, Lcom/android/calendarcommon2/LunarCalendar;->leapMonth(I)I

    move-result v9

    .line 197
    .local v9, "leapMonth":I
    const/4 v8, 0x0

    .line 199
    .local v8, "isLeap":Z
    const/4 v4, 0x0

    .line 200
    .local v4, "daysOfMonth":I
    const/4 v6, 0x1

    .local v6, "iMonth":I
    :goto_1
    const/16 v14, 0xd

    if-gt v6, v14, :cond_2

    if-lez v13, :cond_2

    .line 201
    invoke-static {v7, v6}, Lcom/android/calendarcommon2/LunarCalendar;->daysInLunarMonth(II)I

    move-result v4

    .line 202
    sub-int/2addr v13, v4

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 205
    :cond_2
    if-gez v13, :cond_3

    .line 206
    add-int/2addr v13, v4

    .line 207
    add-int/lit8 v6, v6, -0x1

    .line 211
    :cond_3
    if-eqz v9, :cond_4

    if-le v6, v9, :cond_4

    .line 212
    add-int/lit8 v6, v6, -0x1

    .line 214
    if-ne v6, v9, :cond_4

    .line 215
    const/4 v8, 0x1

    .line 219
    :cond_4
    const/4 v14, 0x1

    aput v6, v10, v14

    .line 220
    add-int/lit8 v14, v13, 0x1

    const/4 v15, 0x2

    aput v14, v10, v15

    .line 221
    if-eqz v8, :cond_5

    const/4 v14, 0x1

    :goto_2
    const/4 v15, 0x3

    aput v14, v10, v15

    .line 223
    return-object v10

    .line 221
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method
