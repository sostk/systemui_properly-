.class public Lcom/alibaba/fastjson/JSONPath$FilterSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegement"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alibaba/fastjson/JSONPath$Filter;

    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1839
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1843
    if-eqz p3, :cond_0

    .line 1847
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1849
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v3, p3, Ljava/lang/Iterable;

    if-nez v3, :cond_1

    .line 1862
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1866
    return-object v4

    .line 1844
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-object v4

    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move-object v3, p3

    .line 1850
    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1851
    .local v0, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1859
    return-object v2

    .line 1852
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1854
    .local v1, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1855
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1863
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/lang/Object;
    :cond_4
    return-object p3
.end method
