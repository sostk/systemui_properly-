.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final input:Ljava/lang/Object;

.field protected transient lastBeanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    .line 109
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .prologue
    .line 168
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 92
    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 100
    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 102
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 103
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 104
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 176
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 177
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 178
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 179
    iget-object v1, p3, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 181
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .local v0, "ch":I
    const/16 v1, 0x7b

    .line 182
    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    .line 185
    if-eq v0, v1, :cond_1

    .line 189
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 191
    .end local p2    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :goto_0
    return-void

    .line 183
    .restart local p2    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 184
    check-cast p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .end local p2    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/16 v1, 0xc

    iput v1, p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 186
    .restart local p2    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 187
    check-cast p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .end local p2    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/16 v1, 0xe

    iput v1, p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 156
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .prologue
    .line 160
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 161
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .prologue
    .line 164
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 165
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 6
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    const/4 v5, 0x0

    .line 1262
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1263
    .local v0, "i":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_0

    .line 1265
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1271
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v3, v0

    .line 1272
    return-void

    :cond_0
    const/16 v3, 0x8

    .line 1264
    new-array v3, v3, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1266
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1267
    .local v2, "newLen":I
    new-array v1, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1268
    .local v1, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method


# virtual methods
.method public final accept(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1386
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1389
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1390
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1387
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1392
    return-void
.end method

.method public final accept(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "nextExpectToken"    # I

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1396
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1399
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1401
    :goto_0
    return-void

    .line 1397
    :cond_0
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0
.end method

.method public acceptType(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 992
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 994
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 998
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1004
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 999
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1000
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 1006
    :goto_0
    return-void

    .line 1001
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1196
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    return-void

    .line 1194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    goto :goto_0
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 6
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x0

    .line 1028
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1029
    :cond_0
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_1

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 1038
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1039
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1040
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 1030
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    move-object v1, p1

    .line 1031
    check-cast v1, Ljava/util/List;

    .line 1032
    .local v1, "list":Ljava/util/List;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 1033
    .restart local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1034
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1035
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1047
    iget v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1048
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1049
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1050
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1051
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v2, 0x0

    .line 1052
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1412
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1420
    return-void

    .line 1413
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 1414
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    :catchall_0
    move-exception v1

    .line 1418
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v1
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1374
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1207
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0

    .line 1205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    goto :goto_0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1214
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0

    .line 1212
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    goto :goto_0
.end method

.method public getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1017
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1023
    return-object v1

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v1
.end method

.method public getResolveStatus()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getResolveTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1189
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    return-object v0

    .line 1187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    goto :goto_0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1423
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    .line 1427
    .local v1, "i":I
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-lt v1, v5, :cond_1

    .line 1446
    return-void

    .line 1424
    .end local v1    # "i":I
    .end local v5    # "size":I
    :cond_0
    return-void

    .line 1428
    .restart local v1    # "i":I
    .restart local v5    # "size":I
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1429
    .local v6, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iget-object v3, v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .local v3, "ref":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1432
    .local v2, "object":Ljava/lang/Object;
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v7, :cond_2

    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    const-string/jumbo v7, "$"

    .line 1436
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1437
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1440
    .local v4, "refValue":Ljava/lang/Object;
    :goto_2
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1442
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v0, :cond_4

    .line 1427
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "refValue":Ljava/lang/Object;
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v2, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1

    .line 1437
    .end local v2    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 1443
    .restart local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v4    # "refValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1275
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1288
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1289
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1368
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1291
    :pswitch_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1292
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1293
    .local v5, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1294
    return-object v5

    .line 1296
    .end local v5    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1297
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 1298
    .local v7, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v7, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1299
    return-object v7

    .line 1301
    .end local v7    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1302
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1303
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1306
    return-object v0

    .line 1304
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 1308
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    invoke-direct {v4, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1309
    .local v4, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v4, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 1311
    .end local v4    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1312
    .local v1, "intValue":Ljava/lang/Number;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1313
    return-object v1

    .line 1315
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1316
    .local v10, "value":Ljava/lang/Object;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1317
    return-object v10

    .line 1319
    .end local v10    # "value":Ljava/lang/Object;
    :pswitch_7
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v11, 0x10

    .line 1320
    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1322
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1333
    :goto_0
    return-object v6

    .line 1323
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    .line 1329
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .line 1326
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1329
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1326
    return-object v11

    .line 1330
    :catchall_0
    move-exception v11

    .line 1329
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v11

    .line 1335
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v11, 0x0

    .line 1336
    return-object v11

    .line 1338
    :pswitch_9
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v11, 0x0

    .line 1339
    return-object v11

    .line 1341
    :pswitch_a
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1342
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v11

    .line 1344
    :pswitch_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1345
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v11

    :pswitch_c
    const/16 v11, 0x12

    .line 1347
    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1349
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x12

    if-ne v11, v12, :cond_3

    const/16 v11, 0xa

    .line 1352
    invoke-interface {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v11, 0xa

    .line 1354
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1355
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .local v8, "time":J
    const/4 v11, 0x2

    .line 1356
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 v11, 0xb

    .line 1358
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1360
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    return-object v11

    .line 1350
    .end local v8    # "time":J
    :cond_3
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1362
    :pswitch_d
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1365
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unterminated json string, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    const/4 v11, 0x0

    .line 1363
    return-object v11

    .line 1289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 632
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 637
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 642
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x10

    .line 646
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_1

    .line 647
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 650
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_2

    const/4 v1, 0x0

    .line 655
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, p1, :cond_3

    const-class v6, Ljava/lang/String;

    .line 658
    if-eq v6, p1, :cond_4

    .line 662
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 663
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 666
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 667
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v2, 0x0

    .line 670
    .local v2, "i":I
    :goto_2
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 677
    :goto_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xf

    if-eq v6, v7, :cond_d

    .line 681
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, p1, :cond_7

    const-class v6, Ljava/lang/String;

    .line 684
    if-eq v6, p1, :cond_8

    .line 701
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_b

    .line 705
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, p0, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 707
    :goto_4
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 711
    :goto_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v6, v9, :cond_c

    .line 669
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 646
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v2    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 651
    :cond_2
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 656
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 657
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 659
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 660
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 672
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 671
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-eq v6, v9, :cond_5

    goto/16 :goto_3

    .line 682
    :cond_7
    sget-object v6, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v7}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 683
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 718
    .end local v4    # "val":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    .line 717
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v6

    .line 686
    :cond_8
    :try_start_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 690
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 691
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_a

    .line 694
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 698
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_7
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 687
    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v7, 0x10

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_7

    .end local v5    # "value":Ljava/lang/String;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_a
    const/4 v5, 0x0

    .line 692
    .local v5, "value":Ljava/lang/String;
    goto :goto_7

    .line 702
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v4, 0x0

    .line 703
    .restart local v4    # "val":Ljava/lang/Object;
    goto/16 :goto_4

    .line 712
    .end local v4    # "val":Ljava/lang/Object;
    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 717
    :cond_d
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 720
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 721
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v0, 0x0

    .line 1069
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1070
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x10

    .line 1074
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1076
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x15

    if-ne v8, v9, :cond_1

    .line 1077
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1080
    :goto_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_2

    .line 1085
    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1087
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1088
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v1, 0x0

    .line 1091
    .local v1, "i":I
    :goto_1
    :try_start_0
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1099
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1164
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 1168
    :goto_3
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1171
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eq v8, v10, :cond_9

    .line 1090
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1076
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x16

    if-eq v8, v9, :cond_0

    goto :goto_0

    .line 1081
    :cond_2
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "syntax error, expect [, actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    invoke-static {v10}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", pos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1082
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1093
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1092
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-eq v8, v10, :cond_3

    goto :goto_2

    .line 1101
    :pswitch_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    const/16 v8, 0x10

    .line 1102
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1090
    .end local v7    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    .line 1177
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v8

    .line 1105
    :pswitch_2
    :try_start_2
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1108
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    :goto_5
    const/16 v8, 0x10

    .line 1110
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 1106
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_5

    .line 1113
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v8, 0x10

    .line 1114
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1116
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1125
    move-object v7, v6

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1117
    .end local v7    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1121
    move-object v7, v6

    .line 1123
    .restart local v7    # "value":Ljava/lang/Object;
    :goto_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_3

    .line 1119
    .end local v7    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_6

    .line 1130
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "stringLiteral":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v7    # "value":Ljava/lang/Object;
    const/16 v8, 0x10

    .line 1131
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 1134
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v7    # "value":Ljava/lang/Object;
    const/16 v8, 0x10

    .line 1135
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 1138
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_6
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    invoke-direct {v5, v8}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1139
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1142
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_7
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1143
    .local v3, "items":Ljava/util/Collection;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1144
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1147
    move-object v7, v3

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1145
    .end local v7    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .end local v3    # "items":Ljava/util/Collection;
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_8
    const/4 v7, 0x0

    .restart local v7    # "value":Ljava/lang/Object;
    const/4 v8, 0x4

    .line 1152
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_9
    const/4 v7, 0x0

    .restart local v7    # "value":Ljava/lang/Object;
    const/4 v8, 0x4

    .line 1156
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_a
    const/16 v8, 0x10

    .line 1159
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1177
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1160
    return-void

    .line 1162
    :pswitch_b
    :try_start_3
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v9, "unclosed jsonArray"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    const/4 v8, 0x4

    .line 1172
    invoke-interface {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1099
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 14
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 724
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 729
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_2

    .line 733
    array-length v11, p1

    new-array v7, v11, [Ljava/lang/Object;

    .line 734
    .local v7, "list":[Ljava/lang/Object;
    array-length v11, p1

    if-eqz v11, :cond_3

    .line 745
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v4, 0x0

    .line 747
    .local v4, "i":I
    :goto_0
    array-length v11, p1

    if-lt v4, v11, :cond_5

    .line 828
    :cond_0
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_15

    .line 832
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 834
    return-object v7

    .line 725
    .end local v4    # "i":I
    .end local v7    # "list":[Ljava/lang/Object;
    :cond_1
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v11, 0x0

    .line 726
    return-object v11

    .line 730
    :cond_2
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 735
    .restart local v7    # "list":[Ljava/lang/Object;
    :cond_3
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 737
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_4

    .line 741
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v11, 0x0

    .line 742
    new-array v11, v11, [Ljava/lang/Object;

    return-object v11

    .line 738
    :cond_4
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 750
    .restart local v4    # "i":I
    :cond_5
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    .line 754
    aget-object v8, p1, v4

    .line 755
    .local v8, "type":Ljava/lang/reflect/Type;
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v11, :cond_8

    .line 756
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    .line 760
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 761
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 811
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/Object;
    :goto_1
    aput-object v9, v7, v4

    .line 813
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_0

    .line 817
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_13

    .line 821
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-eq v4, v11, :cond_14

    .line 824
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 747
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    .line 752
    .restart local v9    # "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v8    # "type":Ljava/lang/reflect/Type;
    :cond_8
    const-class v11, Ljava/lang/Integer;

    .line 755
    if-eq v8, v11, :cond_6

    const-class v11, Ljava/lang/String;

    .line 763
    if-eq v8, v11, :cond_c

    .line 772
    const/4 v5, 0x0

    .local v5, "isArray":Z
    const/4 v1, 0x0

    .line 774
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-eq v4, v11, :cond_e

    .line 783
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isArray":Z
    :cond_9
    :goto_3
    if-nez v5, :cond_f

    .line 806
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .local v2, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v11, 0x0

    .line 807
    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 757
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 758
    .restart local v9    # "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 764
    .end local v9    # "value":Ljava/lang/Object;
    :cond_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_d

    .line 768
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 769
    .restart local v9    # "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 765
    .end local v9    # "value":Ljava/lang/Object;
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 766
    .restart local v9    # "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 775
    .end local v9    # "value":Ljava/lang/Object;
    .restart local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "isArray":Z
    :cond_e
    instance-of v11, v8, Ljava/lang/Class;

    if-eqz v11, :cond_9

    move-object v0, v8

    .line 776
    check-cast v0, Ljava/lang/Class;

    .line 777
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 778
    .local v5, "isArray":Z
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 783
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isArray":Z
    :cond_f
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_a

    .line 784
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v10, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 787
    .restart local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v3

    .line 789
    .local v3, "fastMatch":I
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_12

    .line 804
    :cond_10
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v10, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 795
    .end local v9    # "value":Ljava/lang/Object;
    .local v6, "item":Ljava/lang/Object;
    :cond_11
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .end local v6    # "item":Ljava/lang/Object;
    :cond_12
    const/4 v11, 0x0

    .line 791
    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 792
    .restart local v6    # "item":Ljava/lang/Object;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_11

    .line 796
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_10

    .line 799
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 818
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v3    # "fastMatch":I
    .end local v6    # "item":Ljava/lang/Object;
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v10    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_13
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 822
    :cond_14
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 829
    :cond_15
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 919
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    move-object v9, p1

    .line 924
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 926
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v9, v1

    if-ne v9, v12, :cond_2

    .line 930
    aget-object v0, v1, v11

    .line 932
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v9, v0, Ljava/lang/Class;

    if-nez v9, :cond_3

    .line 938
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-nez v9, :cond_4

    .line 962
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v9, :cond_7

    .line 978
    :cond_0
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v9, :cond_9

    .line 986
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 920
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    :cond_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v9, 0x0

    .line 921
    return-object v9

    .line 927
    .restart local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    :cond_2
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 933
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 935
    return-object v2

    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_4
    move-object v8, v0

    .line 939
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 942
    .local v8, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    .local v7, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/Object;

    .line 945
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 954
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v7, Ljava/lang/Class;

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v7, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 956
    return-object v2

    .line 946
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    :cond_5
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_6

    .line 950
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 948
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    .end local v8    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_7
    move-object v6, v0

    .line 963
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 964
    .local v6, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 966
    .local v4, "bounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-ne v9, v12, :cond_8

    .line 970
    aget-object v3, v4, v11

    .line 971
    .local v3, "boundType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_0

    .line 972
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "boundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 974
    return-object v2

    .line 967
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v4    # "bounds":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_9
    move-object v5, v0

    .line 979
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 981
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 983
    return-object v2
.end method

.method public parseExtra(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1462
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1463
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    const/4 v4, 0x0

    .line 1466
    .local v4, "type":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v6, :cond_2

    .line 1471
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_0
    if-eqz v4, :cond_3

    .line 1473
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 1475
    .local v5, "value":Ljava/lang/Object;
    :goto_0
    instance-of v6, p1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-nez v6, :cond_4

    .line 1481
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v6, :cond_5

    .line 1486
    :cond_1
    return-void

    .line 1467
    .end local v5    # "value":Ljava/lang/Object;
    .restart local v4    # "type":Ljava/lang/reflect/Type;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "type":Ljava/lang/reflect/Type;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1468
    .local v1, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v1, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v4

    .local v4, "type":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 1472
    .end local v1    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    move-object v0, p1

    .line 1476
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1477
    .local v0, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v0, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1478
    return-void

    .line 1482
    .end local v0    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1483
    .local v3, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v3, p1, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1284
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1282
    return-object v0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .prologue
    .line 1062
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1063
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1064
    .restart local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
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
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    .local v5, "token":I
    const/16 v6, 0x8

    .line 599
    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    .line 604
    if-eq v5, v6, :cond_2

    .line 618
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 621
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 600
    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v6, 0x0

    .line 601
    return-object v6

    :cond_2
    const-class v6, [B

    .line 605
    if-eq p1, v6, :cond_3

    const-class v6, [C

    .line 611
    if-ne p1, v6, :cond_0

    .line 612
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "strVal":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 614
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    return-object v6

    .line 606
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    .line 607
    .local v0, "bytes":[B
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 608
    return-object v0

    .line 621
    .end local v0    # "bytes":[B
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_0
    move-exception v2

    .line 623
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2

    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v3

    .line 625
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x0

    .line 1058
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v19, v0

    .line 208
    .local v19, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 213
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_9

    .line 218
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xc

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 222
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 224
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/16 v29, 0x0

    .line 226
    .local v29, "setContextFlag":Z
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 227
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    .line 228
    .local v3, "ch":C
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 236
    :goto_1
    const/16 v16, 0x0

    .local v16, "isObjectKey":Z
    const/16 v35, 0x22

    .line 238
    move/from16 v0, v35

    if-eq v3, v0, :cond_d

    const/16 v35, 0x7d

    .line 245
    move/from16 v0, v35

    if-eq v3, v0, :cond_e

    const/16 v35, 0x27

    .line 250
    move/from16 v0, v35

    if-eq v3, v0, :cond_f

    const/16 v35, 0x1a

    .line 261
    move/from16 v0, v35

    if-eq v3, v0, :cond_11

    const/16 v35, 0x2c

    .line 263
    move/from16 v0, v35

    if-eq v3, v0, :cond_12

    const/16 v35, 0x30

    .line 265
    move/from16 v0, v35

    if-ge v3, v0, :cond_13

    :cond_2
    const/16 v35, 0x2d

    move/from16 v0, v35

    if-eq v3, v0, :cond_14

    const/16 v35, 0x7b

    .line 281
    move/from16 v0, v35

    if-ne v3, v0, :cond_16

    .line 282
    :cond_3
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v18

    .line 284
    .local v18, "key":Ljava/lang/Object;
    const/16 v16, 0x1

    .line 298
    :cond_4
    if-eqz v16, :cond_18

    .line 303
    :goto_2
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    .line 305
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 307
    sget-object v35, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_19

    :cond_5
    const-string/jumbo v35, "$ref"

    .line 358
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_23

    .line 410
    :cond_6
    if-eqz v29, :cond_2f

    .line 422
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    const-class v36, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_33

    :goto_4
    const/16 v35, 0x22

    .line 427
    move/from16 v0, v35

    if-eq v3, v0, :cond_35

    const/16 v35, 0x30

    .line 441
    move/from16 v0, v35

    if-ge v3, v0, :cond_38

    :cond_7
    const/16 v35, 0x2d

    move/from16 v0, v35

    if-eq v3, v0, :cond_39

    const/16 v35, 0x5b

    .line 450
    move/from16 v0, v35

    if-eq v3, v0, :cond_3b

    const/16 v35, 0x7b

    .line 477
    move/from16 v0, v35

    if-eq v3, v0, :cond_41

    .line 535
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v34

    .line 538
    .local v34, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    const-class v36, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_4f

    .line 541
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_50

    .line 546
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 549
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "syntax error, position at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", name "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .end local v3    # "ch":C
    .end local v16    # "isObjectKey":Z
    .end local v18    # "key":Ljava/lang/Object;
    .end local v34    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v35

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v35

    .line 209
    .end local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v29    # "setContextFlag":Z
    :cond_8
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v35, 0x0

    .line 210
    return-object v35

    .line 214
    :cond_9
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 215
    return-object p1

    .line 218
    :cond_a
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    .line 219
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "syntax error, expect {, actual "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 230
    .restart local v3    # "ch":C
    .restart local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v29    # "setContextFlag":Z
    :cond_b
    :try_start_1
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 231
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 232
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    :cond_c
    const/16 v35, 0x2c

    .line 229
    move/from16 v0, v35

    if-eq v3, v0, :cond_b

    goto/16 :goto_1

    .line 239
    .restart local v16    # "isObjectKey":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v35, v0

    const/16 v36, 0x22

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v18

    .line 240
    .restart local v18    # "key":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 241
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    const/16 v35, 0x3a

    .line 242
    move/from16 v0, v35

    if-eq v3, v0, :cond_4

    .line 243
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "expect \':\' at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", name "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 246
    .end local v18    # "key":Ljava/lang/Object;
    :cond_e
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 247
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 248
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 249
    return-object p1

    .line 251
    :cond_f
    :try_start_2
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v35, v0

    const/16 v36, 0x27

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v18

    .line 256
    .restart local v18    # "key":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 257
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    const/16 v35, 0x3a

    .line 258
    move/from16 v0, v35

    if-eq v3, v0, :cond_4

    .line 259
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "expect \':\' at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 252
    .end local v18    # "key":Ljava/lang/Object;
    :cond_10
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 262
    :cond_11
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 264
    :cond_12
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    :cond_13
    const/16 v35, 0x39

    .line 265
    move/from16 v0, v35

    if-gt v3, v0, :cond_2

    .line 266
    :cond_14
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 267
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_15

    .line 272
    const/16 v35, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 277
    .restart local v18    # "key":Ljava/lang/Object;
    :goto_6
    :try_start_4
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    const/16 v35, 0x3a

    .line 278
    move/from16 v0, v35

    if-eq v3, v0, :cond_4

    .line 279
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "parse number key error"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    .end local v18    # "key":Ljava/lang/Object;
    :cond_15
    :try_start_5
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v18

    .restart local v18    # "key":Ljava/lang/Object;
    goto :goto_6

    .line 276
    .end local v18    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 275
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "parse number key error"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    const/16 v35, 0x5b

    .line 281
    move/from16 v0, v35

    if-eq v3, v0, :cond_3

    .line 286
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-eqz v35, :cond_17

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v18

    .line 291
    .restart local v18    # "key":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 292
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    const/16 v35, 0x3a

    .line 293
    move/from16 v0, v35

    if-eq v3, v0, :cond_4

    .line 294
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "expect \':\' at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", actual "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 287
    .end local v18    # "key":Ljava/lang/Object;
    :cond_17
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 299
    .restart local v18    # "key":Ljava/lang/Object;
    :cond_18
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 300
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    goto/16 :goto_2

    .line 307
    :cond_19
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v35, v0

    const/16 v36, 0x22

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v33

    .line 309
    .local v33, "typeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 311
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1b

    const/16 v35, 0x10

    .line 316
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 317
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1c

    const/16 v35, 0x2

    .line 342
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    if-nez v35, :cond_21

    .line 348
    :cond_1a
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v35

    if-gtz v35, :cond_22

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    .line 355
    .local v8, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v8, v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v35

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 355
    return-object v35

    .line 312
    .end local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_1b
    :try_start_7
    sget-object v35, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1c
    const/16 v35, 0x10

    .line 318
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x0

    .line 321
    .local v14, "instance":Ljava/lang/Object;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    .line 322
    .restart local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move/from16 v35, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v35, :cond_1d

    move-object v15, v14

    .line 326
    .end local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v14    # "instance":Ljava/lang/Object;
    .local v15, "instance":Ljava/lang/Object;
    :goto_8
    if-eqz v15, :cond_1e

    move-object v14, v15

    .line 573
    .end local v15    # "instance":Ljava/lang/Object;
    .restart local v14    # "instance":Ljava/lang/Object;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 336
    return-object v14

    .line 323
    .restart local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_1d
    :try_start_9
    check-cast v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v8    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v14

    move-object v15, v14

    .end local v14    # "instance":Ljava/lang/Object;
    .restart local v15    # "instance":Ljava/lang/Object;
    goto :goto_8

    :cond_1e
    :try_start_a
    const-class v35, Ljava/lang/Cloneable;

    .line 327
    move-object/from16 v0, v35

    if-eq v4, v0, :cond_1f

    const-string/jumbo v35, "java.util.Collections$EmptyMap"

    .line 329
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_20

    .line 332
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .end local v15    # "instance":Ljava/lang/Object;
    .restart local v14    # "instance":Ljava/lang/Object;
    goto :goto_9

    .line 328
    .end local v14    # "instance":Ljava/lang/Object;
    .restart local v15    # "instance":Ljava/lang/Object;
    :cond_1f
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .end local v15    # "instance":Ljava/lang/Object;
    .restart local v14    # "instance":Ljava/lang/Object;
    goto :goto_9

    .line 330
    .end local v14    # "instance":Ljava/lang/Object;
    .restart local v15    # "instance":Ljava/lang/Object;
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v14

    .end local v15    # "instance":Ljava/lang/Object;
    .restart local v14    # "instance":Ljava/lang/Object;
    goto :goto_9

    .line 336
    :catch_1
    move-exception v9

    .line 338
    .end local v14    # "instance":Ljava/lang/Object;
    .local v9, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_b
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "create instance error"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v35

    .line 344
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_21
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v35, v0

    if-nez v35, :cond_1a

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto/16 :goto_7

    .line 349
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v21

    .line 350
    .local v21, "newObj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 351
    return-object v21

    .line 358
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "newObj":Ljava/lang/Object;
    .end local v33    # "typeName":Ljava/lang/String;
    :cond_23
    :try_start_c
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-nez v35, :cond_6

    const/16 v35, 0x4

    .line 359
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 360
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_24

    .line 406
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "illegal ref, "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v37

    invoke-static/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 361
    :cond_24
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v25

    .local v25, "ref":Ljava/lang/String;
    const/16 v35, 0xd

    .line 362
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v26, 0x0

    .local v26, "refValue":Ljava/lang/Object;
    const-string/jumbo v35, "@"

    .line 365
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_26

    const-string/jumbo v35, ".."

    .line 375
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_29

    const-string/jumbo v35, "$"

    .line 382
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2b

    .line 395
    new-instance v35, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v35, 0x1

    .line 396
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 399
    .end local v26    # "refValue":Ljava/lang/Object;
    :cond_25
    :goto_b
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2e

    const/16 v35, 0x10

    .line 402
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 404
    return-object v26

    .line 366
    .restart local v26    # "refValue":Ljava/lang/Object;
    :cond_26
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    if-eqz v35, :cond_25

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v31, v0

    .line 368
    .local v31, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 369
    .local v32, "thisObj":Ljava/lang/Object;
    move-object/from16 v0, v32

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v35, v0

    if-eqz v35, :cond_28

    .line 370
    :cond_27
    move-object/from16 v26, v32

    goto :goto_b

    .line 369
    :cond_28
    move-object/from16 v0, v32

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v35, v0

    if-nez v35, :cond_27

    .line 371
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    if-eqz v35, :cond_25

    .line 372
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    goto :goto_b

    .line 376
    .end local v31    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v32    # "thisObj":Ljava/lang/Object;
    :cond_29
    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-nez v35, :cond_2a

    .line 379
    new-instance v35, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v35, 0x1

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_b

    .line 377
    :cond_2a
    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    goto :goto_b

    .line 383
    :cond_2b
    move-object/from16 v28, v5

    .line 384
    .local v28, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_c
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    if-nez v35, :cond_2c

    .line 388
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-nez v35, :cond_2d

    .line 391
    new-instance v35, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/16 v35, 0x1

    .line 392
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto/16 :goto_b

    .line 385
    :cond_2c
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v28, v0

    goto :goto_c

    .line 389
    :cond_2d
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    goto/16 :goto_b

    .line 400
    .end local v26    # "refValue":Ljava/lang/Object;
    .end local v28    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2e
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 411
    .end local v25    # "ref":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    if-nez v35, :cond_31

    .line 414
    :cond_30
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v6

    .line 415
    .local v6, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v5, :cond_32

    .line 418
    :goto_d
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 411
    .end local v6    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_30

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_3

    .line 416
    .restart local v6    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_32
    move-object v5, v6

    goto :goto_d

    .line 423
    .end local v6    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_33
    if-eqz v18, :cond_34

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_e
    goto/16 :goto_4

    :cond_34
    const-string/jumbo v18, "null"

    goto :goto_e

    .line 428
    :cond_35
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 429
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v30

    .line 430
    .local v30, "strValue":Ljava/lang/String;
    move-object/from16 v34, v30

    .line 432
    .restart local v34    # "value":Ljava/lang/Object;
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-nez v35, :cond_36

    .line 440
    :goto_f
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .end local v30    # "strValue":Ljava/lang/String;
    :goto_10
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 554
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v35

    move/from16 v0, v35

    int-to-char v3, v0

    const/16 v35, 0x2c

    .line 555
    move/from16 v0, v35

    if-eq v3, v0, :cond_51

    const/16 v35, 0x7d

    .line 558
    move/from16 v0, v35

    if-eq v3, v0, :cond_52

    .line 568
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "syntax error, position at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", name "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 433
    .restart local v30    # "strValue":Ljava/lang/String;
    :cond_36
    new-instance v17, Lcom/alibaba/fastjson/parser/JSONScanner;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 434
    .local v17, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v35

    if-nez v35, :cond_37

    .line 437
    :goto_11
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_f

    .line 435
    :cond_37
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v34

    goto :goto_11

    .end local v17    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v30    # "strValue":Ljava/lang/String;
    .end local v34    # "value":Ljava/lang/Object;
    :cond_38
    const/16 v35, 0x39

    .line 441
    move/from16 v0, v35

    if-gt v3, v0, :cond_7

    .line 442
    :cond_39
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 443
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3a

    .line 446
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v34

    .line 449
    .restart local v34    # "value":Ljava/lang/Object;
    :goto_12
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 444
    .end local v34    # "value":Ljava/lang/Object;
    :cond_3a
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v34

    .restart local v34    # "value":Ljava/lang/Object;
    goto :goto_12

    .line 451
    .end local v34    # "value":Ljava/lang/Object;
    :cond_3b
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 453
    new-instance v20, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 455
    .local v20, "list":Lcom/alibaba/fastjson/JSONArray;
    if-nez p2, :cond_3d

    :cond_3c
    const/16 v24, 0x0

    .line 456
    .local v24, "parentIsArray":Z
    :goto_13
    if-eqz v24, :cond_3e

    .line 460
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 462
    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    if-nez v35, :cond_3f

    .line 465
    move-object/from16 v34, v20

    .line 467
    .restart local v34    # "value":Ljava/lang/Object;
    :goto_15
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_40

    .line 472
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 475
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v36, "syntax error"

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 455
    .end local v24    # "parentIsArray":Z
    .end local v34    # "value":Ljava/lang/Object;
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    const-class v36, Ljava/lang/Integer;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3c

    const/16 v24, 0x1

    goto :goto_13

    .line 457
    .restart local v24    # "parentIsArray":Z
    :cond_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_14

    .line 463
    :cond_3f
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "value":Ljava/lang/Object;
    goto :goto_15

    .line 470
    :cond_40
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 471
    return-object p1

    .line 478
    .end local v20    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v24    # "parentIsArray":Z
    .end local v34    # "value":Ljava/lang/Object;
    :cond_41
    :try_start_e
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 480
    if-nez p2, :cond_45

    :cond_42
    const/16 v24, 0x0

    .line 482
    .restart local v24    # "parentIsArray":Z
    :goto_16
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    sget-object v35, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v35

    move/from16 v0, v35

    invoke-direct {v13, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .local v13, "input":Lcom/alibaba/fastjson/JSONObject;
    const/4 v7, 0x0

    .line 485
    .local v7, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v24, :cond_46

    .end local v7    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_17
    const/16 v22, 0x0

    .line 490
    .local v22, "obj":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 491
    .local v23, "objParsed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v35, v0

    if-nez v35, :cond_47

    .line 500
    .end local v22    # "obj":Ljava/lang/Object;
    :cond_43
    :goto_18
    if-eqz v23, :cond_49

    .line 504
    :goto_19
    if-nez v7, :cond_4a

    .line 508
    :cond_44
    :goto_1a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 510
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    const-class v36, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_4b

    .line 513
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :goto_1b
    if-nez v24, :cond_4c

    .line 521
    :goto_1c
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0xd

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_4d

    .line 526
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v35

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_4e

    .line 532
    new-instance v35, Lcom/alibaba/fastjson/JSONException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "syntax error, "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 480
    .end local v13    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v23    # "objParsed":Z
    .end local v24    # "parentIsArray":Z
    :cond_45
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    const-class v36, Ljava/lang/Integer;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_42

    const/16 v24, 0x1

    goto/16 :goto_16

    .line 486
    .restart local v7    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v24    # "parentIsArray":Z
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v13, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    .local v7, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    goto/16 :goto_17

    .line 492
    .end local v7    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v22    # "obj":Ljava/lang/Object;
    .restart local v23    # "objParsed":Z
    :cond_47
    if-nez v18, :cond_48

    const/16 v27, 0x0

    .line 493
    .local v27, "resolveFieldName":Ljava/lang/String;
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 494
    .local v12, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v12, :cond_43

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 496
    .local v11, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 497
    const/16 v23, 0x1

    goto/16 :goto_18

    .line 492
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v12    # "fieldType":Ljava/lang/reflect/Type;
    .end local v27    # "resolveFieldName":Ljava/lang/String;
    :cond_48
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_1d

    .line 501
    .end local v22    # "obj":Ljava/lang/Object;
    :cond_49
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "obj":Ljava/lang/Object;
    goto/16 :goto_19

    .line 504
    .end local v22    # "obj":Ljava/lang/Object;
    :cond_4a
    move-object/from16 v0, v22

    if-eq v13, v0, :cond_44

    .line 505
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_1a

    .line 511
    :cond_4b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    .line 518
    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_1c

    .line 522
    :cond_4d
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 524
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 525
    return-object p1

    .line 527
    :cond_4e
    if-eqz v24, :cond_1

    .line 528
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto/16 :goto_0

    .line 539
    .end local v13    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v23    # "objParsed":Z
    .end local v24    # "parentIsArray":Z
    .restart local v34    # "value":Ljava/lang/Object;
    :cond_4f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 544
    :cond_50
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 545
    return-object p1

    .line 556
    :cond_51
    :try_start_10
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    .line 559
    :cond_52
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 560
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 561
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 566
    return-object p1

    .line 336
    .end local v34    # "value":Ljava/lang/Object;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "instance":Ljava/lang/Object;
    .restart local v33    # "typeName":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v14, v15

    .end local v15    # "instance":Ljava/lang/Object;
    .restart local v14    # "instance":Ljava/lang/Object;
    goto/16 :goto_a
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 840
    .local v0, "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 841
    .local v2, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v9, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v9, :cond_2

    .line 845
    .end local v0    # "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_3

    .line 851
    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 853
    .local v8, "key":Ljava/lang/String;
    if-eqz v8, :cond_4

    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 866
    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v0, :cond_6

    .line 870
    .end local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_2
    if-eqz v4, :cond_7

    .line 885
    iget-object v9, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 886
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 888
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v9, :cond_9

    const-class v9, Ljava/lang/String;

    .line 891
    if-eq v3, v9, :cond_a

    .line 894
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v9, :cond_b

    .line 898
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 900
    .local v7, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const/4 v9, 0x0

    .line 901
    invoke-interface {v7, p0, v5, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 904
    .end local v7    # "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v6, "fieldValue":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v4, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 907
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    .line 911
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_0

    .line 912
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 913
    return-void

    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    .end local v6    # "fieldValue":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/String;
    .restart local v0    # "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    move-object v0, v2

    .line 842
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .local v0, "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    goto :goto_0

    .line 845
    .end local v0    # "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    .line 846
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, expect {, actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 854
    .restart local v8    # "key":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xd

    if-eq v9, v10, :cond_5

    .line 858
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    .line 859
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 855
    :cond_5
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 916
    return-void

    .line 867
    .restart local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    goto/16 :goto_2

    .line 871
    .end local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_7
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 875
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 876
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 878
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_0

    .line 879
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 880
    return-void

    .line 872
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setter not found, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", property "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 889
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 890
    sget-object v9, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v5, v10}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto/16 :goto_3

    .line 892
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 893
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto/16 :goto_3

    .line 895
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 896
    sget-object v9, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v5, v10}, Lcom/alibaba/fastjson/serializer/LongCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto/16 :goto_3
.end method

.method public popContext()V
    .locals 3

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1238
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1239
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1240
    return-void

    .line 1234
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 584
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1256
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1258
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1252
    return-object v0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1244
    return-object v0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 2
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1230
    return-void

    .line 1227
    :cond_0
    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 149
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 145
    return-void
.end method

.method public setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V
    .locals 0
    .param p1, "fieldTypeResolver"    # Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1223
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0
    .param p1, "resolveStatus"    # I

    .prologue
    .line 1013
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1014
    return-void
.end method

.method public throwException(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 1404
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1405
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
