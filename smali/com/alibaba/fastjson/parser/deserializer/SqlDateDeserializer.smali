.class public Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "SqlDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

.field public static final instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;


# instance fields
.field private timestamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "timestmap"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    const/4 v9, 0x0

    .line 30
    iget-boolean v8, p0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->timestamp:Z

    if-nez v8, :cond_0

    .line 34
    if-eqz p4, :cond_1

    .line 38
    instance-of v8, p4, Ljava/util/Date;

    if-nez v8, :cond_2

    .line 40
    instance-of v8, p4, Ljava/lang/Number;

    if-nez v8, :cond_3

    .line 42
    instance-of v8, p4, Ljava/lang/String;

    if-nez v8, :cond_4

    .line 72
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parse error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->castTimestamp(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 35
    :cond_1
    return-object v9

    .line 39
    :cond_2
    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    .local v7, "val":Ljava/lang/Object;
    move-object p4, v7

    .line 75
    .end local v7    # "val":Ljava/lang/Object;
    .restart local p4    # "val":Ljava/lang/Object;
    :goto_0
    return-object p4

    .line 41
    :cond_3
    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    .restart local v7    # "val":Ljava/lang/Object;
    move-object p4, v7

    .end local v7    # "val":Ljava/lang/Object;
    .restart local p4    # "val":Ljava/lang/Object;
    goto :goto_0

    :cond_4
    move-object v6, p4

    .line 43
    check-cast v6, Ljava/lang/String;

    .line 44
    .local v6, "strVal":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 50
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-nez v8, :cond_6

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 58
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 59
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .local v3, "sqlDate":Ljava/sql/Date;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 60
    return-object v3

    .line 45
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "sqlDate":Ljava/sql/Date;
    :cond_5
    return-object v9

    .line 53
    .restart local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 68
    .local v4, "longVal":J
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 70
    new-instance v8, Ljava/sql/Date;

    invoke-direct {v8, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object v8

    .line 60
    .end local v4    # "longVal":J
    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v8

    .line 65
    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    .restart local v4    # "longVal":J
    goto :goto_1

    .line 69
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v4    # "longVal":J
    :catchall_0
    move-exception v8

    .line 68
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v8
.end method

.method protected castTimestamp(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 81
    if-eqz p4, :cond_0

    .line 85
    instance-of v7, p4, Ljava/util/Date;

    if-nez v7, :cond_1

    .line 89
    instance-of v7, p4, Ljava/lang/Number;

    if-nez v7, :cond_2

    .line 93
    instance-of v7, p4, Ljava/lang/String;

    if-nez v7, :cond_3

    .line 124
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "parse error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_0
    return-object v8

    .line 86
    :cond_1
    new-instance v7, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v7

    .line 90
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_2
    new-instance v7, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v7

    .restart local p4    # "val":Ljava/lang/Object;
    :cond_3
    move-object v6, p4

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .local v6, "strVal":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v7

    if-nez v7, :cond_5

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 108
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 109
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .local v3, "sqlDate":Ljava/sql/Timestamp;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 110
    return-object v3

    .line 96
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "sqlDate":Ljava/sql/Timestamp;
    :cond_4
    return-object v8

    .line 103
    .restart local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 118
    .local v4, "longVal":J
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 121
    new-instance v7, Ljava/sql/Timestamp;

    invoke-direct {v7, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v7

    .line 110
    .end local v4    # "longVal":J
    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v7

    .line 115
    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    .restart local v4    # "longVal":J
    goto :goto_0

    .line 119
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v4    # "longVal":J
    :catchall_0
    move-exception v7

    .line 118
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v7
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 128
    return v0
.end method
