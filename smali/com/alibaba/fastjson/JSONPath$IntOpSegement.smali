.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
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
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .prologue
    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    .line 1603
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 1604
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1605
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

    const/4 v4, 0x0

    .line 1608
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v5, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1610
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1614
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 1618
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1620
    .local v0, "longValue":J
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_2

    .line 1622
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_4

    .line 1624
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_6

    .line 1626
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_9

    .line 1628
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_c

    .line 1630
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_f

    .line 1634
    return v4

    .line 1611
    .end local v0    # "longValue":J
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    return v4

    .line 1615
    :cond_1
    return v4

    .line 1621
    .end local v2    # "propertyValue":Ljava/lang/Object;
    .restart local v0    # "longValue":J
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    :goto_0
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1623
    :cond_4
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-eqz v5, :cond_5

    :goto_1
    return v3

    :cond_5
    move v3, v4

    goto :goto_1

    .line 1625
    :cond_6
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_7

    move v5, v3

    :goto_2
    if-nez v5, :cond_8

    :goto_3
    return v3

    :cond_7
    move v5, v4

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_3

    .line 1627
    :cond_9
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-gtz v5, :cond_a

    move v5, v3

    :goto_4
    if-nez v5, :cond_b

    :goto_5
    return v3

    :cond_a
    move v5, v4

    goto :goto_4

    :cond_b
    move v3, v4

    goto :goto_5

    .line 1629
    :cond_c
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-lez v5, :cond_d

    move v5, v3

    :goto_6
    if-nez v5, :cond_e

    :goto_7
    return v3

    :cond_d
    move v5, v4

    goto :goto_6

    :cond_e
    move v3, v4

    goto :goto_7

    .line 1631
    :cond_f
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v5, v0, v6

    if-ltz v5, :cond_10

    move v5, v3

    :goto_8
    if-nez v5, :cond_11

    :goto_9
    return v3

    :cond_10
    move v5, v4

    goto :goto_8

    :cond_11
    move v3, v4

    goto :goto_9
.end method
