.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
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
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .prologue
    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    .line 1646
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 1647
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1648
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

    .line 1651
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v5, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1653
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1657
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 1661
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1663
    .local v0, "doubleValue":D
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_2

    .line 1665
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_4

    .line 1667
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_6

    .line 1669
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_8

    .line 1671
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_a

    .line 1673
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v5, v6, :cond_c

    .line 1677
    return v4

    .line 1654
    .end local v0    # "doubleValue":D
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    return v4

    .line 1658
    :cond_1
    return v4

    .line 1664
    .end local v2    # "propertyValue":Ljava/lang/Object;
    .restart local v0    # "doubleValue":D
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v6

    if-nez v5, :cond_3

    :goto_0
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1666
    :cond_4
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v6

    if-eqz v5, :cond_5

    :goto_1
    return v3

    :cond_5
    move v3, v4

    goto :goto_1

    .line 1668
    :cond_6
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_7

    :goto_2
    return v3

    :cond_7
    move v3, v4

    goto :goto_2

    .line 1670
    :cond_8
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v6

    if-lez v5, :cond_9

    :goto_3
    return v3

    :cond_9
    move v3, v4

    goto :goto_3

    .line 1672
    :cond_a
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_b

    :goto_4
    return v3

    :cond_b
    move v3, v4

    goto :goto_4

    .line 1674
    :cond_c
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v5, v0, v6

    if-gez v5, :cond_d

    :goto_5
    return v3

    :cond_d
    move v3, v4

    goto :goto_5
.end method
