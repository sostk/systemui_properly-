.class public Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;
.super Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;
.source "FastJsonHttpMessageConverter4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 58
    return-void
.end method


# virtual methods
.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public read(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "inputMessage"    # Lorg/springframework/http/HttpInputMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p3}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 71
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 3
    .param p2, "inputMessage"    # Lorg/springframework/http/HttpInputMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 102
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0
    .param p1, "fastJsonConfig"    # Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 50
    return-void
.end method

.method protected supports(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected writeInternal(Ljava/lang/Object;Ljava/lang/reflect/Type;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "outputMessage"    # Lorg/springframework/http/HttpOutputMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v8

    .line 81
    .local v8, "headers":Lorg/springframework/http/HttpHeaders;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v0, "outnew":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 85
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 86
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v4

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 87
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 89
    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    move-object v2, p1

    .line 82
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 90
    .local v9, "len":I
    int-to-long v2, v9

    invoke-virtual {v8, v2, v3}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 91
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v10

    .line 92
    .local v10, "out":Ljava/io/OutputStream;
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 94
    return-void
.end method
