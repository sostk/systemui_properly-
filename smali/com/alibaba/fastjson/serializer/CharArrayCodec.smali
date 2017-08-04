.class public Lcom/alibaba/fastjson/serializer/CharArrayCodec;
.super Ljava/lang/Object;
.source "CharArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 12
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x10

    .line 24
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    .line 31
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 39
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/String;

    if-nez v9, :cond_4

    .line 43
    instance-of v9, v7, Ljava/util/Collection;

    if-nez v9, :cond_5

    .line 62
    :cond_0
    if-eqz v7, :cond_1

    .line 64
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 62
    :cond_1
    return-object v8

    .line 26
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "val":Ljava/lang/String;
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    return-object v8

    .line 32
    .end local v6    # "val":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v5

    .line 33
    .local v5, "val":Ljava/lang/Number;
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    return-object v8

    .line 40
    .end local v5    # "val":Ljava/lang/Number;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    return-object v8

    .restart local v7    # "value":Ljava/lang/Object;
    :cond_5
    move-object v1, v7

    .line 44
    check-cast v1, Ljava/util/Collection;

    .line 46
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 47
    .local v0, "accept":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 57
    :goto_0
    if-nez v0, :cond_0

    .line 58
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v9, "can not cast to char[]"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 47
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "item":Ljava/lang/Object;
    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 49
    check-cast v2, Ljava/lang/String;

    .end local v2    # "item":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "itemLength":I
    const/4 v10, 0x1

    .line 50
    if-eq v3, v10, :cond_6

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 68
    return v0
.end method
