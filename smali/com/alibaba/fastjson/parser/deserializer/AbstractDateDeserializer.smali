.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 23
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "features"    # I
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
    .line 25
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 28
    .local v11, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 31
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 80
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 83
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v19

    .line 142
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    return-object v20

    .line 29
    :cond_1
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .local v19, "val":Ljava/lang/Object;
    const/16 v20, 0x10

    .line 30
    move/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 32
    .end local v19    # "val":Ljava/lang/Object;
    :cond_2
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v14

    .line 34
    .local v14, "strVal":Ljava/lang/String;
    if-nez p4, :cond_3

    const/16 v19, 0x0

    .line 68
    :goto_1
    if-nez v19, :cond_0

    .line 69
    move-object/from16 v19, v14

    .restart local v19    # "val":Ljava/lang/Object;
    const/16 v20, 0x10

    .line 70
    move/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 72
    sget-object v20, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 73
    new-instance v9, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 74
    .local v9, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v20

    if-nez v20, :cond_8

    .line 77
    :goto_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .end local v9    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_3
    const/4 v12, 0x0

    .line 37
    .local v12, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v13, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v13, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object v12, v13

    .line 49
    .end local v13    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .restart local v19    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 46
    .end local v19    # "val":Ljava/lang/Object;
    .restart local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v20, "yyyy-MM-ddTHH:mm:ss.SSS"

    .line 39
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string/jumbo v20, "yyyy-MM-ddTHH:mm:ss"

    .line 42
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 44
    new-instance v12, Ljava/text/SimpleDateFormat;

    .end local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v12, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_3

    .local v12, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_5
    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 41
    new-instance v12, Ljava/text/SimpleDateFormat;

    .end local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v12, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_3

    .line 63
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v12    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/text/ParseException;
    const-string/jumbo v20, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 51
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    :cond_6
    const/16 v19, 0x0

    .line 61
    .restart local v19    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 52
    .end local v19    # "val":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 54
    :try_start_2
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    .restart local v19    # "val":Ljava/lang/Object;
    goto/16 :goto_1

    .line 58
    .end local v19    # "val":Ljava/lang/Object;
    :catch_2
    move-exception v8

    .local v8, "ex2":Ljava/text/ParseException;
    const/16 v19, 0x0

    .line 57
    .restart local v19    # "val":Ljava/lang/Object;
    goto/16 :goto_1

    .line 75
    .end local v7    # "ex":Ljava/text/ParseException;
    .end local v8    # "ex2":Ljava/text/ParseException;
    .restart local v9    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_8
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    goto :goto_2

    .line 81
    .end local v9    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v14    # "strVal":Ljava/lang/String;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_9
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v19, 0x0

    .line 82
    .restart local v19    # "val":Ljava/lang/Object;
    goto/16 :goto_0

    .line 84
    .end local v19    # "val":Ljava/lang/Object;
    :cond_a
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 87
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 106
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 88
    :cond_b
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "key":Ljava/lang/String;
    sget-object v20, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    :goto_4
    const/16 v20, 0x2

    .line 104
    move/from16 v0, v20

    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 110
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 114
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "syntax error : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 91
    :cond_c
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v20, 0x11

    .line 92
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 94
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, "typeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    .line 96
    .local v15, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v15, :cond_d

    :goto_5
    const/16 v20, 0x4

    .line 100
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 v20, 0x10

    .line 101
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_4

    .line 97
    :cond_d
    move-object/from16 p2, v15

    goto :goto_5

    .line 111
    .end local v15    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "typeName":Ljava/lang/String;
    :cond_e
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v16

    .line 112
    .local v16, "timeMillis":J
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 117
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .restart local v19    # "val":Ljava/lang/Object;
    const/16 v20, 0xd

    .line 119
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .end local v10    # "key":Ljava/lang/String;
    .end local v16    # "timeMillis":J
    .end local v19    # "val":Ljava/lang/Object;
    :cond_f
    const/16 v20, 0x0

    .line 121
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    const/16 v20, 0x10

    .line 122
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 124
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 130
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_10
    const-string/jumbo v20, "val"

    .line 125
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 128
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v20, 0x11

    .line 133
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v19

    .restart local v19    # "val":Ljava/lang/Object;
    const/16 v20, 0xd

    .line 137
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 126
    .end local v19    # "val":Ljava/lang/Object;
    :cond_11
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20
.end method
