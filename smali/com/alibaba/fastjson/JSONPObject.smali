.class public Lcom/alibaba/fastjson/JSONPObject;
.super Ljava/lang/Object;
.source "JSONPObject.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/JSONSerializable;


# instance fields
.field private function:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 48
    .local v1, "writer":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPObject;->function:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    const/16 v2, 0x28

    .line 49
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/16 v2, 0x29

    .line 56
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 57
    return-void

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPObject;->parameters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2c

    .line 52
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1
.end method
