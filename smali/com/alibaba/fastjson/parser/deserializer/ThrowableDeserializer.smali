.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 21
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .local v3, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    .end local v0    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    if-lt v5, v7, :cond_0

    .line 147
    if-nez v0, :cond_6

    .line 151
    if-nez v3, :cond_7

    .line 155
    if-nez v2, :cond_8

    const/4 v5, 0x0

    .line 159
    return-object v5

    .line 129
    :cond_0
    aget-object v1, v6, v5

    .line 130
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 131
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v4

    if-eqz v8, :cond_3

    .line 136
    array-length v8, v4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 141
    :cond_1
    array-length v8, v4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 129
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_3
    move-object v2, v1

    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .end local v2    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_4
    const/4 v8, 0x0

    .line 136
    aget-object v8, v4, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_1

    .line 137
    move-object v3, v1

    .local v3, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .end local v3    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    const/4 v8, 0x0

    .line 141
    aget-object v8, v4, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-class v9, Ljava/lang/Throwable;

    if-ne v8, v9, :cond_2

    .line 142
    move-object v0, v1

    .local v0, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .end local v0    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    const/4 v5, 0x2

    .line 148
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    return-object v5

    :cond_7
    const/4 v5, 0x1

    .line 152
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    return-object v5

    :cond_8
    const/4 v5, 0x0

    .line 156
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    return-object v5
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
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
    .line 25
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 27
    .local v9, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    .line 35
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_5

    :goto_0
    const/4 v1, 0x0

    .local v1, "cause":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 43
    .local v6, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_6

    .end local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    const/4 v10, 0x0

    .local v10, "message":Ljava/lang/String;
    const/4 v12, 0x0

    .line 52
    .local v12, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 56
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v11, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v13

    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "key":Ljava/lang/String;
    if-eqz v8, :cond_7

    :cond_2
    :goto_2
    const/4 v13, 0x4

    .line 70
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 72
    sget-object v13, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string/jumbo v13, "message"

    .line 80
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string/jumbo v13, "cause"

    .line 89
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string/jumbo v13, "stackTrace"

    .line 91
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_3
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_1

    const/16 v13, 0x10

    .line 99
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_4
    const/4 v4, 0x0

    .line 105
    .local v4, "ex":Ljava/lang/Throwable;
    if-eqz v6, :cond_10

    .line 109
    :try_start_0
    invoke-direct {p0, v10, v1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 110
    .local v4, "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_11

    .line 118
    :goto_5
    if-nez v12, :cond_12

    .line 122
    :goto_6
    return-object v4

    .line 28
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v13, 0x0

    .line 29
    return-object v13

    :cond_4
    const/4 v13, 0x0

    .line 33
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 36
    :cond_5
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 43
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_0

    move-object/from16 v2, p2

    .line 44
    check-cast v2, Ljava/lang/Class;

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/lang/Throwable;

    .line 45
    invoke-virtual {v13, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 46
    move-object v6, v2

    .local v6, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 59
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v11    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_8

    .line 63
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_2

    .line 64
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    if-nez v13, :cond_1

    goto/16 :goto_2

    :cond_8
    const/16 v13, 0x10

    .line 60
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 73
    :cond_9
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_a

    .line 77
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 74
    :cond_a
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "exClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .restart local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v13, 0x10

    .line 79
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 81
    .end local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "exClassName":Ljava/lang/String;
    :cond_b
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_c

    .line 83
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_d

    .line 86
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_c
    const/4 v10, 0x0

    .line 88
    :goto_7
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_3

    .line 84
    :cond_d
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    .local v10, "message":Ljava/lang/String;
    goto :goto_7

    .end local v10    # "message":Ljava/lang/String;
    :cond_e
    const-string/jumbo v13, "cause"

    const/4 v14, 0x0

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v14, v13}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .local v1, "cause":Ljava/lang/Throwable;
    goto/16 :goto_3

    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_f
    const-class v13, [Ljava/lang/StackTraceElement;

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/StackTraceElement;

    .local v12, "stackTrace":[Ljava/lang/StackTraceElement;
    goto/16 :goto_3

    .line 106
    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v4, "ex":Ljava/lang/Throwable;
    :cond_10
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "ex":Ljava/lang/Throwable;
    invoke-direct {v4, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v4, "ex":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 111
    :cond_11
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "ex":Ljava/lang/Throwable;
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 115
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "create instance error"

    invoke-direct {v13, v14, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v4, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto/16 :goto_6
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 163
    return v0
.end method
