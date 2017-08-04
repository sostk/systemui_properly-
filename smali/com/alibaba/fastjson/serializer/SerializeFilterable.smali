.class public abstract Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.super Ljava/lang/Object;
.source "SerializeFilterable.java"


# instance fields
.field protected afterFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected beforeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected contextValueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected labelFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected nameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyPreFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected valueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected writeDirect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 98
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-nez v0, :cond_1

    .line 102
    :goto_0
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-nez v0, :cond_2

    .line 106
    :goto_1
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-nez v0, :cond_3

    .line 110
    :goto_2
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    if-nez v0, :cond_4

    .line 114
    :goto_3
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-nez v0, :cond_5

    .line 118
    :goto_4
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-nez v0, :cond_6

    .line 122
    :goto_5
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-nez v0, :cond_7

    .line 126
    :goto_6
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    if-nez v0, :cond_8

    .line 129
    .end local p1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :goto_7
    return-void

    .line 95
    .restart local p1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getNameFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getValueFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getContextValueFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getBeforeFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getAfterFilters()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 127
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getLabelFilters()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .end local p1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "propertyValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-nez v1, :cond_4

    .line 173
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 159
    .local v0, "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    return v3

    .line 166
    .end local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 167
    .restart local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 168
    return v3
.end method

.method public applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-nez v1, :cond_4

    .line 150
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 136
    .local v0, "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    return v3

    .line 143
    .end local v0    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 144
    .restart local v0    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    return v3
.end method

.method public getAfterFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getBeforeFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getContextValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getLabelFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getNameFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getPropertyFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getPropertyPreFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method public getValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    goto :goto_0
.end method

.method protected processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-nez v1, :cond_3

    .line 193
    :cond_1
    return-object p3

    .line 182
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 183
    .local v0, "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 188
    .end local v0    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 189
    .restart local v0    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1
.end method

.method protected processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "beanContext"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 202
    if-nez p5, :cond_5

    .line 212
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-nez v4, :cond_9

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 219
    .local v3, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-nez v3, :cond_a

    .line 225
    :cond_2
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    if-nez v4, :cond_b

    .line 231
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-nez v4, :cond_c

    .line 237
    :cond_4
    return-object p5

    .line 203
    .end local v3    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_5
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    if-nez v4, :cond_6

    .line 206
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->isJsonDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, p5

    .line 207
    check-cast v0, Ljava/lang/String;

    .line 208
    .local v0, "jsonStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    .line 203
    .end local v0    # "jsonStr":Ljava/lang/String;
    :cond_6
    instance-of v4, p5, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 205
    :cond_7
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 203
    :cond_8
    instance-of v4, p5, Ljava/lang/Boolean;

    if-nez v4, :cond_7

    goto :goto_1

    .line 213
    :cond_9
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 214
    .local v2, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    invoke-interface {v2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    .line 220
    .end local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    .restart local v3    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 221
    .restart local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    invoke-interface {v2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_3

    .line 226
    .end local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    :cond_b
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 227
    .local v1, "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_4

    .line 232
    .end local v1    # "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    :cond_c
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 233
    .restart local v1    # "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_5
.end method

.method protected writeDirect(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeDirect:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
