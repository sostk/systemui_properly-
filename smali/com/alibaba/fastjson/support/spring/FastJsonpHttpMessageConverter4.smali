.class public Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;
.super Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;
.source "FastJsonpHttpMessageConverter4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSONP_FUNCTION_PREFIX_BYTES:[B

.field private static final JSONP_FUNCTION_SUFFIX_BYTES:[B


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "/**/"

    .line 156
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    const-string/jumbo v0, ");"

    .line 157
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 106
    return-void
.end method


# virtual methods
.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

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
    .line 118
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p3}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 119
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

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
    .line 126
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 127
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

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
    .line 97
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 98
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
    .line 110
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected writeInternal(Ljava/lang/Object;Ljava/lang/reflect/Type;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 12
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
    .line 133
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v9

    .line 134
    .local v9, "headers":Lorg/springframework/http/HttpHeaders;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v0, "outnew":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->writePrefix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I

    move-result v10

    .line 136
    .local v10, "len":I
    move-object v2, p1

    .line 137
    .local v2, "value":Ljava/lang/Object;
    instance-of v1, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 142
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 144
    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 145
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 146
    invoke-virtual {v5}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v7, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 148
    invoke-virtual {v7}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    .line 141
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    add-int/2addr v10, v1

    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->writeSuffix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v10, v1

    .line 150
    int-to-long v4, v10

    invoke-virtual {v9, v4, v5}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 151
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v11

    .line 152
    .local v11, "out":Ljava/io/OutputStream;
    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 154
    return-void

    .end local v11    # "out":Ljava/io/OutputStream;
    :cond_0
    move-object v8, p1

    .line 138
    check-cast v8, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 139
    .local v8, "container":Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method protected writePrefix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I
    .locals 5
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    instance-of v3, p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-nez v3, :cond_0

    .end local p2    # "object":Ljava/lang/Object;
    .local v1, "jsonpFunction":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 166
    .local v2, "length":I
    if-nez v1, :cond_1

    .line 172
    :goto_1
    return v2

    .line 163
    .end local v1    # "jsonpFunction":Ljava/lang/String;
    .end local v2    # "length":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 164
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 167
    .restart local v1    # "jsonpFunction":Ljava/lang/String;
    .restart local v2    # "length":I
    :cond_1
    sget-object v3, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 169
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    sget-object v3, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    array-length v3, v3

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x0

    goto :goto_1
.end method

.method protected writeSuffix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I
    .locals 3
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 179
    instance-of v2, p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-nez v2, :cond_0

    .end local p2    # "object":Ljava/lang/Object;
    .local v0, "jsonpFunction":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 182
    .local v1, "length":I
    if-nez v0, :cond_1

    .line 186
    :goto_1
    return v1

    .line 179
    .end local v0    # "jsonpFunction":Ljava/lang/String;
    .end local v1    # "length":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 180
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    .restart local v0    # "jsonpFunction":Ljava/lang/String;
    .restart local v1    # "length":I
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    sget-object v2, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    array-length v2, v2

    add-int/lit8 v1, v2, 0x0

    goto :goto_1
.end method
