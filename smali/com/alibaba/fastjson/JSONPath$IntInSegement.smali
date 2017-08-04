.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
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
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[JZ)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [J
    .param p3, "not"    # Z

    .prologue
    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    .line 1470
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 1471
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    .line 1472
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1475
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v6, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1477
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1481
    instance-of v6, v2, Ljava/lang/Number;

    if-nez v6, :cond_2

    .line 1490
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return v3

    .line 1478
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    return v3

    .line 1482
    :cond_2
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1483
    .local v0, "longPropertyValue":J
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v8, v7

    move v6, v3

    :goto_0
    if-ge v6, v8, :cond_0

    aget-wide v4, v7, v6

    .line 1484
    .local v4, "value":J
    cmp-long v9, v4, v0

    if-nez v9, :cond_4

    .line 1485
    iget-boolean v6, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    if-eqz v6, :cond_3

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 1483
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
