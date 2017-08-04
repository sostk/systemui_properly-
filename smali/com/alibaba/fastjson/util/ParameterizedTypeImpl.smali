.class public Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;
    .param p2, "ownerType"    # Ljava/lang/reflect/Type;
    .param p3, "rawType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 15
    iput-object p2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 16
    iput-object p3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    if-eq p0, p1, :cond_1

    .line 35
    if-nez p1, :cond_2

    :cond_0
    return v1

    .line 34
    :cond_1
    return v2

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 40
    .local v0, "that":Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;
    iget-object v3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    iget-object v3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v3, :cond_6

    .line 42
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-eqz v3, :cond_8

    :goto_0
    return v1

    .line 40
    :cond_4
    return v1

    .line 41
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_6
    return v1

    .line 42
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method
