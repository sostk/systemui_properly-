.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 34
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss"

    .line 35
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 36
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    .line 37
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    .line 38
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "MM/dd/yyyy HH:mm:ss"

    .line 39
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd/MM/yyyy HH:mm:ss"

    .line 40
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd.MM.yyyy HH:mm:ss"

    .line 41
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd-MM-yyyy HH:mm:ss"

    .line 42
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyyMMdd"

    .line 44
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd"

    .line 45
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5"

    .line 46
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c"

    .line 47
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "MM/dd/yyyy"

    .line 48
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd/MM/yyyy"

    .line 49
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd.MM.yyyy"

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd-MM-yyyy"

    .line 51
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 293
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 295
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 19
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 125
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v15}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v15

    .line 57
    :cond_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 58
    .local v13, "text":Ljava/lang/String;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v3, 0x0

    .line 61
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    if-nez p4, :cond_1

    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    const-class v15, Ljava/time/LocalDateTime;

    .line 65
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_2

    const-class v15, Ljava/time/LocalDate;

    .line 74
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_5

    const-class v15, Ljava/time/LocalTime;

    .line 85
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_7

    const-class v15, Ljava/time/ZonedDateTime;

    .line 95
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_9

    const-class v15, Ljava/time/OffsetDateTime;

    .line 99
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_a

    const-class v15, Ljava/time/OffsetTime;

    .line 103
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_b

    const-class v15, Ljava/time/ZoneId;

    .line 107
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_c

    const-class v15, Ljava/time/Period;

    .line 111
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_d

    const-class v15, Ljava/time/Duration;

    .line 115
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_e

    const-class v15, Ljava/time/Instant;

    .line 119
    move-object/from16 v0, p2

    if-eq v0, v15, :cond_f

    const/4 v15, 0x0

    .line 127
    return-object v15

    .line 62
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0

    .line 67
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 68
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 69
    .local v6, "localDate":Ljava/time/LocalDate;
    sget-object v15, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v6, v15}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 73
    .end local v6    # "localDate":Ljava/time/LocalDate;
    .local v8, "localDateTime":Ljava/time/LocalDateTime;
    :goto_1
    return-object v8

    .line 67
    .end local v8    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v8

    .restart local v8    # "localDateTime":Ljava/time/LocalDateTime;
    goto :goto_1

    .line 76
    .end local v8    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x17

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 84
    .restart local v6    # "localDate":Ljava/time/LocalDate;
    :goto_2
    return-object v6

    .line 77
    .end local v6    # "localDate":Ljava/time/LocalDate;
    :cond_6
    invoke-static {v13}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 78
    .restart local v8    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getYear()I

    move-result v15

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v16

    .line 79
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v17

    .line 78
    invoke-static/range {v15 .. v17}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    .restart local v6    # "localDate":Ljava/time/LocalDate;
    goto :goto_2

    .line 87
    .end local v6    # "localDate":Ljava/time/LocalDate;
    .end local v8    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x17

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 92
    invoke-static {v13}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v7

    .line 94
    .local v7, "localDate":Ljava/time/LocalTime;
    :goto_3
    return-object v7

    .line 88
    .end local v7    # "localDate":Ljava/time/LocalTime;
    :cond_8
    invoke-static {v13}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 89
    .restart local v8    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getHour()I

    move-result v15

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v16

    .line 90
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v17

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getNano()I

    move-result v18

    .line 89
    invoke-static/range {v15 .. v18}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v7

    .restart local v7    # "localDate":Ljava/time/LocalTime;
    goto :goto_3

    .line 96
    .end local v7    # "localDate":Ljava/time/LocalTime;
    .end local v8    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_9
    invoke-static {v13}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v14

    .line 98
    .local v14, "zonedDateTime":Ljava/time/ZonedDateTime;
    return-object v14

    .line 100
    .end local v14    # "zonedDateTime":Ljava/time/ZonedDateTime;
    :cond_a
    invoke-static {v13}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v9

    .line 102
    .local v9, "offsetDateTime":Ljava/time/OffsetDateTime;
    return-object v9

    .line 104
    .end local v9    # "offsetDateTime":Ljava/time/OffsetDateTime;
    :cond_b
    invoke-static {v13}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v10

    .line 106
    .local v10, "offsetTime":Ljava/time/OffsetTime;
    return-object v10

    .line 108
    .end local v10    # "offsetTime":Ljava/time/OffsetTime;
    :cond_c
    invoke-static {v13}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v11

    .line 110
    .local v11, "offsetTime":Ljava/time/ZoneId;
    return-object v11

    .line 112
    .end local v11    # "offsetTime":Ljava/time/ZoneId;
    :cond_d
    invoke-static {v13}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v12

    .line 114
    .local v12, "period":Ljava/time/Period;
    return-object v12

    .line 116
    .end local v12    # "period":Ljava/time/Period;
    :cond_e
    invoke-static {v13}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    .line 118
    .local v2, "duration":Ljava/time/Duration;
    return-object v2

    .line 120
    .end local v2    # "duration":Ljava/time/Duration;
    :cond_f
    invoke-static {v13}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v4

    .line 122
    .local v4, "instant":Ljava/time/Instant;
    return-object v4
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 258
    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 131
    if-eqz p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    if-eqz p2, :cond_16

    .line 197
    invoke-static/range {p1 .. p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v14

    .line 195
    :goto_1
    return-object v14

    .line 132
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x13

    if-eq v14, v15, :cond_3

    .line 181
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x11

    if-lt v14, v15, :cond_0

    const/4 v14, 0x4

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v8, v14

    .local v8, "c4":C
    const/16 v14, 0x5e74

    .line 183
    if-eq v8, v14, :cond_14

    const v14, 0xb144

    .line 189
    if-ne v8, v14, :cond_0

    .line 190
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .end local v8    # "c4":C
    :cond_3
    const/4 v14, 0x4

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v8, v14

    .restart local v8    # "c4":C
    const/4 v14, 0x7

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v10, v14

    .local v10, "c7":C
    const/16 v14, 0xa

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v3, v14

    .local v3, "c10":C
    const/16 v14, 0xd

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v4, v14

    .local v4, "c13":C
    const/16 v14, 0x10

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v5, v14

    .local v5, "c16":C
    const/16 v14, 0x3a

    .line 138
    if-ne v4, v14, :cond_2

    const/16 v14, 0x3a

    if-ne v5, v14, :cond_2

    const/16 v14, 0x2d

    .line 139
    if-eq v8, v14, :cond_9

    :cond_4
    const/16 v14, 0x2d

    .line 145
    if-eq v8, v14, :cond_b

    :cond_5
    const/16 v14, 0x2f

    .line 147
    if-eq v8, v14, :cond_c

    :cond_6
    const/4 v14, 0x0

    .line 150
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .local v1, "c0":C
    const/4 v14, 0x1

    .line 151
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v2, v14

    .local v2, "c1":C
    const/4 v14, 0x2

    .line 152
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v6, v14

    .local v6, "c2":C
    const/4 v14, 0x3

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v7, v14

    .local v7, "c3":C
    const/4 v14, 0x5

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-char v9, v14

    .local v9, "c5":C
    const/16 v14, 0x2f

    .line 155
    if-eq v6, v14, :cond_d

    :cond_7
    const/16 v14, 0x2e

    .line 172
    if-eq v6, v14, :cond_13

    :cond_8
    const/16 v14, 0x2d

    .line 174
    if-ne v6, v14, :cond_2

    const/16 v14, 0x2d

    if-ne v9, v14, :cond_2

    .line 175
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v9    # "c5":C
    :cond_9
    const/16 v14, 0x2d

    .line 139
    if-ne v10, v14, :cond_4

    const/16 v14, 0x54

    .line 140
    if-eq v3, v14, :cond_a

    const/16 v14, 0x20

    .line 142
    if-ne v3, v14, :cond_2

    .line 143
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 141
    :cond_a
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_b
    const/16 v14, 0x2d

    .line 145
    if-ne v10, v14, :cond_5

    .line 146
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_c
    const/16 v14, 0x2f

    .line 147
    if-ne v10, v14, :cond_6

    .line 148
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .restart local v1    # "c0":C
    .restart local v2    # "c1":C
    .restart local v6    # "c2":C
    .restart local v7    # "c3":C
    .restart local v9    # "c5":C
    :cond_d
    const/16 v14, 0x2f

    .line 155
    if-ne v9, v14, :cond_7

    .line 156
    add-int/lit8 v14, v1, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v2, -0x30

    add-int v12, v14, v15

    .line 157
    .local v12, "v0":I
    add-int/lit8 v14, v7, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v8, -0x30

    add-int v13, v14, v15

    .local v13, "v1":I
    const/16 v14, 0xc

    .line 158
    if-gt v12, v14, :cond_f

    const/16 v14, 0xc

    .line 160
    if-gt v13, v14, :cond_10

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .local v11, "country":Ljava/lang/String;
    const-string/jumbo v14, "US"

    .line 165
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    const-string/jumbo v14, "BR"

    .line 167
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 169
    :cond_e
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 159
    .end local v11    # "country":Ljava/lang/String;
    :cond_f
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 161
    :cond_10
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 166
    .restart local v11    # "country":Ljava/lang/String;
    :cond_11
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v14, "AU"

    .line 168
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto/16 :goto_2

    .end local v11    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    :cond_13
    const/16 v14, 0x2e

    .line 172
    if-ne v9, v14, :cond_8

    .line 173
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 184
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v9    # "c5":C
    .end local v10    # "c7":C
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x79d2

    if-eq v14, v15, :cond_15

    .line 187
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 185
    :cond_15
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 196
    .end local v8    # "c4":C
    :cond_16
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v14

    goto/16 :goto_1
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 201
    if-eqz p3, :cond_1

    .line 252
    :cond_0
    :goto_0
    if-eqz p3, :cond_11

    .line 254
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v10

    .line 252
    :goto_1
    return-object v10

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    .line 206
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_4

    .line 242
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x9

    if-lt v10, v11, :cond_0

    const/4 v10, 0x4

    .line 243
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v4, v10

    .local v4, "c4":C
    const/16 v10, 0x5e74

    .line 244
    if-eq v4, v10, :cond_10

    const v10, 0xb144

    .line 246
    if-ne v4, v10, :cond_0

    .line 247
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 203
    .end local v4    # "c4":C
    :cond_3
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    .line 207
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v4, v10

    .restart local v4    # "c4":C
    const/4 v10, 0x7

    .line 208
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v6, v10

    .local v6, "c7":C
    const/16 v10, 0x2f

    .line 209
    if-eq v4, v10, :cond_8

    :cond_5
    :goto_4
    const/4 v10, 0x0

    .line 213
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .local v0, "c0":C
    const/4 v10, 0x1

    .line 214
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v1, v10

    .local v1, "c1":C
    const/4 v10, 0x2

    .line 215
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v2, v10

    .local v2, "c2":C
    const/4 v10, 0x3

    .line 216
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v3, v10

    .local v3, "c3":C
    const/4 v10, 0x5

    .line 217
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v5, v10

    .local v5, "c5":C
    const/16 v10, 0x2f

    .line 218
    if-eq v2, v10, :cond_9

    :cond_6
    const/16 v10, 0x2e

    .line 235
    if-eq v2, v10, :cond_f

    :cond_7
    const/16 v10, 0x2d

    .line 237
    if-ne v2, v10, :cond_2

    const/16 v10, 0x2d

    if-ne v5, v10, :cond_2

    .line 238
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v5    # "c5":C
    :cond_8
    const/16 v10, 0x2f

    .line 209
    if-ne v6, v10, :cond_5

    .line 210
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_4

    .restart local v0    # "c0":C
    .restart local v1    # "c1":C
    .restart local v2    # "c2":C
    .restart local v3    # "c3":C
    .restart local v5    # "c5":C
    :cond_9
    const/16 v10, 0x2f

    .line 218
    if-ne v5, v10, :cond_6

    .line 219
    add-int/lit8 v10, v0, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v1, -0x30

    add-int v8, v10, v11

    .line 220
    .local v8, "v0":I
    add-int/lit8 v10, v3, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v4, -0x30

    add-int v9, v10, v11

    .local v9, "v1":I
    const/16 v10, 0xc

    .line 221
    if-gt v8, v10, :cond_b

    const/16 v10, 0xc

    .line 223
    if-gt v9, v10, :cond_c

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .local v7, "country":Ljava/lang/String;
    const-string/jumbo v10, "US"

    .line 228
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "BR"

    .line 230
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 232
    :cond_a
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 222
    .end local v7    # "country":Ljava/lang/String;
    :cond_b
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 224
    :cond_c
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 229
    .restart local v7    # "country":Ljava/lang/String;
    :cond_d
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v10, "AU"

    .line 231
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_3

    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "v0":I
    .end local v9    # "v1":I
    :cond_f
    const/16 v10, 0x2e

    .line 235
    if-ne v5, v10, :cond_7

    .line 236
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 245
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v5    # "c5":C
    .end local v6    # "c7":C
    :cond_10
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 253
    .end local v4    # "c4":C
    :cond_11
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 287
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "format":Ljava/lang/String;
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, v1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
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
    .line 263
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 264
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_0

    const-class v3, Ljava/time/LocalDateTime;

    .line 267
    if-eq p4, v3, :cond_1

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 268
    check-cast v0, Ljava/time/LocalDateTime;

    .line 269
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 274
    :goto_1
    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_1
.end method
