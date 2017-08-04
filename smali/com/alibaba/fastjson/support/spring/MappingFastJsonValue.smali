.class public Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
.super Ljava/lang/Object;
.source "MappingFastJsonValue.java"


# instance fields
.field private jsonpFunction:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getJsonpFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setJsonpFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    .line 35
    return-void
.end method
