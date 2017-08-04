.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    .line 17
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v10

    .line 44
    .local v10, "val":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 48
    instance-of v11, v10, Ljava/sql/Time;

    if-nez v11, :cond_5

    .line 50
    instance-of v11, v10, Ljava/lang/Number;

    if-nez v11, :cond_6

    .line 52
    instance-of v11, v10, Ljava/lang/String;

    if-nez v11, :cond_7

    .line 82
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "parse error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v10    # "val":Ljava/lang/Object;
    :cond_0
    const/4 v11, 0x4

    .line 20
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    const/4 v11, 0x2

    .line 26
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 28
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 32
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v8

    .local v8, "time":J
    const/16 v11, 0xd

    .line 33
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_3

    const/16 v11, 0x10

    .line 37
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 39
    new-instance v11, Ljava/sql/Time;

    invoke-direct {v11, v8, v9}, Ljava/sql/Time;-><init>(J)V

    return-object v11

    .line 23
    .end local v8    # "time":J
    :cond_1
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 29
    :cond_2
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 35
    .restart local v8    # "time":J
    :cond_3
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v8    # "time":J
    .restart local v10    # "val":Ljava/lang/Object;
    :cond_4
    const/4 v11, 0x0

    .line 45
    return-object v11

    .line 49
    :cond_5
    return-object v10

    .line 51
    :cond_6
    new-instance v11, Ljava/sql/Time;

    check-cast v10, Ljava/lang/Number;

    .end local v10    # "val":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/sql/Time;-><init>(J)V

    return-object v11

    .restart local v10    # "val":Ljava/lang/Object;
    :cond_7
    move-object v5, v10

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "strVal":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_8

    .line 59
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v11

    if-nez v11, :cond_9

    .line 63
    const/4 v3, 0x1

    .local v3, "isDigit":Z
    const/4 v2, 0x0

    .line 64
    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v2, v11, :cond_a

    .line 71
    :goto_1
    if-eqz v3, :cond_d

    .line 76
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 78
    .end local v2    # "i":I
    .end local v3    # "isDigit":Z
    .local v6, "longVal":J
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 79
    new-instance v11, Ljava/sql/Time;

    invoke-direct {v11, v6, v7}, Ljava/sql/Time;-><init>(J)V

    return-object v11

    .end local v1    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "longVal":J
    :cond_8
    const/4 v11, 0x0

    .line 55
    return-object v11

    .line 61
    .restart local v1    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .restart local v6    # "longVal":J
    goto :goto_2

    .line 65
    .end local v6    # "longVal":J
    .restart local v2    # "i":I
    .restart local v3    # "isDigit":Z
    :cond_a
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v0, v11

    .local v0, "ch":C
    const/16 v11, 0x30

    .line 66
    if-ge v0, v11, :cond_c

    .line 67
    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    const/16 v11, 0x39

    .line 66
    if-gt v0, v11, :cond_b

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "ch":C
    :cond_d
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 73
    invoke-static {v5}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v11

    return-object v11
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 86
    return v0
.end method
