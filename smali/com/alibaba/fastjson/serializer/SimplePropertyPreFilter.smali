.class public Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.super Ljava/lang/Object;
.source "SimplePropertyPreFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/PropertyPreFilter;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevel:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 4
    .param p2, "properties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    .line 25
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    .line 26
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    .line 35
    array-length v2, p2

    :goto_0
    if-lt v1, v2, :cond_0

    .line 40
    return-void

    .line 35
    :cond_0
    aget-object v0, p2, v1

    .line 36
    .local v0, "item":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 35
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "properties"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    if-eqz p2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    if-nez v2, :cond_4

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 81
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    if-gtz v2, :cond_6

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 94
    :cond_2
    return v4

    .line 70
    :cond_3
    return v4

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    return v4

    .line 78
    :cond_5
    return v3

    :cond_6
    const/4 v1, 0x0

    .line 83
    .local v1, "level":I
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 84
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    if-gt v1, v2, :cond_7

    .line 89
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_0

    .line 87
    :cond_7
    return v3

    .line 93
    .end local v0    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v1    # "level":I
    :cond_8
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    return v3
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getExcludes()Ljava/util/Set;
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
    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    return-object v0
.end method

.method public getIncludes()Ljava/util/Set;
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
    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxLevel()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    return v0
.end method

.method public setMaxLevel(I)V
    .locals 0
    .param p1, "maxLevel"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    .line 54
    return-void
.end method
