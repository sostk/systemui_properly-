.class Lcom/alibaba/fastjson/JSONPath$RlikeSegement;
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
    name = "RlikeSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "not"    # Z

    .prologue
    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    .line 1765
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    .line 1766
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    .line 1767
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1770
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v5, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1772
    .local v2, "propertyValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1776
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1777
    .local v3, "strPropertyValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1778
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 1780
    .local v1, "match":Z
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    if-nez v5, :cond_1

    .line 1784
    :goto_0
    return v1

    .line 1773
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "match":Z
    .end local v3    # "strPropertyValue":Ljava/lang/String;
    :cond_0
    return v4

    .line 1781
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "match":Z
    .restart local v3    # "strPropertyValue":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
