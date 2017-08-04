.class Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# static fields
.field static final features:I = 0x5

.field static fieldName:I = 0x0

.field static final obj:I = 0x2

.field static original:I = 0x0

.field static final paramFieldName:I = 0x3

.field static final paramFieldType:I = 0x4

.field static processValue:I = 0x0

.field static final serializer:I = 0x1


# instance fields
.field private final beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field private final className:Ljava/lang/String;

.field private final getters:[Lcom/alibaba/fastjson/util/FieldInfo;

.field private nonContext:Z

.field private variantIndex:I

.field private variants:Ljava/util/Map;
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

.field private final writeDirect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 57
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    const/4 v0, 0x7

    .line 58
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    const/16 v0, 0x8

    .line 59
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    return-void
.end method

.method public constructor <init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "getters"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "writeDirect"    # Z
    .param p5, "nonContext"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    const/16 v0, 0x9

    .line 67
    iput v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 76
    iput-object p3, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->className:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 78
    iput-boolean p4, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->writeDirect:Z

    .line 79
    iput-boolean p5, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->nonContext:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->writeDirect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->nonContext:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    return-object v0
.end method


# virtual methods
.method public getFieldOrinal(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "fieldIndex":I
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    .local v3, "size":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 110
    :goto_1
    return v0

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v4, v1

    .line 105
    .local v2, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public var(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 88
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

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
    .line 92
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 93
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 98
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    goto :goto_0
.end method
