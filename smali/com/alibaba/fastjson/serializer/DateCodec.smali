.class public Lcom/alibaba/fastjson/serializer/DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 153
    if-eqz p4, :cond_0

    .line 157
    instance-of v7, p4, Ljava/util/Date;

    if-nez v7, :cond_1

    .line 159
    instance-of v7, p4, Ljava/lang/Number;

    if-nez v7, :cond_2

    .line 161
    instance-of v7, p4, Ljava/lang/String;

    if-nez v7, :cond_3

    .line 206
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "parse error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 154
    :cond_0
    return-object v8

    .line 158
    :cond_1
    return-object p4

    .line 160
    :cond_2
    new-instance v7, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    return-object v7

    .restart local p4    # "val":Ljava/lang/Object;
    :cond_3
    move-object v6, p4

    .line 162
    check-cast v6, Ljava/lang/String;

    .line 163
    .local v6, "strVal":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 167
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    .line 179
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 182
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_8

    :goto_0
    const-string/jumbo v7, "/Date("

    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 202
    :cond_4
    :goto_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 203
    .local v4, "longVal":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object v7

    .line 164
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v4    # "longVal":J
    :cond_5
    return-object v8

    .line 170
    .restart local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const-class v7, Ljava/util/Calendar;

    .line 172
    if-eq p2, v7, :cond_7

    .line 176
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 179
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 176
    return-object v7

    .line 179
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 173
    return-object v0

    .line 180
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception v7

    .line 179
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v7

    .line 183
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 185
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v7

    goto :goto_0

    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_9
    const-string/jumbo v7, ")/"

    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x6

    .line 192
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "dotnetDateStr":Ljava/lang/String;
    move-object v6, v3

    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 210
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 26
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 46
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_1

    .line 52
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Date;

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 55
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v6

    .line 58
    .local v6, "date":Ljava/util/Date;
    :goto_0
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 69
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 86
    :cond_0
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 87
    .local v18, "time":J
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 146
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 148
    :goto_1
    return-void

    .line 47
    .end local v6    # "date":Ljava/util/Date;
    .end local v18    # "time":J
    :cond_1
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 48
    return-void

    :cond_2
    move-object/from16 v6, p2

    .line 53
    check-cast v6, Ljava/util/Date;

    .restart local v6    # "date":Ljava/util/Date;
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v8

    .line 60
    .local v8, "format":Ljava/text/DateFormat;
    if-eqz v8, :cond_4

    .line 64
    :goto_2
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 66
    return-void

    .line 61
    .end local v16    # "text":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/text/SimpleDateFormat;

    .end local v8    # "format":Ljava/text/DateFormat;
    sget-object v21, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    .restart local v8    # "format":Ljava/text/DateFormat;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_2

    .line 70
    .end local v8    # "format":Ljava/text/DateFormat;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/util/Date;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v21, 0x7b

    .line 76
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 77
    sget-object v21, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string/jumbo v21, "val"

    .line 79
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    const/16 v24, 0x2c

    move/from16 v0, v24

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    const/16 v21, 0x7d

    .line 80
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 82
    :goto_3
    return-void

    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v21, "new Date("

    .line 72
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 73
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v21, 0x29

    .line 74
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 88
    .restart local v18    # "time":J
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x22

    :goto_4
    move/from16 v0, v21

    int-to-char v14, v0

    .line 89
    .local v14, "quote":C
    invoke-virtual {v13, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 91
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 92
    .local v5, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v21, 0x1

    .line 94
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .local v20, "year":I
    const/16 v21, 0x2

    .line 95
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v12, v21, 0x1

    .local v12, "month":I
    const/16 v21, 0x5

    .line 96
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, "day":I
    const/16 v21, 0xb

    .line 97
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .local v9, "hour":I
    const/16 v21, 0xc

    .line 98
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .local v11, "minute":I
    const/16 v21, 0xd

    .line 99
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .local v15, "second":I
    const/16 v21, 0xe

    .line 100
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 103
    .local v10, "millis":I
    if-nez v10, :cond_a

    .line 114
    if-eqz v15, :cond_b

    :cond_8
    const-string/jumbo v21, "0000-00-00T00:00:00"

    .line 120
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .local v4, "buf":[C
    const/16 v21, 0x13

    .line 121
    move/from16 v0, v21

    invoke-static {v15, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x10

    .line 122
    move/from16 v0, v21

    invoke-static {v11, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0xd

    .line 123
    move/from16 v0, v21

    invoke-static {v9, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0xa

    .line 124
    move/from16 v0, v21

    invoke-static {v7, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x7

    .line 125
    move/from16 v0, v21

    invoke-static {v12, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x4

    .line 126
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 130
    :goto_5
    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 132
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    const v22, 0x36ee80

    div-int v17, v21, v22

    .line 133
    .local v17, "timeZone":I
    if-eqz v17, :cond_c

    .line 136
    if-gtz v17, :cond_d

    .line 139
    const/16 v21, 0x2d

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v21

    const-string/jumbo v22, "%02d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_6
    const-string/jumbo v21, ":00"

    .line 141
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 144
    :goto_7
    invoke-virtual {v13, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_1

    .end local v4    # "buf":[C
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "millis":I
    .end local v11    # "minute":I
    .end local v12    # "month":I
    .end local v14    # "quote":C
    .end local v15    # "second":I
    .end local v17    # "timeZone":I
    .end local v20    # "year":I
    :cond_9
    const/16 v21, 0x27

    .line 88
    goto/16 :goto_4

    .restart local v5    # "calendar":Ljava/util/Calendar;
    .restart local v7    # "day":I
    .restart local v9    # "hour":I
    .restart local v10    # "millis":I
    .restart local v11    # "minute":I
    .restart local v12    # "month":I
    .restart local v14    # "quote":C
    .restart local v15    # "second":I
    .restart local v20    # "year":I
    :cond_a
    const-string/jumbo v21, "0000-00-00T00:00:00.000"

    .line 104
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .restart local v4    # "buf":[C
    const/16 v21, 0x17

    .line 105
    move/from16 v0, v21

    invoke-static {v10, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x13

    .line 106
    move/from16 v0, v21

    invoke-static {v15, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x10

    .line 107
    move/from16 v0, v21

    invoke-static {v11, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0xd

    .line 108
    move/from16 v0, v21

    invoke-static {v9, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0xa

    .line 109
    move/from16 v0, v21

    invoke-static {v7, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x7

    .line 110
    move/from16 v0, v21

    invoke-static {v12, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x4

    .line 111
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto/16 :goto_5

    .line 114
    .end local v4    # "buf":[C
    :cond_b
    if-nez v11, :cond_8

    if-nez v9, :cond_8

    const-string/jumbo v21, "0000-00-00"

    .line 115
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .restart local v4    # "buf":[C
    const/16 v21, 0xa

    .line 116
    move/from16 v0, v21

    invoke-static {v7, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x7

    .line 117
    move/from16 v0, v21

    invoke-static {v12, v0, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v21, 0x4

    .line 118
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto/16 :goto_5

    .restart local v17    # "timeZone":I
    :cond_c
    const/16 v21, 0x5a

    .line 134
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 137
    :cond_d
    const/16 v21, 0x2b

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v21

    const-string/jumbo v22, "%02d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_6
.end method
