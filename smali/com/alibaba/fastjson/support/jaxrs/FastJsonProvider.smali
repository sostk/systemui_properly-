.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;
.super Ljava/lang/Object;
.source "FastJsonProvider.java"

# interfaces
.implements Ljavax/ws/rs/ext/MessageBodyReader;
.implements Ljavax/ws/rs/ext/MessageBodyWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/ws/rs/ext/MessageBodyReader",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljavax/ws/rs/ext/MessageBodyWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Consumes;
    value = {
        "*/*"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/Produces;
    value = {
        "*/*"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/ext/Provider;
.end annotation


# instance fields
.field protected charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private clazzes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field protected features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field uriInfo:Ljavax/ws/rs/core/UriInfo;
    .annotation runtime Ljavax/ws/rs/core/Context;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 46
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 49
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 46
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 49
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 105
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->charset:Ljava/nio/charset/Charset;

    .line 46
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 49
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 96
    iput-object p1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    .line 97
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)J
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")J"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v0, -0x1

    .line 222
    return-wide v0
.end method

.method protected hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z
    .locals 4
    .param p1, "mediaType"    # Ljavax/ws/rs/core/MediaType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 189
    return v2

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljavax/ws/rs/core/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .local v0, "subtype":Ljava/lang/String;
    const-string/jumbo v3, "json"

    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    const-string/jumbo v3, "+json"

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "javascript"

    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "x-javascript"

    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "x-json"

    .line 185
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "x-www-form-urlencoded"

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "x-www-form-urlencoded"

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0
.end method

.method public isReadable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 282
    :cond_0
    return v1
.end method

.method protected isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z
    .locals 6
    .param p2, "classAnnotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 168
    return v5

    .line 156
    :cond_0
    return v2

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->clazzes:[Ljava/lang/Class;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    .line 165
    return v2

    .line 159
    :cond_2
    aget-object v0, v3, v1

    .line 161
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p1, :cond_3

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_3
    return v5
.end method

.method public isWriteable(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;)Z
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->hasMatchingMediaType(Ljavax/ws/rs/core/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->isValidType(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 207
    :cond_0
    return v1
.end method

.method public readFrom(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p6, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/ws/rs/WebApplicationException;
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    .local p5, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {p6, v0, p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 115
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0
    .param p1, "fastJsonConfig"    # Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 83
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 135
    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 145
    return-void
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljavax/ws/rs/core/MediaType;Ljavax/ws/rs/core/MultivaluedMap;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p3, "genericType"    # Ljava/lang/reflect/Type;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p5, "mediaType"    # Ljavax/ws/rs/core/MediaType;
    .param p7, "entityStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljavax/ws/rs/core/MediaType;",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/ws/rs/WebApplicationException;
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "httpHeaders":Ljavax/ws/rs/core/MultivaluedMap;, "Ljavax/ws/rs/core/MultivaluedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    .line 238
    .local v11, "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->uriInfo:Ljavax/ws/rs/core/UriInfo;

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 252
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 254
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 255
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v5

    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 256
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 258
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    move-object/from16 v1, p7

    move-object v3, p1

    .line 251
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .local v10, "len":I
    const-string/jumbo v1, "Content-Length"

    .line 261
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Ljavax/ws/rs/core/MultivaluedMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    invoke-virtual/range {p7 .. p7}, Ljava/io/OutputStream;->flush()V

    .line 264
    return-void

    .line 238
    .end local v10    # "len":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->uriInfo:Ljavax/ws/rs/core/UriInfo;

    .line 239
    invoke-interface {v1}, Ljavax/ws/rs/core/UriInfo;->getQueryParameters()Ljavax/ws/rs/core/MultivaluedMap;

    move-result-object v1

    const-string/jumbo v2, "pretty"

    invoke-interface {v1, v2}, Ljavax/ws/rs/core/MultivaluedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    if-eqz v11, :cond_2

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    .line 244
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    .local v9, "featureList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializerFeature;>;"
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    check-cast v11, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 248
    .end local v9    # "featureList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/SerializerFeature;>;"
    .restart local v11    # "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 241
    new-array v11, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .end local v11    # "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v11, v1

    .restart local v11    # "serializerFeatures":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    goto :goto_1
.end method
