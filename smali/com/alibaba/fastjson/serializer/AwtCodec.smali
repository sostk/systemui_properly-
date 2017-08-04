.class public Lcom/alibaba/fastjson/serializer/AwtCodec;
.super Ljava/lang/Object;
.source "AwtCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AwtCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AwtCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static support(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/awt/Point;

    .line 22
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Color;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    const/16 v3, 0x10

    .line 96
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 98
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 103
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 106
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-class v1, Ljava/awt/Point;

    .line 108
    if-eq p2, v1, :cond_3

    const-class v1, Ljava/awt/Rectangle;

    .line 112
    if-eq p2, v1, :cond_4

    const-class v1, Ljava/awt/Color;

    .line 116
    if-eq p2, v1, :cond_5

    const-class v1, Ljava/awt/Font;

    .line 120
    if-eq p2, v1, :cond_6

    .line 124
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support awt class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v1, 0x0

    .line 100
    return-object v1

    .line 103
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 104
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Point;

    move-result-object v1

    return-object v1

    .line 113
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;

    move-result-object v1

    return-object v1

    .line 117
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;

    move-result-object v1

    return-object v1

    .line 121
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;

    move-result-object v1

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 329
    return v0
.end method

.method protected parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 181
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v5, 0x0

    .local v5, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v1, 0x0

    .local v1, "b":I
    const/4 v0, 0x0

    .line 185
    .local v0, "alpha":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_1

    .line 191
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 195
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 223
    new-instance v7, Ljava/awt/Color;

    invoke-direct {v7, v5, v2, v1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v7

    .line 192
    :cond_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 199
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 203
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 200
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v6

    .line 201
    .local v6, "val":I
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-string/jumbo v7, "r"

    .line 206
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "g"

    .line 208
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "b"

    .line 210
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "alpha"

    .line 212
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 215
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 207
    :cond_4
    move v5, v6

    .line 218
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_0

    .line 219
    invoke-interface {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 209
    :cond_5
    move v2, v6

    goto :goto_1

    .line 211
    :cond_6
    move v1, v6

    goto :goto_1

    .line 213
    :cond_7
    move v0, v6

    goto :goto_1
.end method

.method protected parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;
    .locals 9
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 128
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v3, 0x0

    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "style":I
    const/4 v2, 0x0

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 139
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 143
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 177
    new-instance v5, Ljava/awt/Font;

    invoke-direct {v5, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object v5

    .line 140
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string/jumbo v5, "name"

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "style"

    .line 154
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "size"

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 169
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syntax error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 152
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_4
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 172
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 173
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 155
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v7, :cond_6

    .line 159
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_6
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 157
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 162
    :cond_7
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 166
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_8
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 164
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method protected parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Point;
    .locals 10
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 277
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v4, 0x0

    .local v4, "x":I
    const/4 v5, 0x0

    .line 281
    .local v5, "y":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    .line 287
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 297
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v7, "syntax error"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 325
    new-instance v6, Ljava/awt/Point;

    invoke-direct {v6, v4, v5}, Ljava/awt/Point;-><init>(II)V

    return-object v6

    .line 288
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "key":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 295
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 300
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    .line 302
    .local v2, "token":I
    if-eq v2, v8, :cond_4

    const/4 v6, 0x3

    .line 305
    if-eq v2, v6, :cond_5

    .line 309
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "syntax error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2    # "token":I
    :cond_3
    const-string/jumbo v6, "java.awt.Point"

    .line 291
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .restart local v2    # "token":I
    :cond_4
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 304
    .local v3, "val":I
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1
    const-string/jumbo v6, "x"

    .line 312
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "y"

    .line 314
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 317
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "syntax error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    .end local v3    # "val":I
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v6

    float-to-int v3, v6

    .line 307
    .restart local v3    # "val":I
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 313
    :cond_6
    move v4, v3

    .line 320
    :goto_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    .line 321
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 315
    :cond_7
    move v5, v3

    goto :goto_2
.end method

.method protected parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    .line 227
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v6, 0x0

    .local v6, "x":I
    const/4 v7, 0x0

    .local v7, "y":I
    const/4 v5, 0x0

    .local v5, "width":I
    const/4 v0, 0x0

    .line 231
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_1

    .line 237
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 241
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 232
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 273
    new-instance v8, Ljava/awt/Rectangle;

    invoke-direct {v8, v6, v7, v5, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v8

    .line 238
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 245
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    .line 246
    .local v3, "token":I
    if-eq v3, v10, :cond_3

    const/4 v8, 0x3

    .line 249
    if-eq v3, v8, :cond_4

    .line 253
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 247
    :cond_3
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 248
    .local v4, "val":I
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1
    const-string/jumbo v8, "x"

    .line 256
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "y"

    .line 258
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "width"

    .line 260
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "height"

    .line 262
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 265
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "syntax error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 250
    .end local v4    # "val":I
    :cond_4
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v8

    float-to-int v4, v8

    .line 251
    .restart local v4    # "val":I
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 257
    :cond_5
    move v6, v4

    .line 268
    :goto_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    .line 269
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 259
    :cond_6
    move v7, v4

    goto :goto_2

    .line 261
    :cond_7
    move v5, v4

    goto :goto_2

    .line 263
    :cond_8
    move v0, v4

    goto :goto_2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9
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
    const/16 v7, 0x7b

    const/16 v8, 0x2c

    .line 31
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 33
    .local v3, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_0

    .line 40
    instance-of v6, p2, Ljava/awt/Point;

    if-nez v6, :cond_1

    .line 47
    instance-of v6, p2, Ljava/awt/Font;

    if-nez v6, :cond_3

    .line 55
    instance-of v6, p2, Ljava/awt/Rectangle;

    if-nez v6, :cond_4

    .line 64
    instance-of v6, p2, Ljava/awt/Color;

    if-nez v6, :cond_5

    .line 76
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not support awt class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 34
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 35
    return-void

    :cond_1
    move-object v2, p2

    .line 41
    check-cast v2, Ljava/awt/Point;

    .local v2, "font":Ljava/awt/Point;
    const-class v6, Ljava/awt/Point;

    .line 43
    invoke-virtual {p0, v3, v6, v7}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v6

    int-to-char v5, v6

    .local v5, "sep":C
    const-string/jumbo v6, "x"

    .line 45
    iget v7, v2, Ljava/awt/Point;->x:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "y"

    .line 46
    iget v7, v2, Ljava/awt/Point;->y:I

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .end local v2    # "font":Ljava/awt/Point;
    :cond_2
    :goto_0
    const/16 v6, 0x7d

    .line 79
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 81
    return-void

    .end local v5    # "sep":C
    :cond_3
    move-object v1, p2

    .line 48
    check-cast v1, Ljava/awt/Font;

    .local v1, "font":Ljava/awt/Font;
    const-class v6, Ljava/awt/Font;

    .line 50
    invoke-virtual {p0, v3, v6, v7}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v6

    int-to-char v5, v6

    .restart local v5    # "sep":C
    const-string/jumbo v6, "name"

    .line 52
    invoke-virtual {v1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "style"

    .line 53
    invoke-virtual {v1}, Ljava/awt/Font;->getStyle()I

    move-result v7

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "size"

    .line 54
    invoke-virtual {v1}, Ljava/awt/Font;->getSize()I

    move-result v7

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0

    .end local v1    # "font":Ljava/awt/Font;
    .end local v5    # "sep":C
    :cond_4
    move-object v4, p2

    .line 56
    check-cast v4, Ljava/awt/Rectangle;

    .local v4, "rectangle":Ljava/awt/Rectangle;
    const-class v6, Ljava/awt/Rectangle;

    .line 58
    invoke-virtual {p0, v3, v6, v7}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v6

    int-to-char v5, v6

    .restart local v5    # "sep":C
    const-string/jumbo v6, "x"

    .line 60
    iget v7, v4, Ljava/awt/Rectangle;->x:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "y"

    .line 61
    iget v7, v4, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "width"

    .line 62
    iget v7, v4, Ljava/awt/Rectangle;->width:I

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "height"

    .line 63
    iget v7, v4, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0

    .end local v4    # "rectangle":Ljava/awt/Rectangle;
    .end local v5    # "sep":C
    :cond_5
    move-object v0, p2

    .line 65
    check-cast v0, Ljava/awt/Color;

    .local v0, "color":Ljava/awt/Color;
    const-class v6, Ljava/awt/Color;

    .line 67
    invoke-virtual {p0, v3, v6, v7}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v6

    int-to-char v5, v6

    .restart local v5    # "sep":C
    const-string/jumbo v6, "r"

    .line 69
    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "g"

    .line 70
    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v7

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v6, "b"

    .line 71
    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v7

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 72
    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v6

    if-lez v6, :cond_2

    const-string/jumbo v6, "alpha"

    .line 73
    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v7

    invoke-virtual {v3, v8, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C
    .locals 1
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p3, "sep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/lang/Class",
            "<*>;C)C"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    .end local p3    # "sep":C
    :goto_0
    return p3

    .restart local p3    # "sep":C
    :cond_0
    const/16 v0, 0x7b

    .line 85
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 88
    const/16 p3, 0x2c

    .local p3, "sep":C
    goto :goto_0
.end method
