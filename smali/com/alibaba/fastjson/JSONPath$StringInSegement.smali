.class Lcom/alibaba/fastjson/JSONPath$StringInSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "not"    # Z

    .prologue
    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    .line 1576
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    .line 1577
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    .line 1578
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1581
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v4, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1583
    .local v0, "propertyValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    array-length v6, v5

    move v4, v2

    :goto_0
    if-lt v4, v6, :cond_0

    .line 1591
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return v2

    .line 1583
    :cond_0
    aget-object v1, v5, v4

    .line 1584
    .local v1, "value":Ljava/lang/String;
    if-eq v1, v0, :cond_2

    .line 1586
    if-nez v1, :cond_4

    .line 1583
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1585
    :cond_2
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    if-eqz v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 1586
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1587
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    if-eqz v4, :cond_5

    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2
.end method
