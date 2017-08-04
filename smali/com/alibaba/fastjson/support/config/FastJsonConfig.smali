.class public Lcom/alibaba/fastjson/support/config/FastJsonConfig;
.super Ljava/lang/Object;
.source "FastJsonConfig.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private classSerializeFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/lang/String;

.field private features:[Lcom/alibaba/fastjson/parser/Feature;

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    .line 76
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 77
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 79
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 80
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 81
    new-array v0, v1, [Lcom/alibaba/fastjson/parser/Feature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    .line 82
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getClassSerializeFilters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->classSerializeFilters:Ljava/util/Map;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/parser/Feature;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-object v0
.end method

.method public getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    return-object v0
.end method

.method public getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    .line 203
    return-void
.end method

.method public setClassSerializeFilters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "classSerializeFilters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->classSerializeFilters:Ljava/util/Map;

    .line 175
    return-void

    .line 168
    :cond_0
    return-void

    .line 170
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/parser/Feature;)V
    .locals 0
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    .line 152
    return-void
.end method

.method public setParserConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 110
    return-void
.end method

.method public setSerializeConfig(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 0
    .param p1, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 96
    return-void
.end method

.method public varargs setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 0
    .param p1, "serializeFilters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 138
    return-void
.end method

.method public varargs setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .param p1, "serializerFeatures"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 124
    return-void
.end method
