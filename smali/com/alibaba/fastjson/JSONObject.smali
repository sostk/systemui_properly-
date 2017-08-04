.class public Lcom/alibaba/fastjson/JSONObject;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 59
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "ordered"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 75
    if-nez p2, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "ordered"    # Z

    .prologue
    const/16 v0, 0x10

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 321
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 351
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fluentClear()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    return-object p0
.end method

.method public fluentPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object p0
.end method

.method public fluentPutAll(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 316
    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    return-object v1
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 159
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getByteValue(Ljava/lang/String;)B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 178
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 175
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1

    .line 149
    :cond_0
    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getDoubleValue(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    .line 255
    return-wide v2
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 239
    return v1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 210
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 207
    return v1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_0

    .line 123
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 127
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    return-object v1

    .line 120
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .line 124
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    return-object v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_0

    .line 109
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 113
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    .line 106
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .line 110
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 226
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    .line 223
    return-wide v2
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
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
    .line 131
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "obj":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public getShortValue(Ljava/lang/String;)S
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 194
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 191
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSqlDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_0
    return-object v1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 366
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 367
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v2

    if-eq v5, v9, :cond_0

    .line 403
    array-length v5, v2

    if-eqz v5, :cond_8

    .line 444
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "equals"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 372
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 373
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_3

    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 378
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 379
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_4

    .line 385
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 399
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    aget-object v6, p3, v7

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-object v8

    .line 369
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    aget-object v5, p3, v7

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 374
    .restart local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v5, "set"

    .line 388
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 392
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 389
    :cond_6
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 394
    :cond_7
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 405
    .restart local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_a

    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 410
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 411
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_b

    .line 417
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    :goto_2
    if-eqz v1, :cond_c

    .line 440
    :goto_3
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 441
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 406
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 413
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_2

    .line 418
    .end local v1    # "name":Ljava/lang/String;
    :cond_c
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v5, "get"

    .line 419
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "is"

    .line 425
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "hashCode"

    .line 431
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "toString"

    .line 433
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 436
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 420
    :cond_d
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 422
    :cond_e
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    const/4 v5, 0x2

    .line 426
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 428
    :cond_10
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 434
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
