.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "UTC"

    .line 30
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 345
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    .line 346
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v0, v2

    .local v0, "c":C
    const/16 v2, 0x30

    .line 347
    if-ge v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 34
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 126
    .local v13, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    .line 129
    .local v22, "offset":I
    add-int/lit8 v23, v22, 0x4

    .end local v22    # "offset":I
    .local v23, "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v30

    .line 130
    .local v30, "year":I
    const/16 v31, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_6

    .line 135
    :goto_0
    add-int/lit8 v22, v23, 0x2

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v20

    .line 136
    .local v20, "month":I
    const/16 v31, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_7

    move/from16 v23, v22

    .line 141
    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    :goto_1
    add-int/lit8 v22, v23, 0x2

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .local v7, "day":I
    const/16 v16, 0x0

    .local v16, "hour":I
    const/16 v19, 0x0

    .local v19, "minutes":I
    const/16 v25, 0x0

    .local v25, "seconds":I
    const/16 v18, 0x0

    .line 149
    .local v18, "milliseconds":I
    const/16 v31, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v15

    .line 151
    .local v15, "hasT":Z
    if-eqz v15, :cond_8

    .line 158
    :cond_0
    if-nez v15, :cond_9

    .line 200
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    const/16 v26, 0x0

    .line 205
    .local v26, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v28, v0

    .local v28, "timezoneIndicator":C
    const/16 v31, 0x5a

    .line 207
    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    const/16 v31, 0x2b

    .line 210
    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 211
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 214
    .local v29, "timezoneOffset":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 216
    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    add-int v22, v22, v31

    const-string/jumbo v31, "+0000"

    .line 218
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 219
    :cond_4
    sget-object v26, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 248
    .end local v29    # "timezoneOffset":Ljava/lang/String;
    .local v26, "timezone":Ljava/util/TimeZone;
    :cond_5
    :goto_3
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/16 v31, 0x1

    .line 250
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0x2

    .line 251
    add-int/lit8 v32, v20, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0x5

    .line 252
    move/from16 v0, v31

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xb

    .line 253
    move/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xc

    .line 254
    move/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xd

    .line 255
    move/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xe

    .line 256
    move/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 258
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    return-object v31

    .line 131
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v15    # "hasT":Z
    .end local v16    # "hour":I
    .end local v18    # "milliseconds":I
    .end local v19    # "minutes":I
    .end local v20    # "month":I
    .end local v22    # "offset":I
    .end local v25    # "seconds":I
    .end local v26    # "timezone":Ljava/util/TimeZone;
    .end local v28    # "timezoneIndicator":C
    .restart local v23    # "offset":I
    :cond_6
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move/from16 v23, v22

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    goto/16 :goto_0

    .line 137
    .end local v23    # "offset":I
    .restart local v20    # "month":I
    .restart local v22    # "offset":I
    :cond_7
    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v22

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    goto/16 :goto_1

    .line 151
    .end local v23    # "offset":I
    .restart local v7    # "day":I
    .restart local v15    # "hasT":Z
    .restart local v16    # "hour":I
    .restart local v18    # "milliseconds":I
    .restart local v19    # "minutes":I
    .restart local v22    # "offset":I
    .restart local v25    # "seconds":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 152
    new-instance v5, Ljava/util/GregorianCalendar;

    add-int/lit8 v31, v20, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v0, v1, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .restart local v5    # "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    return-object v31

    .line 161
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_9
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v23, v22, 0x2

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 162
    const/16 v31, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_a

    .line 166
    :goto_4
    add-int/lit8 v22, v23, 0x2

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v19

    .line 167
    const/16 v31, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_b

    move/from16 v23, v22

    .line 171
    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    move/from16 v22, v23

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    goto/16 :goto_2

    .line 163
    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    :cond_a
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move/from16 v23, v22

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    goto :goto_4

    .line 168
    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    :cond_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v22

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    goto :goto_5

    .line 172
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    move/from16 v0, v31

    int-to-char v4, v0

    .local v4, "c":C
    const/16 v31, 0x5a

    .line 173
    move/from16 v0, v31

    if-ne v4, v0, :cond_e

    :cond_d
    move/from16 v22, v23

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    goto/16 :goto_2

    .end local v22    # "offset":I
    .restart local v23    # "offset":I
    :cond_e
    const/16 v31, 0x2b

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    const/16 v31, 0x2d

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    .line 174
    add-int/lit8 v22, v23, 0x2

    .end local v23    # "offset":I
    .restart local v22    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v25

    const/16 v31, 0x3b

    .line 175
    move/from16 v0, v25

    move/from16 v1, v31

    if-gt v0, v1, :cond_10

    .line 177
    :cond_f
    :goto_6
    const/16 v31, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 178
    add-int/lit8 v22, v22, 0x1

    .line 179
    add-int/lit8 v31, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v11

    .line 180
    .local v11, "endOffset":I
    add-int/lit8 v31, v22, 0x3

    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 181
    .local v24, "parseEndOffset":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    .line 183
    .local v14, "fraction":I
    sub-int v31, v24, v22

    packed-switch v31, :pswitch_data_0

    .line 191
    move/from16 v18, v14

    .line 193
    :goto_7
    move/from16 v22, v11

    goto/16 :goto_2

    .end local v11    # "endOffset":I
    .end local v14    # "fraction":I
    .end local v24    # "parseEndOffset":I
    :cond_10
    const/16 v31, 0x3f

    .line 175
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    const/16 v25, 0x3b

    goto :goto_6

    .line 185
    .restart local v11    # "endOffset":I
    .restart local v14    # "fraction":I
    .restart local v24    # "parseEndOffset":I
    :pswitch_0
    mul-int/lit8 v18, v14, 0xa

    goto :goto_7

    .line 188
    :pswitch_1
    mul-int/lit8 v18, v14, 0x64

    goto :goto_7

    .line 201
    .end local v4    # "c":C
    .end local v11    # "endOffset":I
    .end local v14    # "fraction":I
    .end local v24    # "parseEndOffset":I
    :cond_11
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v32, "No time zone indicator"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 259
    .end local v7    # "day":I
    .end local v15    # "hasT":Z
    .end local v16    # "hour":I
    .end local v18    # "milliseconds":I
    .end local v19    # "minutes":I
    .end local v20    # "month":I
    .end local v22    # "offset":I
    .end local v25    # "seconds":I
    .end local v30    # "year":I
    :catch_0
    move-exception v9

    .line 263
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v13, v9

    .line 269
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v13, "fail":Ljava/lang/Exception;
    :goto_8
    if-eqz p0, :cond_16

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x22

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 270
    .local v17, "input":Ljava/lang/String;
    :goto_9
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    .line 271
    .local v21, "msg":Ljava/lang/String;
    if-nez v21, :cond_17

    .line 272
    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 274
    :goto_a
    new-instance v12, Ljava/text/ParseException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Failed to parse date ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "]: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v12, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v12, "ex":Ljava/text/ParseException;
    invoke-virtual {v12, v13}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v12

    .line 208
    .end local v12    # "ex":Ljava/text/ParseException;
    .end local v17    # "input":Ljava/lang/String;
    .end local v21    # "msg":Ljava/lang/String;
    .restart local v7    # "day":I
    .local v13, "fail":Ljava/lang/Exception;
    .restart local v15    # "hasT":Z
    .restart local v16    # "hour":I
    .restart local v18    # "milliseconds":I
    .restart local v19    # "minutes":I
    .restart local v20    # "month":I
    .restart local v22    # "offset":I
    .restart local v25    # "seconds":I
    .local v26, "timezone":Ljava/util/TimeZone;
    .restart local v28    # "timezoneIndicator":C
    .restart local v30    # "year":I
    :cond_13
    :try_start_1
    sget-object v26, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 209
    .local v26, "timezone":Ljava/util/TimeZone;
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .local v26, "timezone":Ljava/util/TimeZone;
    :cond_14
    const/16 v31, 0x2d

    .line 210
    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 245
    new-instance v31, Ljava/lang/IndexOutOfBoundsException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Invalid time zone indicator \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 268
    .end local v7    # "day":I
    .end local v15    # "hasT":Z
    .end local v16    # "hour":I
    .end local v18    # "milliseconds":I
    .end local v19    # "minutes":I
    .end local v20    # "month":I
    .end local v22    # "offset":I
    .end local v25    # "seconds":I
    .end local v26    # "timezone":Ljava/util/TimeZone;
    .end local v28    # "timezoneIndicator":C
    .end local v30    # "year":I
    :catch_1
    move-exception v10

    .line 265
    .local v10, "e":Ljava/lang/NumberFormatException;
    move-object v13, v10

    .local v13, "fail":Ljava/lang/Exception;
    goto/16 :goto_8

    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "day":I
    .local v13, "fail":Ljava/lang/Exception;
    .restart local v15    # "hasT":Z
    .restart local v16    # "hour":I
    .restart local v18    # "milliseconds":I
    .restart local v19    # "minutes":I
    .restart local v20    # "month":I
    .restart local v22    # "offset":I
    .restart local v25    # "seconds":I
    .restart local v26    # "timezone":Ljava/util/TimeZone;
    .restart local v28    # "timezoneIndicator":C
    .restart local v29    # "timezoneOffset":Ljava/lang/String;
    .restart local v30    # "year":I
    :cond_15
    const-string/jumbo v31, "+00:00"

    .line 218
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 225
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "GMT"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 228
    .local v27, "timezoneId":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 230
    .local v26, "timezone":Ljava/util/TimeZone;
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "act":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string/jumbo v31, ":"

    const-string/jumbo v32, ""

    .line 237
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "cleaned":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 239
    new-instance v31, Ljava/lang/IndexOutOfBoundsException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Mismatching time zone indicator: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " given, resolves to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 240
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    .end local v3    # "act":Ljava/lang/String;
    .end local v6    # "cleaned":Ljava/lang/String;
    .end local v7    # "day":I
    .end local v15    # "hasT":Z
    .end local v16    # "hour":I
    .end local v18    # "milliseconds":I
    .end local v19    # "minutes":I
    .end local v20    # "month":I
    .end local v22    # "offset":I
    .end local v25    # "seconds":I
    .end local v26    # "timezone":Ljava/util/TimeZone;
    .end local v27    # "timezoneId":Ljava/lang/String;
    .end local v28    # "timezoneIndicator":C
    .end local v29    # "timezoneOffset":Ljava/lang/String;
    .end local v30    # "year":I
    :catch_2
    move-exception v8

    .line 267
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move-object v13, v8

    .local v13, "fail":Ljava/lang/Exception;
    goto/16 :goto_8

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    const/16 v17, 0x0

    .line 269
    goto/16 :goto_9

    .line 271
    .restart local v17    # "input":Ljava/lang/String;
    .restart local v21    # "msg":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_12

    goto/16 :goto_a

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 301
    if-gez p1, :cond_1

    .line 302
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-gt p1, p2, :cond_0

    .line 305
    move v1, p1

    .local v1, "i":I
    const/4 v3, 0x0

    .line 308
    .local v3, "result":I
    if-lt v1, p2, :cond_2

    move v2, v1

    .line 315
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_4

    .line 323
    neg-int v4, v3

    return v4

    .line 309
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-ltz v0, :cond_3

    .line 313
    neg-int v3, v0

    goto :goto_0

    .line 311
    :cond_3
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    .end local v0    # "digit":I
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .restart local v0    # "digit":I
    if-ltz v0, :cond_5

    .line 320
    mul-int/lit8 v3, v3, 0xa

    .line 321
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 318
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
