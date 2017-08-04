.class public Lcom/alibaba/fastjson/serializer/LongCodec;
.super Ljava/lang/Object;
.source "LongCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/LongCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/LongCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    const/4 v7, 0x0

    .line 54
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 57
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 65
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 69
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .end local v4    # "value":Ljava/lang/Object;
    .local v1, "longObject":Ljava/lang/Long;
    :goto_0
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    if-eq p2, v5, :cond_2

    .end local v1    # "longObject":Ljava/lang/Long;
    :goto_1
    return-object v1

    .line 58
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .local v2, "longValue":J
    const/16 v5, 0x10

    .line 59
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1    # "longObject":Ljava/lang/Long;
    goto :goto_0

    .line 66
    .end local v1    # "longObject":Ljava/lang/Long;
    .end local v2    # "longValue":J
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    return-object v7

    .line 72
    .end local v4    # "value":Ljava/lang/Object;
    .restart local v1    # "longObject":Ljava/lang/Long;
    :cond_2
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object v1, v5

    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 78
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
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
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 36
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 38
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_1

    .line 41
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 42
    .local v2, "value":J
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 44
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    .end local v2    # "value":J
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    goto :goto_0

    .end local p2    # "object":Ljava/lang/Object;
    .restart local v2    # "value":J
    :cond_2
    const-wide/32 v6, 0x7fffffff

    .line 44
    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    move v5, v1

    :goto_1
    if-nez v5, :cond_0

    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    :goto_2
    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq p4, v1, :cond_0

    const/16 v1, 0x4c

    .line 47
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 44
    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method
