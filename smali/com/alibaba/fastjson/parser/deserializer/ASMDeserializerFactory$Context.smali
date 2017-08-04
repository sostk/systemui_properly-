.class Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
.super Ljava/lang/Object;
.source "ASMDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# static fields
.field static final fieldName:I = 0x3

.field static final parser:I = 0x1

.field static final type:I = 0x2


# instance fields
.field private final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field private final className:Ljava/lang/String;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;

.field private variantIndex:I

.field private final variants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p4, "initVariantIndex"    # I

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1437
    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    .line 1438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    .line 1446
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;

    .line 1447
    iget-object v0, p3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;

    .line 1448
    iput p4, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    .line 1449
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1450
    iget-object v0, p3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1451
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1431
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    .param p1, "x1"    # [Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public getInstClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 1455
    .local v0, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1459
    :goto_0
    return-object v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public var(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1474
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1477
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1478
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public var(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "increment"    # I

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1464
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1468
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1469
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    goto :goto_0
.end method
