.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;
.source "StackTraceElementDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    .line 18
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 24
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_4

    :cond_0
    const/4 v0, 0x0

    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "lineNumber":I
    const/4 v7, 0x0

    .local v7, "moduleName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 37
    .end local v0    # "declaringClass":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "moduleName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_5

    :cond_2
    :goto_0
    const/4 v9, 0x4

    .line 51
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string/jumbo v9, "className"

    .line 52
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "methodName"

    .line 60
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "fileName"

    .line 68
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "lineNumber"

    .line 76
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string/jumbo v9, "nativeMethod"

    .line 84
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 94
    sget-object v9, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v3, v9, :cond_18

    const-string/jumbo v9, "moduleName"

    .line 105
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    const-string/jumbo v9, "moduleVersion"

    .line 113
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 122
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 20
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "lineNumber":I
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v9, 0x0

    .line 21
    return-object v9

    .line 24
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    .line 25
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    invoke-static {v11}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 40
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "lineNumber":I
    :cond_5
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xd

    if-eq v9, v10, :cond_6

    .line 44
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_2

    .line 45
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0x10

    .line 41
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 130
    :goto_1
    new-instance v9, Ljava/lang/StackTraceElement;

    invoke-direct {v9, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9

    .line 53
    :cond_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    .line 55
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_a

    .line 58
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    const/4 v0, 0x0

    .line 125
    :cond_9
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    const/16 v9, 0x10

    .line 126
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 56
    :cond_a
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .local v0, "declaringClass":Ljava/lang/String;
    goto :goto_2

    .line 61
    .end local v0    # "declaringClass":Ljava/lang/String;
    :cond_b
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_c

    .line 63
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_d

    .line 66
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_c
    const/4 v6, 0x0

    .line 62
    .restart local v6    # "methodName":Ljava/lang/String;
    goto :goto_2

    .line 64
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .local v6, "methodName":Ljava/lang/String;
    goto :goto_2

    .line 69
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_e
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_f

    .line 71
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_10

    .line 74
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_f
    const/4 v2, 0x0

    .line 70
    .restart local v2    # "fileName":Ljava/lang/String;
    goto :goto_2

    .line 72
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_10
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .local v2, "fileName":Ljava/lang/String;
    goto :goto_2

    .line 77
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_11
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_12

    .line 79
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_13

    .line 82
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_12
    const/4 v5, 0x0

    .line 78
    goto :goto_2

    .line 80
    :cond_13
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    goto :goto_2

    .line 85
    :cond_14
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_15

    .line 87
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_16

    .line 89
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_17

    .line 92
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_15
    const/16 v9, 0x10

    .line 86
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    :cond_16
    const/16 v9, 0x10

    .line 88
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    :cond_17
    const/16 v9, 0x10

    .line 90
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 95
    :cond_18
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_19

    .line 101
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_9

    .line 102
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    :cond_19
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .local v1, "elementType":Ljava/lang/String;
    const-string/jumbo v9, "java.lang.StackTraceElement"

    .line 97
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 98
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 106
    .end local v1    # "elementType":Ljava/lang/String;
    :cond_1a
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1b

    .line 108
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1c

    .line 111
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1b
    const/4 v7, 0x0

    .line 107
    .restart local v7    # "moduleName":Ljava/lang/String;
    goto/16 :goto_2

    .line 109
    .end local v7    # "moduleName":Ljava/lang/String;
    :cond_1c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .local v7, "moduleName":Ljava/lang/String;
    goto/16 :goto_2

    .line 114
    .end local v7    # "moduleName":Ljava/lang/String;
    :cond_1d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1e

    .line 116
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1f

    .line 119
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1e
    const/4 v8, 0x0

    .line 115
    .local v8, "moduleVersion":Ljava/lang/String;
    goto/16 :goto_2

    .line 117
    .end local v8    # "moduleVersion":Ljava/lang/String;
    :cond_1f
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    .local v8, "moduleVersion":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 134
    return v0
.end method
