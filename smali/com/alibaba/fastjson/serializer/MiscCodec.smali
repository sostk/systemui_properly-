.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
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
    .line 151
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const-class v18, Ljava/net/InetSocketAddress;

    .line 153
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    .line 221
    .local v13, "objVal":Ljava/lang/Object;
    :goto_0
    if-eqz v13, :cond_9

    .line 223
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 226
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "expect string"

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 154
    .end local v13    # "objVal":Ljava/lang/Object;
    :cond_0
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v18, 0xc

    .line 159
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/4 v2, 0x0

    .local v2, "address":Ljava/net/InetAddress;
    const/16 v16, 0x0

    .line 164
    .end local v2    # "address":Ljava/net/InetAddress;
    .local v16, "port":I
    :goto_1
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    .local v11, "key":Ljava/lang/String;
    const/16 v18, 0x11

    .line 165
    move/from16 v0, v18

    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string/jumbo v18, "address"

    .line 167
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "port"

    .line 170
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x11

    .line 178
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 182
    :goto_2
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v18

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v18, 0xd

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 192
    new-instance v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v18

    .line 155
    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "port":I
    :cond_1
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v18, 0x0

    .line 156
    return-object v18

    .restart local v11    # "key":Ljava/lang/String;
    .restart local v16    # "port":I
    :cond_2
    const/16 v18, 0x11

    .line 168
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const-class v18, Ljava/net/InetAddress;

    .line 169
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .local v2, "address":Ljava/net/InetAddress;
    goto :goto_2

    .end local v2    # "address":Ljava/net/InetAddress;
    :cond_3
    const/16 v18, 0x11

    .line 171
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 172
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 175
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v16

    .line 176
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 173
    :cond_4
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "port is not int"

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 183
    :cond_5
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_1

    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "port":I
    :cond_6
    const/16 v18, 0x0

    .line 198
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v18, 0x10

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 201
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 207
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "syntax error"

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_7
    const-string/jumbo v18, "val"

    .line 202
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 205
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v18, 0x11

    .line 210
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "objVal":Ljava/lang/Object;
    const/16 v18, 0xd

    .line 214
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 203
    .end local v13    # "objVal":Ljava/lang/Object;
    :cond_8
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "syntax error"

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .restart local v13    # "objVal":Ljava/lang/Object;
    :cond_9
    const/16 v17, 0x0

    .line 229
    :goto_3
    if-nez v17, :cond_c

    :cond_a
    const/16 v18, 0x0

    .line 230
    return-object v18

    :cond_b
    move-object/from16 v17, v13

    .line 224
    check-cast v17, Ljava/lang/String;

    .local v17, "strVal":Ljava/lang/String;
    goto :goto_3

    .line 229
    .end local v17    # "strVal":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_a

    const-class v18, Ljava/util/UUID;

    .line 233
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    const-class v18, Ljava/net/URI;

    .line 237
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_f

    const-class v18, Ljava/net/URL;

    .line 241
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_10

    const-class v18, Ljava/util/regex/Pattern;

    .line 249
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    const-class v18, Ljava/util/Locale;

    .line 253
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_12

    const-class v18, Ljava/text/SimpleDateFormat;

    .line 267
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_15

    const-class v18, Ljava/net/InetAddress;

    .line 273
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 275
    :cond_d
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    return-object v18

    .line 234
    :cond_e
    invoke-static/range {v17 .. v17}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v18

    return-object v18

    .line 238
    :cond_f
    invoke-static/range {v17 .. v17}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v18

    return-object v18

    .line 243
    :cond_10
    :try_start_1
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v18

    :catch_0
    move-exception v5

    .line 245
    .local v5, "e":Ljava/net/MalformedURLException;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "create url error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 250
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_11
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    return-object v18

    :cond_12
    const-string/jumbo v18, "_"

    .line 254
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, "items":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 260
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 264
    new-instance v18, Ljava/util/Locale;

    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v20, 0x1

    aget-object v20, v10, v20

    const/16 v21, 0x2

    aget-object v21, v10, v21

    invoke-direct/range {v18 .. v21}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    .line 257
    :cond_13
    new-instance v18, Ljava/util/Locale;

    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-direct/range {v18 .. v19}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v18

    .line 261
    :cond_14
    new-instance v18, Ljava/util/Locale;

    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v20, 0x1

    aget-object v20, v10, v20

    invoke-direct/range {v18 .. v20}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    .line 268
    .end local v10    # "items":[Ljava/lang/String;
    :cond_15
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 269
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 270
    return-object v4

    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_16
    const-class v18, Ljava/net/Inet4Address;

    .line 273
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    const-class v18, Ljava/net/Inet6Address;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d

    const-class v18, Ljava/io/File;

    .line 281
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_17

    const-class v18, Ljava/util/TimeZone;

    .line 285
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 289
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-nez v18, :cond_19

    :goto_4
    const-class v18, Ljava/lang/Class;

    .line 294
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    const-class v18, Ljava/nio/charset/Charset;

    .line 298
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1b

    const-class v18, Ljava/util/Currency;

    .line 302
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1c

    const-class v18, Lcom/alibaba/fastjson/JSONPath;

    .line 306
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1d

    .line 310
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .local v3, "className":Ljava/lang/String;
    const-string/jumbo v18, "java.nio.file.Path"

    .line 312
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 332
    :goto_5
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "MiscCodec not support "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 275
    .end local v3    # "className":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 277
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "deserialize inet adress error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 282
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_17
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v18

    .line 286
    :cond_18
    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    return-object v18

    :cond_19
    move-object/from16 v14, p2

    .line 290
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 291
    .local v14, "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_4

    .line 295
    .end local v14    # "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v18

    return-object v18

    .line 299
    :cond_1b
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v18

    return-object v18

    .line 303
    :cond_1c
    invoke-static/range {v17 .. v17}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v18

    return-object v18

    .line 307
    :cond_1d
    new-instance v18, Lcom/alibaba/fastjson/JSONPath;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object v18

    .line 314
    .restart local v3    # "className":Ljava/lang/String;
    :cond_1e
    :try_start_2
    sget-object v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v18, :cond_20

    .line 318
    :cond_1f
    :goto_6
    sget-object v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v18, :cond_21

    .line 322
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "Path deserialize erorr"

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_2
    move-exception v8

    .line 324
    .local v8, "ex":Ljava/lang/NoSuchMethodException;
    const/16 v18, 0x1

    sput-boolean v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    goto :goto_5

    .line 314
    .end local v8    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_20
    :try_start_3
    sget-boolean v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v18, :cond_1f

    const-string/jumbo v18, "java.nio.file.Paths"

    .line 315
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .local v15, "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "get"

    const/16 v19, 0x2

    .line 316
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-class v21, [Ljava/lang/String;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sput-object v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    .line 329
    .end local v15    # "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v7

    .line 326
    .local v7, "ex":Ljava/lang/IllegalAccessException;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "Path deserialize erorr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 319
    .end local v7    # "ex":Ljava/lang/IllegalAccessException;
    :cond_21
    :try_start_4
    sget-object v18, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v18

    return-object v18

    .line 326
    :catch_4
    move-exception v9

    .line 328
    .local v9, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v19, "Path deserialize erorr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 336
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 15
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
    .line 62
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 64
    .local v8, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .local v7, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/text/SimpleDateFormat;

    .line 72
    if-eq v7, v12, :cond_1

    const-class v12, Ljava/lang/Class;

    .line 87
    if-eq v7, v12, :cond_4

    const-class v12, Ljava/net/InetSocketAddress;

    .line 90
    if-eq v7, v12, :cond_5

    .line 105
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/io/File;

    if-nez v12, :cond_7

    .line 107
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/net/InetAddress;

    if-nez v12, :cond_8

    .line 109
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/TimeZone;

    if-nez v12, :cond_9

    .line 112
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/Currency;

    if-nez v12, :cond_a

    .line 115
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/alibaba/fastjson/JSONStreamAware;

    if-nez v12, :cond_b

    .line 119
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/Iterator;

    if-nez v12, :cond_c

    .line 123
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/lang/Iterable;

    if-nez v12, :cond_d

    .line 128
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "not support class : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 65
    .end local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 66
    return-void

    .restart local v7    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v12, p2

    .line 73
    check-cast v12, Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "pattern":Ljava/lang/String;
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 86
    :cond_2
    move-object v10, v9

    .line 131
    .end local v9    # "pattern":Ljava/lang/String;
    .end local p2    # "object":Ljava/lang/Object;
    .local v10, "strVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 132
    return-void

    .line 76
    .end local v10    # "strVal":Ljava/lang/String;
    .restart local v9    # "pattern":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p4

    if-eq v12, v0, :cond_2

    const/16 v12, 0x7b

    .line 77
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    sget-object v12, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string/jumbo v12, "val"

    .line 80
    const/16 v13, 0x2c

    invoke-virtual {v8, v13, v12, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x7d

    .line 81
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 82
    return-void

    .end local v9    # "pattern":Ljava/lang/String;
    :cond_4
    move-object/from16 v3, p2

    .line 88
    check-cast v3, Ljava/lang/Class;

    .line 89
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strVal":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "strVal":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p2

    .line 91
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 93
    .local v1, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .local v5, "inetAddress":Ljava/net/InetAddress;
    const/16 v12, 0x7b

    .line 95
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 96
    if-nez v5, :cond_6

    :goto_1
    const-string/jumbo v12, "port"

    .line 101
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    const/16 v12, 0x7d

    .line 103
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 104
    return-void

    :cond_6
    const-string/jumbo v12, "address"

    .line 97
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/16 v12, 0x2c

    .line 99
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 106
    .end local v1    # "address":Ljava/net/InetSocketAddress;
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    :cond_7
    check-cast p2, Ljava/io/File;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v10    # "strVal":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_8
    check-cast p2, Ljava/net/InetAddress;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strVal":Ljava/lang/String;
    goto :goto_0

    .end local v10    # "strVal":Ljava/lang/String;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_9
    move-object/from16 v11, p2

    .line 110
    check-cast v11, Ljava/util/TimeZone;

    .line 111
    .local v11, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strVal":Ljava/lang/String;
    goto/16 :goto_0

    .end local v10    # "strVal":Ljava/lang/String;
    .end local v11    # "timeZone":Ljava/util/TimeZone;
    :cond_a
    move-object/from16 v4, p2

    .line 113
    check-cast v4, Ljava/util/Currency;

    .line 114
    .local v4, "currency":Ljava/util/Currency;
    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strVal":Ljava/lang/String;
    goto/16 :goto_0

    .end local v4    # "currency":Ljava/util/Currency;
    .end local v10    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v2, p2

    .line 116
    check-cast v2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 117
    .local v2, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 118
    return-void

    .end local v2    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    :cond_c
    move-object/from16 v6, p2

    .line 120
    check-cast v6, Ljava/util/Iterator;

    .line 121
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v8, v6}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 122
    return-void

    .line 124
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_d
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 125
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v8, v6}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 126
    return-void
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v2, 0x5b

    .line 136
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 137
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x5d

    .line 145
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 146
    return-void

    .line 138
    :cond_0
    if-nez v0, :cond_1

    .line 141
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/16 v2, 0x2c

    .line 139
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1
.end method
