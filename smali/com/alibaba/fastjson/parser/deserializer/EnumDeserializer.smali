.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final values:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->values:[Ljava/lang/Enum;

    .line 19
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    const/4 v8, 0x0

    .line 29
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 30
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    .local v5, "token":I
    const/4 v7, 0x2

    .line 31
    if-eq v5, v7, :cond_0

    const/4 v7, 0x4

    .line 40
    if-eq v5, v7, :cond_3

    const/16 v7, 0x8

    .line 49
    if-eq v5, v7, :cond_5

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v6

    .line 58
    .local v6, "value":Ljava/lang/Object;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse enum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error, value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v5    # "token":I
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0

    .line 32
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v5    # "token":I
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .local v2, "intValue":I
    const/16 v7, 0x10

    .line 33
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 35
    if-gez v2, :cond_2

    .line 36
    :cond_1
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse enum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error, value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .end local v2    # "intValue":I
    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v5    # "token":I
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "intValue":I
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v5    # "token":I
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->values:[Ljava/lang/Enum;

    array-length v7, v7

    if-gt v2, v7, :cond_1

    .line 39
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->values:[Ljava/lang/Enum;

    aget-object v7, v7, v2

    return-object v7

    .line 41
    .end local v2    # "intValue":I
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .local v4, "strVal":Ljava/lang/String;
    const/16 v7, 0x10

    .line 42
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 48
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    return-object v7

    .line 45
    :cond_4
    return-object v8

    .end local v4    # "strVal":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "value":Ljava/lang/Object;
    const/16 v7, 0x10

    .line 51
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    return-object v8
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 67
    return v0
.end method

.method public valueOf(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->values:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method
