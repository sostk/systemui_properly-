.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONStreamAware;
.implements Lcom/alibaba/fastjson/JSONAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.20"

.field private static final bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final charsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;

.field static final emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    const-string/jumbo v1, "@type"

    .line 85
    sput-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 87
    new-array v1, v2, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    sput-object v1, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 89
    sput-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 94
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/lit8 v0, v1, 0x0

    .line 95
    .local v0, "features":I
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 101
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 102
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 108
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/lit8 v0, v1, 0x0

    .line 109
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 110
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 111
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 112
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 927
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 945
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateBytes(I)[B
    .locals 3
    .param p0, "length"    # I

    .prologue
    const/high16 v2, 0x10000

    .line 929
    sget-object v1, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 931
    .local v0, "chars":[B
    if-eqz v0, :cond_0

    .line 938
    array-length v1, v0

    if-lt v1, p0, :cond_2

    .line 942
    :goto_0
    return-object v0

    .line 932
    :cond_0
    if-le p0, v2, :cond_1

    .line 936
    new-array v0, p0, [B

    goto :goto_0

    .line 933
    :cond_1
    new-array v0, v2, [B

    .line 934
    sget-object v1, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 939
    :cond_2
    new-array v0, p0, [B

    goto :goto_0
.end method

.method private static allocateChars(I)[C
    .locals 3
    .param p0, "length"    # I

    .prologue
    const/high16 v2, 0x10000

    .line 947
    sget-object v1, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 949
    .local v0, "chars":[C
    if-eqz v0, :cond_0

    .line 956
    array-length v1, v0

    if-lt v1, p0, :cond_2

    .line 960
    :goto_0
    return-object v0

    .line 950
    :cond_0
    if-le p0, v2, :cond_1

    .line 954
    new-array v0, p0, [C

    goto :goto_0

    .line 951
    :cond_1
    new-array v0, v2, [C

    .line 952
    sget-object v1, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 957
    :cond_2
    new-array v0, p0, [C

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    if-eqz p0, :cond_0

    .line 136
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 137
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 143
    return-object v1

    .line 133
    .end local v0    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 188
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 189
    .local v1, "featureValues":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 193
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 189
    :cond_0
    aget-object v0, p1, v2

    .line 190
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 14
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "features"    # I

    .prologue
    .line 166
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 168
    move/from16 v0, p2

    int-to-double v10, v0

    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v9

    float-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v7, v10

    .line 169
    .local v7, "scaleLength":I
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v4

    .line 171
    .local v4, "chars":[C
    invoke-static/range {p0 .. p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 172
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 173
    .local v3, "charBuf":Ljava/nio/CharBuffer;
    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 175
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    .line 177
    .local v6, "position":I
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v9

    move/from16 v0, p4

    invoke-direct {v5, v4, v6, v9, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 178
    .local v5, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v8

    .line 180
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 184
    return-object v8
.end method

.method public static varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 154
    :cond_0
    return-object v4

    .line 153
    :cond_1
    array-length v3, p0

    if-eqz v3, :cond_0

    .line 157
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 158
    .local v1, "featureValues":I
    array-length v3, p4

    :goto_0
    if-lt v2, v3, :cond_2

    .line 162
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 158
    :cond_2
    aget-object v0, p4, v2

    .line 159
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    const/4 v3, 0x0

    .line 147
    array-length v2, p0

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 148
    .local v0, "chars":[C
    array-length v2, p0

    invoke-static {p0, v3, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result v1

    .line 149
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    if-eqz p0, :cond_0

    .line 464
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 468
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 469
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 472
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_2

    .line 475
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 476
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 478
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 481
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 483
    return-object v0

    .line 461
    .end local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_0
    return-object v3

    .line 470
    .restart local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    .line 471
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_0

    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const/4 v0, 0x0

    .line 473
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 487
    if-eqz p0, :cond_1

    .line 493
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 494
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 495
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    .local v3, "token":I
    const/16 v4, 0x8

    .line 496
    if-eq v3, v4, :cond_2

    const/16 v4, 0x14

    .line 499
    if-eq v3, v4, :cond_3

    .line 502
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 505
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 508
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 510
    return-object v1

    .line 488
    .end local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v3    # "token":I
    :cond_1
    return-object v4

    .line 497
    .restart local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local v3    # "token":I
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v1, 0x0

    .line 498
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0

    .line 499
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .line 500
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 514
    if-eqz p0, :cond_0

    .line 520
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 521
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v1

    .line 522
    .local v1, "objectArray":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 525
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 528
    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 532
    return-object v0

    .line 515
    .end local v1    # "objectArray":[Ljava/lang/Object;
    .end local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_0
    return-object v3

    .restart local v1    # "objectArray":[Ljava/lang/Object;
    .restart local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_1
    const/4 v0, 0x0

    .line 523
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_0

    .line 206
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    .line 203
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 433
    if-eqz p1, :cond_1

    :goto_0
    const/high16 v3, 0x10000

    .line 437
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->allocateBytes(I)[B

    move-result-object v0

    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 440
    .local v2, "offset":I
    :cond_0
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, "readCount":I
    const/4 v3, -0x1

    .line 441
    if-eq v7, v3, :cond_2

    .line 444
    add-int/2addr v2, v7

    .line 445
    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 446
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v6, v3, [B

    .line 447
    .local v6, "newBytes":[B
    array-length v3, v0

    invoke-static {v0, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    move-object v0, v6

    goto :goto_1

    .line 434
    .end local v0    # "bytes":[B
    .end local v2    # "offset":I
    .end local v6    # "newBytes":[B
    .end local v7    # "readCount":I
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    goto :goto_0

    .restart local v0    # "bytes":[B
    .restart local v2    # "offset":I
    .restart local v7    # "readCount":I
    :cond_2
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 452
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "type":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 456
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "featureValues"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 280
    if-eqz p0, :cond_0

    .line 284
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 288
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-direct {v1, p0, v3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 289
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 291
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 295
    return-object v2

    .line 281
    .end local v1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v3

    .line 284
    :cond_1
    aget-object v0, p3, v3

    .line 285
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v5, 0x1

    invoke-static {p2, v0, v5}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "featureValues"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 307
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p4, "featureValues"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 313
    if-eqz p0, :cond_2

    .line 317
    if-nez p5, :cond_3

    .line 323
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 325
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    if-nez p3, :cond_4

    .line 339
    .end local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    :cond_1
    :goto_0
    invoke-virtual {v1, p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 345
    return-object v2

    .line 314
    .end local v1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .restart local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    :cond_2
    return-object v6

    .line 318
    :cond_3
    array-length v4, p5

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p5, v3

    .line 319
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v5, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v5

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    .restart local v1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_4
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-nez v3, :cond_5

    .line 330
    :goto_2
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-nez v3, :cond_6

    .line 334
    :goto_3
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v3, :cond_1

    .line 335
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .end local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V

    goto :goto_0

    .line 327
    .restart local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 302
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "clazz"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p3, :cond_0

    .line 363
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-eq p3, v3, :cond_1

    .line 368
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 370
    .local v2, "strVal":Ljava/lang/String;
    :goto_1
    invoke-static {v2, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 359
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_0
    sget-object p3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 364
    :cond_1
    array-length v3, p0

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 365
    .local v0, "chars":[C
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result v1

    .line 366
    .local v1, "chars_len":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v2    # "strVal":Ljava/lang/String;
    goto :goto_1
.end method

.method public static varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 10
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "clazz"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 382
    int-to-double v6, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v5

    float-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 383
    .local v4, "scaleLength":I
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v2

    .line 385
    .local v2, "chars":[C
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 387
    .local v1, "charByte":Ljava/nio/CharBuffer;
    invoke-static {p3, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 389
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 391
    .local v3, "position":I
    invoke-static {v2, v3, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 350
    array-length v2, p0

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # [C
    .param p1, "length"    # I
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 396
    if-nez p0, :cond_1

    .line 397
    :cond_0
    return-object v6

    .line 396
    :cond_1
    array-length v5, p0

    if-eqz v5, :cond_0

    .line 400
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 401
    .local v1, "featureValues":I
    array-length v5, p3

    :goto_0
    if-lt v4, v5, :cond_2

    .line 405
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-direct {v2, p0, p1, v4, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 406
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 408
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 412
    return-object v3

    .line 401
    .end local v2    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    aget-object v0, p3, v4

    .line 402
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v6, 0x1

    invoke-static {v1, v0, v6}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v1

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static setDefaultTypeKey(Ljava/lang/String;)V
    .locals 4
    .param p0, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 120
    sput-object p0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 121
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 824
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 831
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 23
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .prologue
    .line 836
    if-eqz p0, :cond_0

    .line 840
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSON;

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 844
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 859
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 872
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 874
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v20

    if-nez v20, :cond_6

    .line 878
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-nez v20, :cond_7

    .line 892
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 896
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v17

    .line 897
    .local v17, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 912
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 913
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    return-object v20

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "text":Ljava/lang/String;
    :cond_0
    const/16 v20, 0x0

    .line 837
    return-object v20

    .line 841
    :cond_1
    return-object p0

    :cond_2
    move-object/from16 v16, p0

    .line 845
    check-cast v16, Ljava/util/Map;

    .line 847
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 849
    .local v11, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 856
    return-object v11

    .line 849
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 850
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 851
    .local v14, "key":Ljava/lang/Object;
    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 852
    .local v12, "jsonKey":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 853
    .local v13, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v11, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "jsonKey":Ljava/lang/String;
    .end local v13    # "jsonValue":Ljava/lang/Object;
    .end local v14    # "key":Ljava/lang/Object;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    move-object/from16 v4, p0

    .line 860
    check-cast v4, Ljava/util/Collection;

    .line 862
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 864
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 869
    return-object v2

    .line 864
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 865
    .local v9, "item":Ljava/lang/Object;
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 866
    .restart local v13    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 875
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v9    # "item":Ljava/lang/Object;
    .end local v13    # "jsonValue":Ljava/lang/Object;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "javaObject":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 879
    .restart local p0    # "javaObject":Ljava/lang/Object;
    :cond_7
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 881
    .local v15, "len":I
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2, v15}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v8, 0x0

    .line 883
    .local v8, "i":I
    :goto_2
    if-lt v8, v15, :cond_8

    .line 889
    return-object v2

    .line 884
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 885
    .restart local v9    # "item":Ljava/lang/Object;
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 886
    .restart local v13    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 883
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 893
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "item":Ljava/lang/Object;
    .end local v13    # "jsonValue":Ljava/lang/Object;
    .end local v15    # "len":I
    :cond_9
    return-object p0

    .restart local v17    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_a
    move-object/from16 v10, v17

    .line 898
    check-cast v10, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 900
    .local v10, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 902
    .restart local v11    # "json":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v19

    .line 903
    .local v19, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_b

    .line 909
    return-object v11

    .line 903
    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 904
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 908
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 907
    .local v5, "e":Ljava/lang/Exception;
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "toJSON error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 590
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 660
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 663
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 664
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 665
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 667
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 665
    return-object v2

    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    .line 667
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v2
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 653
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 583
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 544
    sget-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 555
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    check-cast v2, Ljava/io/Writer;

    invoke-direct {v0, v2, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 558
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 559
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 562
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 560
    return-object v2

    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    .line 562
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v2
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x1

    .line 601
    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .param p4, "defaultFeatures"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 621
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1, v4, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 624
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 626
    .local v2, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-nez p3, :cond_2

    .line 631
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 637
    :cond_1
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 639
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 641
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 639
    return-object v3

    .line 626
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    invoke-virtual {v2, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 628
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 639
    .end local v2    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v3

    .line 641
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v3

    .line 632
    .restart local v2    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :cond_3
    :try_start_2
    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p2, v3

    .line 633
    .local v0, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 608
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x0

    .line 594
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 575
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "prettyFormat"    # Z

    .prologue
    const/4 v2, 0x0

    .line 672
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 676
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 579
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 548
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 571
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 649
    sget-object v2, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/alibaba/fastjson/JSON;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 733
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p4, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p5, "dateFormat"    # Ljava/lang/String;
    .param p6, "defaultFeatures"    # I
    .param p7, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 765
    new-instance v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v3, v5, p6, p7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 768
    .local v3, "writer":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v3, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 770
    .local v2, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-nez p5, :cond_2

    .line 775
    :cond_0
    :goto_0
    if-nez p4, :cond_3

    .line 781
    :cond_1
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v3, p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 786
    .local v1, "len":I
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 784
    return v1

    .line 770
    .end local v1    # "len":I
    :cond_2
    :try_start_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 771
    invoke-virtual {v2, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 772
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 784
    .end local v2    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v4

    .line 786
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v4

    .line 776
    .restart local v2    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :cond_3
    :try_start_2
    array-length v5, p4

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, p4, v4

    .line 777
    .local v0, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 747
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 702
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 705
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 706
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 710
    return-void

    .line 709
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    .line 708
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v2
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 695
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 696
    return-void
.end method

.method public static varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 683
    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 684
    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 799
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 800
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 802
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 800
    return-object v1

    :catchall_0
    move-exception v1

    .line 802
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 924
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 807
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 809
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 810
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 816
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 814
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v2
.end method
