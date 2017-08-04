.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPropertySegement"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyNames"    # [Ljava/lang/String;

    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    .line 1312
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;

    .prologue
    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1317
    .local v1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 1322
    return-object v1

    .line 1317
    :cond_0
    aget-object v2, v4, v3

    .line 1318
    .local v2, "propertyName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p1, p3, v2, v6}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1319
    .local v0, "fieldValue":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
