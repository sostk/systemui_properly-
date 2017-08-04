.class public Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .param p3, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 196
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_4

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 201
    .local v3, "keyDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    .line 202
    .local v10, "valueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 207
    .local v1, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_5

    .line 212
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    .line 251
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v11

    if-eqz v11, :cond_c

    :cond_3
    :goto_1
    const/4 v11, 0x0

    .line 264
    move-object/from16 v0, p2

    invoke-interface {v3, p0, v0, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_e

    .line 270
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 272
    move-object/from16 v0, p3

    invoke-interface {v10, p0, v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 273
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 275
    invoke-interface {p1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_1

    .line 278
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 283
    .end local v2    # "key":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    .line 282
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v11

    .line 196
    .end local v1    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v3    # "keyDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v10    # "valueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_0

    .line 197
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, expect {, actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .restart local v1    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v3    # "keyDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v10    # "valueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_5
    const/16 v11, 0x10

    .line 208
    :try_start_1
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 285
    return-object p1

    .line 213
    :cond_6
    :try_start_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isRef()Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 214
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v5, 0x0

    .local v5, "object":Ljava/lang/Object;
    const/4 v11, 0x4

    .line 218
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 219
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_7

    .line 236
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "illegal ref, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 220
    :cond_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .local v7, "ref":Ljava/lang/String;
    const-string/jumbo v11, ".."

    .line 221
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "$"

    .line 224
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 232
    new-instance v11, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v11, v1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v11, 0x1

    .line 233
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .end local v5    # "object":Ljava/lang/Object;
    :goto_2
    const/16 v11, 0xd

    .line 239
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 240
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_b

    const/16 v11, 0x10

    .line 243
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 248
    return-object v5

    .line 222
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_8
    :try_start_3
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 223
    .local v6, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v5, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2

    .line 225
    .end local v6    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_9
    move-object v8, v1

    .line 226
    .local v8, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_3
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v11, :cond_a

    .line 230
    iget-object v5, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2

    .line 227
    :cond_a
    iget-object v8, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_3

    .line 241
    .end local v5    # "object":Ljava/lang/Object;
    .end local v8    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_b
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "illegal ref"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 252
    .end local v7    # "ref":Ljava/lang/String;
    :cond_c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 253
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 254
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x4

    .line 255
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const/16 v11, 0x10

    .line 256
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 257
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_d

    .line 261
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 258
    :cond_d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 259
    return-object p1

    .line 267
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_e
    :try_start_4
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, expect :, actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 14
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 70
    .local v7, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .local v3, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v5, 0x0

    .line 77
    .local v5, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 78
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    .line 79
    .local v1, "ch":C
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_5

    :goto_1
    const/16 v11, 0x22

    .line 88
    if-eq v1, v11, :cond_6

    const/16 v11, 0x7d

    .line 95
    if-eq v1, v11, :cond_7

    const/16 v11, 0x27

    .line 100
    if-eq v1, v11, :cond_8

    .line 112
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 118
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    const/16 v11, 0x3a

    .line 119
    if-ne v1, v11, :cond_b

    .line 124
    :cond_0
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 126
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    .line 128
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 130
    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v6, v11, :cond_c

    .line 157
    :cond_1
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 159
    if-nez v5, :cond_12

    .line 163
    :goto_2
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_13

    .line 167
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 170
    :goto_3
    invoke-interface {p1, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, v3, v10, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 174
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 176
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .local v8, "tok":I
    const/16 v11, 0x14

    .line 177
    if-ne v8, v11, :cond_14

    .line 187
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 178
    return-object p1

    .line 71
    .end local v1    # "ch":C
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "i":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "tok":I
    :cond_3
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, expect {, actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 81
    .restart local v1    # "ch":C
    .restart local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v5    # "i":I
    :cond_4
    :try_start_1
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 82
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 83
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    :cond_5
    const/16 v11, 0x2c

    .line 80
    if-eq v1, v11, :cond_4

    goto/16 :goto_1

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    const/16 v12, 0x22

    invoke-interface {v7, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 90
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 91
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    const/16 v11, 0x3a

    .line 92
    if-eq v1, v11, :cond_0

    .line 93
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "expect \':\' at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v1    # "ch":C
    .end local v6    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v11

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v11

    .line 96
    .restart local v1    # "ch":C
    :cond_7
    :try_start_2
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 97
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    const/16 v11, 0x10

    .line 98
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 99
    return-object p1

    .line 101
    :cond_8
    :try_start_3
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    const/16 v12, 0x27

    invoke-interface {v7, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 106
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 107
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v11

    int-to-char v1, v11

    const/16 v11, 0x3a

    .line 108
    if-eq v1, v11, :cond_0

    .line 109
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "expect \':\' at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 102
    .end local v6    # "key":Ljava/lang/String;
    :cond_9
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 113
    :cond_a
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 120
    .restart local v6    # "key":Ljava/lang/String;
    :cond_b
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "expect \':\' at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", actual "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 130
    :cond_c
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    const/16 v12, 0x22

    invoke-interface {v7, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "typeName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Ljava/util/Map;

    .line 134
    invoke-virtual {v11, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .local v4, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v11, 0x10

    .line 145
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v11, 0x2

    .line 147
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 149
    if-nez v3, :cond_11

    .line 153
    :cond_d
    :goto_4
    move-object/from16 v0, p3

    invoke-interface {v4, p0, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 153
    return-object v11

    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_e
    const/16 v11, 0x10

    .line 135
    :try_start_4
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 136
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_10

    .line 76
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "typeName":Ljava/lang/String;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "typeName":Ljava/lang/String;
    :cond_10
    const/16 v11, 0x10

    .line 137
    invoke-interface {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 138
    return-object p1

    .line 149
    .restart local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_11
    :try_start_5
    move-object/from16 v0, p3

    instance-of v11, v0, Ljava/lang/Integer;

    if-nez v11, :cond_d

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto :goto_4

    .line 160
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v9    # "typeName":Ljava/lang/String;
    :cond_12
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    :cond_13
    const/4 v10, 0x0

    .line 165
    .local v10, "value":Ljava/lang/Object;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_3

    .end local v10    # "value":Ljava/lang/Object;
    .restart local v8    # "tok":I
    :cond_14
    const/16 v11, 0xf

    .line 177
    if-eq v8, v11, :cond_2

    const/16 v11, 0xd

    .line 181
    if-ne v8, v11, :cond_f

    .line 182
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 183
    return-object p1
.end method


# virtual methods
.method protected createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-class v5, Ljava/util/Properties;

    .line 290
    if-eq p1, v5, :cond_1

    const-class v5, Ljava/util/Hashtable;

    .line 294
    if-eq p1, v5, :cond_2

    const-class v5, Ljava/util/IdentityHashMap;

    .line 298
    if-eq p1, v5, :cond_3

    const-class v5, Ljava/util/SortedMap;

    .line 302
    if-ne p1, v5, :cond_4

    .line 303
    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    return-object v5

    .line 291
    :cond_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    return-object v5

    .line 295
    :cond_2
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    return-object v5

    .line 299
    :cond_3
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v5

    :cond_4
    const-class v5, Ljava/util/TreeMap;

    .line 302
    if-eq p1, v5, :cond_0

    const-class v5, Ljava/util/concurrent/ConcurrentMap;

    .line 306
    if-ne p1, v5, :cond_6

    .line 307
    :cond_5
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v5

    :cond_6
    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    if-eq p1, v5, :cond_5

    const-class v5, Ljava/util/Map;

    .line 310
    if-ne p1, v5, :cond_8

    .line 311
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    return-object v5

    :cond_8
    const-class v5, Ljava/util/HashMap;

    .line 310
    if-eq p1, v5, :cond_7

    const-class v5, Ljava/util/LinkedHashMap;

    .line 314
    if-eq p1, v5, :cond_9

    .line 318
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_a

    move-object v1, p1

    .line 330
    check-cast v1, Ljava/lang/Class;

    .line 331
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_c

    .line 336
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 315
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v5

    :cond_a
    move-object v3, p1

    .line 319
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 321
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .local v4, "rawType":Ljava/lang/reflect/Type;
    const-class v5, Ljava/util/EnumMap;

    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 327
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v5

    return-object v5

    .line 323
    :cond_b
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 324
    .local v0, "actualArgs":[Ljava/lang/reflect/Type;
    new-instance v6, Ljava/util/EnumMap;

    aget-object v5, v0, v7

    check-cast v5, Ljava/lang/Class;

    invoke-direct {v6, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v6

    .line 332
    .end local v0    # "actualArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/reflect/Type;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupport type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupport type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x0

    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    .line 27
    if-eq p2, v3, :cond_1

    .line 31
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 32
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 37
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v2

    .line 39
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 42
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :try_start_0
    invoke-virtual {p1, v0, v2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 43
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 45
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 43
    return-object v3

    .line 27
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-result-object v3

    if-nez v3, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    return-object v3

    .restart local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_2
    const/16 v3, 0x10

    .line 33
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    return-object v5

    .line 43
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    .line 45
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v3
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "map"    # Ljava/util/Map;

    .prologue
    const/4 v4, 0x0

    .line 51
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p1, p4, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v1, p2

    .line 52
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 53
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v0, v3, v4

    .line 54
    .local v0, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .local v2, "valueType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/String;

    .line 56
    if-eq v3, v0, :cond_1

    .line 59
    invoke-static {p1, p4, v0, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 57
    :cond_1
    invoke-static {p1, p4, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 344
    return v0
.end method
