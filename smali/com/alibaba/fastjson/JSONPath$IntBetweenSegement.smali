.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
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
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startValue"    # J
    .param p4, "endValue"    # J
    .param p6, "not"    # Z

    .prologue
    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    .line 1503
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    .line 1504
    iput-wide p4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    .line 1505
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    .line 1506
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1509
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v5, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1511
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1515
    instance-of v5, v2, Ljava/lang/Number;

    if-nez v5, :cond_2

    .line 1522
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return v3

    .line 1512
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    return v3

    .line 1516
    :cond_2
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1517
    .local v0, "longPropertyValue":J
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_3

    move v5, v4

    :goto_0
    if-nez v5, :cond_0

    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    move v5, v4

    :goto_1
    if-nez v5, :cond_0

    .line 1518
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    if-eqz v5, :cond_5

    :goto_2
    return v3

    :cond_3
    move v5, v3

    .line 1517
    goto :goto_0

    :cond_4
    move v5, v3

    goto :goto_1

    :cond_5
    move v3, v4

    .line 1518
    goto :goto_2
.end method
