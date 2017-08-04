.class public Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;
.super Ljava/lang/Object;
.source "OptionalCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    const-class v5, Ljava/util/OptionalInt;

    .line 24
    if-eq p2, v5, :cond_0

    const-class v5, Ljava/util/OptionalLong;

    .line 34
    if-eq p2, v5, :cond_2

    const-class v5, Ljava/util/OptionalDouble;

    .line 44
    if-eq p2, v5, :cond_4

    .line 54
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_6

    .line 61
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    return-object v5

    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    const-class v5, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v5

    return-object v5

    .line 28
    :cond_1
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v5

    return-object v5

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2
    const-class v5, Ljava/lang/Long;

    .line 35
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .restart local v0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    .line 37
    .local v3, "value":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v5

    return-object v5

    .line 38
    :cond_3
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v5

    return-object v5

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Long;
    :cond_4
    const-class v5, Ljava/lang/Double;

    .line 45
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .restart local v0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 47
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v5

    return-object v5

    .line 48
    :cond_5
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v5

    return-object v5

    .line 58
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Double;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    return-object v5
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 65
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 13
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
    .line 71
    if-eqz p2, :cond_0

    .line 76
    instance-of v10, p2, Ljava/util/Optional;

    if-nez v10, :cond_1

    .line 83
    instance-of v10, p2, Ljava/util/OptionalDouble;

    if-nez v10, :cond_3

    .line 94
    instance-of v10, p2, Ljava/util/OptionalInt;

    if-nez v10, :cond_5

    .line 105
    instance-of v10, p2, Ljava/util/OptionalLong;

    if-nez v10, :cond_7

    .line 116
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not support optional : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 73
    return-void

    :cond_1
    move-object v0, p2

    .line 77
    check-cast v0, Ljava/util/Optional;

    .line 78
    .local v0, "optional":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v7, 0x0

    .line 79
    .local v7, "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 80
    return-void

    .line 78
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .end local v0    # "optional":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    :cond_3
    move-object v1, p2

    .line 84
    check-cast v1, Ljava/util/OptionalDouble;

    .line 85
    .local v1, "optional":Ljava/util/OptionalDouble;
    invoke-virtual {v1}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v10

    if-nez v10, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 91
    :goto_1
    return-void

    .line 86
    :cond_4
    invoke-virtual {v1}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v4

    .line 87
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "optional":Ljava/util/OptionalDouble;
    .end local v4    # "value":D
    :cond_5
    move-object v2, p2

    .line 95
    check-cast v2, Ljava/util/OptionalInt;

    .line 96
    .local v2, "optional":Ljava/util/OptionalInt;
    invoke-virtual {v2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v10

    if-nez v10, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 102
    :goto_2
    return-void

    .line 97
    :cond_6
    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v6

    .line 98
    .local v6, "value":I
    iget-object v10, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_2

    .end local v2    # "optional":Ljava/util/OptionalInt;
    .end local v6    # "value":I
    :cond_7
    move-object v3, p2

    .line 106
    check-cast v3, Ljava/util/OptionalLong;

    .line 107
    .local v3, "optional":Ljava/util/OptionalLong;
    invoke-virtual {v3}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v10

    if-nez v10, :cond_8

    .line 111
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 113
    :goto_3
    return-void

    .line 108
    :cond_8
    invoke-virtual {v3}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v8

    .line 109
    .local v8, "value":J
    iget-object v10, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v10, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_3
.end method
