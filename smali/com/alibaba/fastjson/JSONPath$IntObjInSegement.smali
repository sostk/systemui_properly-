.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
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
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Long;
    .param p3, "not"    # Z

    .prologue
    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    .line 1534
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 1535
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    .line 1536
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
    .line 1539
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, p4, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1541
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1551
    instance-of v4, v2, Ljava/lang/Number;

    if-nez v4, :cond_5

    .line 1564
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v4

    .line 1542
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_2

    .line 1548
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v4

    .line 1542
    :cond_2
    aget-object v3, v5, v4

    .line 1543
    .local v3, "value":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 1542
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1544
    :cond_3
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 1552
    .end local v3    # "value":Ljava/lang/Long;
    :cond_5
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1553
    .local v0, "longPropertyValue":J
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 1554
    .restart local v3    # "value":Ljava/lang/Long;
    if-eqz v3, :cond_7

    .line 1558
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-nez v7, :cond_7

    .line 1559
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    return v4

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    .line 1553
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
