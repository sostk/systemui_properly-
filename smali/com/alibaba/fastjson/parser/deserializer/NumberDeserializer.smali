.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

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
    .locals 12
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
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x10

    .line 17
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 18
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 42
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 65
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_12

    .line 69
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_13

    .line 70
    :cond_0
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    return-object v6

    .line 19
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_3

    .line 20
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "val":Ljava/lang/String;
    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6

    .end local v1    # "val":Ljava/lang/String;
    :cond_3
    const-class v8, Ljava/lang/Double;

    .line 19
    if-eq p2, v8, :cond_2

    .line 25
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 26
    .local v2, "val":J
    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_5

    .line 29
    :cond_4
    long-to-int v6, v2

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    return-object v6

    :cond_5
    const-class v8, Ljava/lang/Short;

    .line 28
    if-eq p2, v8, :cond_4

    .line 32
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_7

    .line 33
    :cond_6
    long-to-int v6, v2

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    return-object v6

    :cond_7
    const-class v8, Ljava/lang/Byte;

    .line 32
    if-eq p2, v8, :cond_6

    const-wide/32 v8, -0x80000000

    .line 36
    cmp-long v8, v2, v8

    if-gez v8, :cond_8

    move v8, v6

    :goto_0
    if-nez v8, :cond_a

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_9

    :goto_1
    if-nez v6, :cond_a

    .line 37
    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_8
    move v8, v7

    .line 36
    goto :goto_0

    :cond_9
    move v6, v7

    goto :goto_1

    .line 39
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6

    .line 43
    .end local v2    # "val":J
    :cond_b
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_d

    .line 44
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .restart local v1    # "val":Ljava/lang/String;
    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 46
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6

    .end local v1    # "val":Ljava/lang/String;
    :cond_d
    const-class v6, Ljava/lang/Double;

    .line 43
    if-eq p2, v6, :cond_c

    .line 49
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 50
    .local v4, "val":Ljava/math/BigDecimal;
    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 52
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_f

    .line 53
    :cond_e
    invoke-virtual {v4}, Ljava/math/BigDecimal;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    return-object v6

    :cond_f
    const-class v6, Ljava/lang/Short;

    .line 52
    if-eq p2, v6, :cond_e

    .line 56
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_11

    .line 57
    :cond_10
    invoke-virtual {v4}, Ljava/math/BigDecimal;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    return-object v6

    :cond_11
    const-class v6, Ljava/lang/Byte;

    .line 56
    if-eq p2, v6, :cond_10

    .line 60
    return-object v4

    .line 66
    .end local v4    # "val":Ljava/math/BigDecimal;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_12
    return-object v11

    :cond_13
    const-class v6, Ljava/lang/Double;

    .line 69
    if-eq p2, v6, :cond_0

    .line 73
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_15

    .line 74
    :cond_14
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v6

    return-object v6

    :cond_15
    const-class v6, Ljava/lang/Short;

    .line 73
    if-eq p2, v6, :cond_14

    .line 77
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v6, :cond_17

    .line 78
    :cond_16
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v6

    return-object v6

    :cond_17
    const-class v6, Ljava/lang/Byte;

    .line 77
    if-eq p2, v6, :cond_16

    .line 81
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 85
    return v0
.end method
