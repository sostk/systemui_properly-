.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Ljava/lang/Object;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# instance fields
.field private dateFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 103
    sget-object v5, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v5, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Calendar;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 109
    check-cast v1, Ljava/util/Date;

    .line 110
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_1

    .line 114
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 115
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-class v5, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 118
    if-eq p2, v5, :cond_2

    .line 130
    return-object v0

    .line 106
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_0
    return-object v4

    .line 111
    .restart local v1    # "date":Ljava/util/Date;
    :cond_1
    return-object v6

    .line 119
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-eqz v5, :cond_3

    .line 127
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    check-cast v0, Ljava/util/GregorianCalendar;

    .end local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v5, v0}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v5

    return-object v5

    .line 121
    .restart local v0    # "calendar":Ljava/util/Calendar;
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Could not obtain an instance of DatatypeFactory."

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 134
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 19
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
    .line 27
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 29
    .local v9, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_0

    .line 35
    move-object/from16 v0, p2

    instance-of v14, v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-nez v14, :cond_1

    move-object/from16 v2, p2

    .line 38
    check-cast v2, Ljava/util/Calendar;

    .line 41
    .end local p2    # "object":Ljava/lang/Object;
    .local v2, "calendar":Ljava/util/Calendar;
    :goto_0
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 96
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 97
    .local v3, "date":Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 99
    .end local v3    # "date":Ljava/util/Date;
    :goto_1
    return-void

    .line 30
    .end local v2    # "calendar":Ljava/util/Calendar;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 31
    return-void

    .line 36
    :cond_1
    check-cast p2, Ljavax/xml/datatype/XMLGregorianCalendar;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    .restart local v2    # "calendar":Ljava/util/Calendar;
    goto :goto_0

    .line 42
    :cond_2
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-nez v14, :cond_4

    const/16 v14, 0x22

    :goto_2
    int-to-char v10, v14

    .line 45
    .local v10, "quote":C
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v14, 0x1

    .line 47
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .local v13, "year":I
    const/4 v14, 0x2

    .line 48
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    .local v8, "month":I
    const/4 v14, 0x5

    .line 49
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, "day":I
    const/16 v14, 0xb

    .line 50
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "hour":I
    const/16 v14, 0xc

    .line 51
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, "minute":I
    const/16 v14, 0xd

    .line 52
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .local v11, "second":I
    const/16 v14, 0xe

    .line 53
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 56
    .local v6, "millis":I
    if-nez v6, :cond_5

    .line 67
    if-eqz v11, :cond_6

    :cond_3
    const-string/jumbo v14, "0000-00-00T00:00:00"

    .line 73
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "buf":[C
    const/16 v14, 0x13

    .line 74
    invoke-static {v11, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0x10

    .line 75
    invoke-static {v7, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0xd

    .line 76
    invoke-static {v5, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0xa

    .line 77
    invoke-static {v4, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x7

    .line 78
    invoke-static {v8, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x4

    .line 79
    invoke-static {v13, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 83
    :goto_3
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 85
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v14

    const v15, 0x36ee80

    div-int v12, v14, v15

    .line 86
    .local v12, "timeZone":I
    if-eqz v12, :cond_7

    .line 88
    if-gtz v12, :cond_8

    const-string/jumbo v14, "-"

    .line 91
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v14

    const-string/jumbo v15, "%02d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    neg-int v0, v12

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_4
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_1

    .end local v1    # "buf":[C
    .end local v4    # "day":I
    .end local v5    # "hour":I
    .end local v6    # "millis":I
    .end local v7    # "minute":I
    .end local v8    # "month":I
    .end local v10    # "quote":C
    .end local v11    # "second":I
    .end local v12    # "timeZone":I
    .end local v13    # "year":I
    :cond_4
    const/16 v14, 0x27

    .line 42
    goto/16 :goto_2

    .restart local v4    # "day":I
    .restart local v5    # "hour":I
    .restart local v6    # "millis":I
    .restart local v7    # "minute":I
    .restart local v8    # "month":I
    .restart local v10    # "quote":C
    .restart local v11    # "second":I
    .restart local v13    # "year":I
    :cond_5
    const-string/jumbo v14, "0000-00-00T00:00:00.000"

    .line 57
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .restart local v1    # "buf":[C
    const/16 v14, 0x17

    .line 58
    invoke-static {v6, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0x13

    .line 59
    invoke-static {v11, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0x10

    .line 60
    invoke-static {v7, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0xd

    .line 61
    invoke-static {v5, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v14, 0xa

    .line 62
    invoke-static {v4, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x7

    .line 63
    invoke-static {v8, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x4

    .line 64
    invoke-static {v13, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 67
    .end local v1    # "buf":[C
    :cond_6
    if-nez v7, :cond_3

    if-nez v5, :cond_3

    const-string/jumbo v14, "0000-00-00"

    .line 68
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .restart local v1    # "buf":[C
    const/16 v14, 0xa

    .line 69
    invoke-static {v4, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x7

    .line 70
    invoke-static {v8, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v14, 0x4

    .line 71
    invoke-static {v13, v14, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto/16 :goto_3

    .restart local v12    # "timeZone":I
    :cond_7
    const-string/jumbo v14, "Z"

    .line 87
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_4

    :cond_8
    const-string/jumbo v14, "+"

    .line 89
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v14

    const-string/jumbo v15, "%02d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v14

    const-string/jumbo v15, ":00"

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_4
.end method
