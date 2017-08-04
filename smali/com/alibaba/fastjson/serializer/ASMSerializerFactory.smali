.class public Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    }
.end annotation


# static fields
.field static final JSONSerializer:Ljava/lang/String;

.field static final JavaBeanSerializer:Ljava/lang/String;

.field static final JavaBeanSerializer_desc:Ljava/lang/String;

.field static final ObjectSerializer:Ljava/lang/String;

.field static final ObjectSerializer_desc:Ljava/lang/String;

.field static final SerialContext_desc:Ljava/lang/String;

.field static final SerializeFilterable_desc:Ljava/lang/String;

.field static final SerializeWriter:Ljava/lang/String;

.field static final SerializeWriter_desc:Ljava/lang/String;


# instance fields
.field protected final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 40
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 41
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 43
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 45
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 47
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private _after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1660
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1661
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1662
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const-string/jumbo v1, "seperator"

    .line 1663
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1664
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeAfter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 1666
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1667
    return-void
.end method

.method private _apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v3, 0x15

    const/16 v4, 0xb8

    const/16 v2, 0x19

    .line 1713
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1715
    .local v0, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 1716
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1717
    invoke-interface {p1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1718
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1720
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 1723
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 1726
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    .line 1729
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    .line 1732
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    .line 1735
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    .line 1738
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    .line 1741
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/math/BigDecimal;

    .line 1744
    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/String;

    .line 1746
    if-eq v0, v1, :cond_9

    .line 1748
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_a

    const-class v1, Ljava/util/List;

    .line 1750
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "object"

    .line 1753
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v1, 0xb6

    .line 1755
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v3, "apply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    return-void

    :cond_0
    const-string/jumbo v1, "byte"

    .line 1721
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Byte"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(B)Ljava/lang/Byte;"

    .line 1722
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "short"

    .line 1724
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Short"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(S)Ljava/lang/Short;"

    .line 1725
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "int"

    .line 1727
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Integer"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(I)Ljava/lang/Integer;"

    .line 1728
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "char"

    .line 1730
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Character"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(C)Ljava/lang/Character;"

    .line 1731
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x16

    const-string/jumbo v2, "long"

    .line 1733
    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Long"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(J)Ljava/lang/Long;"

    .line 1734
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x17

    const-string/jumbo v2, "float"

    .line 1736
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Float"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(F)Ljava/lang/Float;"

    .line 1737
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x18

    const-string/jumbo v2, "double"

    .line 1739
    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Double"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(D)Ljava/lang/Double;"

    .line 1740
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "boolean"

    .line 1742
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Boolean"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(Z)Ljava/lang/Boolean;"

    .line 1743
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "decimal"

    .line 1745
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "string"

    .line 1747
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "enum"

    .line 1749
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "list"

    .line 1751
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1650
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1651
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1652
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const-string/jumbo v1, "seperator"

    .line 1653
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1654
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeBefore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 1656
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1657
    return-void
.end method

.method private _decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 9
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v8, 0xa7

    const/16 v6, 0x19

    .line 1174
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1176
    .local v2, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1177
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v4, 0x3a

    const-string/jumbo v5, "decimal"

    .line 1178
    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1180
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1182
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1183
    .local v3, "if_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1184
    .local v0, "else_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1186
    .local v1, "endIf_":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v4, "decimal"

    .line 1189
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xc7

    .line 1190
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1191
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1192
    invoke-interface {p2, v8, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1194
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v4, "out"

    .line 1196
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x15

    const-string/jumbo v5, "seperator"

    .line 1197
    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1198
    sget v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v4, "decimal"

    .line 1199
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 1200
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "writeFieldValue"

    const-string/jumbo v7, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1204
    invoke-interface {p2, v8, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1206
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1208
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1209
    return-void
.end method

.method private _double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 1134
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1136
    .local v0, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1137
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x39

    const-string/jumbo v2, "double"

    .line 1138
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1140
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1142
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1143
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1144
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x18

    const-string/jumbo v2, "double"

    .line 1145
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1146
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;D)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1150
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1151
    return-void
.end method

.method private _enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 8
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v5, 0x15

    const/16 v7, 0xb6

    const/16 v6, 0x19

    .line 1021
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1022
    .local v2, "_not_null":Lcom/alibaba/fastjson/asm/Label;
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1023
    .local v1, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1025
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1026
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v3, 0xc0

    const-string/jumbo v4, "java/lang/Enum"

    .line 1027
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x3a

    const-string/jumbo v4, "enum"

    .line 1028
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1030
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v3, "enum"

    .line 1032
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc7

    .line 1033
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1034
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v3, 0xa7

    .line 1035
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1037
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1039
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "out"

    .line 1048
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "seperator"

    .line 1049
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1050
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "write"

    const-string/jumbo v5, "(I)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "out"

    .line 1052
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1053
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x3

    .line 1054
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1055
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "writeFieldName"

    const-string/jumbo v5, "(Ljava/lang/String;Z)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1057
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "enum"

    .line 1058
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1059
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1060
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1061
    iget v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1062
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v4, "writeWithFieldName"

    const-string/jumbo v5, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1068
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1069
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1070
    return-void

    :cond_0
    const-string/jumbo v3, "out"

    .line 1040
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "seperator"

    .line 1041
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1042
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "enum"

    .line 1043
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "java/lang/Enum"

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "()Ljava/lang/String;"

    .line 1044
    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "writeFieldValueStringWithDoubleQuote"

    const-string/jumbo v5, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    .line 1476
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 1485
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_notWriteDefault(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1487
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1491
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v0, 0x99

    .line 1492
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1494
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1496
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1497
    return-void

    .line 1477
    :cond_1
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    const-string/jumbo v1, "out"

    .line 1478
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1479
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1480
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v2, "isEnabled"

    const-string/jumbo v3, "(I)Z"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 1481
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    .line 1488
    :cond_2
    return-void
.end method

.method private _float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x19

    .line 1114
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1116
    .local v0, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1117
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x38

    const-string/jumbo v2, "float"

    .line 1118
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1120
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1122
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1123
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1124
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x17

    const-string/jumbo v2, "float"

    .line 1125
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1126
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;F)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1130
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1131
    return-void
.end method

.method private _get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 8
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/16 v7, 0xc0

    const/16 v4, 0x19

    .line 1154
    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 1155
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_1

    const-string/jumbo v3, "entity"

    .line 1163
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1164
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .local v1, "field":Ljava/lang/reflect/Field;
    const/16 v3, 0xb4

    .line 1165
    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1166
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 1165
    invoke-interface {p1, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1171
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "entity"

    .line 1156
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1157
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0xb6

    .line 1158
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    .line 1168
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 9
    .param p1, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    .line 2026
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2027
    .local v0, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2028
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    .line 2029
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 2031
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 2032
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2033
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    .line 2034
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    .line 2037
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_asm_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2041
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2042
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    return-void
.end method

.method private _getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 9
    .param p1, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    .line 2003
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2004
    .local v0, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2005
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_list_item_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    .line 2007
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 2009
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 2010
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2011
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    .line 2012
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    .line 2015
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_asm_list_item_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2020
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2021
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_list_item_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method private _if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 11
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 1926
    iget-object v6, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1928
    .local v6, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1929
    .local v2, "_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1930
    .local v0, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1931
    .local v3, "_write_null":Lcom/alibaba/fastjson/asm/Label;
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1933
    .local v1, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1935
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    .local v4, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v5, 0x0

    .line 1937
    .local v5, "features":I
    if-nez v4, :cond_1

    .line 1942
    :goto_0
    sget v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_2

    .line 1949
    :goto_1
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v7, 0x19

    const-string/jumbo v8, "out"

    .line 1951
    invoke-virtual {p3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x15

    const-string/jumbo v8, "seperator"

    .line 1952
    invoke-virtual {p3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb6

    .line 1953
    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v9, "write"

    const-string/jumbo v10, "(I)V"

    invoke-interface {p1, v7, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v7, 0x19

    const-string/jumbo v8, "out"

    .line 1957
    invoke-virtual {p3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1958
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-class v7, Ljava/lang/String;

    .line 1961
    if-ne v6, v7, :cond_3

    .line 1962
    :cond_0
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_2
    const/16 v7, 0xb6

    .line 1972
    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v9, "writeNull"

    const-string/jumbo v10, "(II)V"

    invoke-interface {p1, v7, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v7, 0xa7

    .line 1977
    invoke-interface {p1, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1979
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1981
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1982
    return-void

    .line 1938
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    goto :goto_0

    :cond_2
    const/16 v7, 0x19

    const-string/jumbo v8, "out"

    .line 1943
    invoke-virtual {p3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1944
    sget v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v7, 0xb6

    .line 1945
    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v9, "isEnabled"

    const-string/jumbo v10, "(I)Z"

    invoke-interface {p1, v7, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x99

    .line 1946
    invoke-interface {p1, v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_1

    :cond_3
    const-class v7, Ljava/lang/Character;

    .line 1961
    if-eq v6, v7, :cond_0

    const-class v7, Ljava/lang/Number;

    .line 1963
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    const-class v7, Ljava/lang/Boolean;

    .line 1965
    if-eq v6, v7, :cond_6

    const-class v7, Ljava/util/Collection;

    .line 1967
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1968
    :cond_4
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_2

    .line 1964
    :cond_5
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_2

    .line 1966
    :cond_6
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1967
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    .line 1970
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private _int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V
    .locals 6
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p5, "var"    # I
    .param p6, "type"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            "IC)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x19

    const/16 v2, 0x15

    .line 1073
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1075
    .local v0, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1076
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x36

    .line 1077
    invoke-interface {p2, v1, p5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1079
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1081
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "seperator"

    .line 1082
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1083
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1084
    invoke-interface {p2, v2, p5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1086
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(CLjava/lang/String;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1090
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1091
    return-void
.end method

.method private _labelApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 5
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1523
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1524
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1525
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1526
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "applyLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/String;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 1528
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1529
    return-void
.end method

.method private _list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 28
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v21, v0

    .line 1259
    .local v21, "propertyType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 1262
    check-cast v21, Ljava/lang/reflect/ParameterizedType;

    .end local v21    # "propertyType":Ljava/lang/reflect/Type;
    invoke-interface/range {v21 .. v21}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v8, v23, v24

    .local v8, "elementType":Ljava/lang/reflect/Type;
    :goto_0
    const/4 v7, 0x0

    .line 1266
    .local v7, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, v8, Ljava/lang/Class;

    move/from16 v23, v0

    if-nez v23, :cond_5

    .end local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v23, Ljava/lang/Object;

    .line 1270
    move-object/from16 v0, v23

    if-ne v7, v0, :cond_6

    :cond_0
    const/4 v7, 0x0

    .line 1275
    :goto_2
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v11, "end_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v9, "else_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1277
    .local v10, "endIf_":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1278
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v23, 0xc0

    const-string/jumbo v24, "java/util/List"

    .line 1279
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0x3a

    const-string/jumbo v24, "list"

    .line 1280
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list"

    .line 1284
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xc7

    .line 1285
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1286
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v23, 0xa7

    .line 1287
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1289
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1291
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x15

    const-string/jumbo v24, "seperator"

    .line 1292
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1293
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list"

    .line 1298
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb9

    const-string/jumbo v24, "java/util/List"

    const-string/jumbo v25, "size"

    const-string/jumbo v26, "()I"

    .line 1299
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x36

    const-string/jumbo v24, "size"

    .line 1300
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1302
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1303
    .local v5, "_else_3":Lcom/alibaba/fastjson/asm/Label;
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v6, "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    const/16 v23, 0x15

    const-string/jumbo v24, "size"

    .line 1305
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x3

    .line 1306
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v23, 0xa0

    .line 1307
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1309
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v23, "[]"

    .line 1310
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v23, 0xb6

    .line 1311
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0xa7

    .line 1313
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1315
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1317
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-eqz v23, :cond_7

    :goto_3
    const-class v23, Ljava/lang/String;

    .line 1324
    move-object/from16 v0, v23

    if-eq v8, v0, :cond_8

    :cond_1
    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1330
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x10

    const/16 v24, 0x5b

    .line 1331
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1332
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v18, "for_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v13, "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v12, "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v23, 0x3

    .line 1336
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v23, 0x36

    const-string/jumbo v24, "i"

    .line 1337
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1340
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1341
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x15

    const-string/jumbo v24, "size"

    .line 1342
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xa2

    .line 1343
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1345
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x99

    .line 1346
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1348
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x10

    const/16 v24, 0x2c

    .line 1349
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1350
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list"

    .line 1354
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1355
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb9

    const-string/jumbo v24, "java/util/List"

    const-string/jumbo v25, "get"

    const-string/jumbo v26, "(I)Ljava/lang/Object;"

    .line 1356
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x3a

    const-string/jumbo v24, "list_item"

    .line 1357
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1359
    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v17, "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v16, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v16, "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v23, 0x19

    const-string/jumbo v24, "list_item"

    .line 1361
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xc7

    .line 1362
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1364
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1365
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "writeNull"

    const-string/jumbo v26, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0xa7

    .line 1366
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1368
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1370
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v15, "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1371
    .local v14, "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    if-nez v7, :cond_9

    .line 1427
    :cond_2
    :goto_4
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const/16 v24, 0x1

    .line 1429
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list_item"

    .line 1430
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1431
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-nez v23, :cond_f

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1434
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb8

    const-string/jumbo v24, "java/lang/Integer"

    const-string/jumbo v25, "valueOf"

    const-string/jumbo v26, "(I)Ljava/lang/Integer;"

    .line 1435
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :goto_5
    if-nez v7, :cond_10

    :cond_3
    const/16 v23, 0xb6

    .line 1444
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v25, "writeWithFieldName"

    const-string/jumbo v26, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    :goto_6
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1449
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v23, "i"

    .line 1451
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v23, 0xa7

    .line 1452
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1454
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1456
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x10

    const/16 v24, 0x5d

    .line 1457
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1458
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v12    # "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v13    # "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    .end local v14    # "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v15    # "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v16    # "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v17    # "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v18    # "for_":Lcom/alibaba/fastjson/asm/Label;
    :goto_7
    const/16 v23, 0x19

    const/16 v24, 0x1

    .line 1462
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1463
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v25, "popContext"

    const-string/jumbo v26, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1468
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1470
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1472
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1473
    return-void

    .end local v5    # "_else_3":Lcom/alibaba/fastjson/asm/Label;
    .end local v6    # "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    .end local v9    # "else_":Lcom/alibaba/fastjson/asm/Label;
    .end local v10    # "endIf_":Lcom/alibaba/fastjson/asm/Label;
    .end local v11    # "end_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v21    # "propertyType":Ljava/lang/reflect/Type;
    :cond_4
    const-class v8, Ljava/lang/Object;

    .line 1260
    .restart local v8    # "elementType":Ljava/lang/reflect/Type;
    goto/16 :goto_0

    .end local v21    # "propertyType":Ljava/lang/reflect/Type;
    .restart local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object v7, v8

    .line 1267
    check-cast v7, Ljava/lang/Class;

    .local v7, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_1

    .end local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const-class v23, Ljava/io/Serializable;

    .line 1270
    move-object/from16 v0, v23

    if-eq v7, v0, :cond_0

    goto/16 :goto_2

    .restart local v5    # "_else_3":Lcom/alibaba/fastjson/asm/Label;
    .restart local v6    # "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    .restart local v9    # "else_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v10    # "endIf_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v11    # "end_":Lcom/alibaba/fastjson/asm/Label;
    :cond_7
    const/16 v23, 0x19

    const/16 v24, 0x1

    .line 1318
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list"

    .line 1319
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    .line 1320
    sget v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1321
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v25, "setContext"

    const-string/jumbo v26, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1325
    :cond_8
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x19

    const-string/jumbo v24, "out"

    .line 1326
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list"

    .line 1327
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    .line 1328
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v25, "write"

    const-string/jumbo v26, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1371
    .restart local v12    # "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v13    # "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v14    # "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v15    # "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v16    # "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v17    # "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v18    # "for_":Lcom/alibaba/fastjson/asm/Label;
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x19

    const-string/jumbo v24, "list_item"

    .line 1372
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb6

    const-string/jumbo v24, "java/lang/Object"

    const-string/jumbo v25, "getClass"

    const-string/jumbo v26, "()Ljava/lang/Class;"

    .line 1373
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v23, 0xa6

    .line 1375
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1377
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/16 v23, 0x3a

    const-string/jumbo v24, "list_item_desc"

    .line 1379
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1381
    new-instance v19, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v19 .. v19}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v19, "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v20, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1383
    .local v20, "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-nez v23, :cond_a

    :goto_8
    const/16 v23, 0x19

    const-string/jumbo v24, "list_item_desc"

    .line 1409
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const/16 v24, 0x1

    .line 1410
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list_item"

    .line 1411
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1412
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-nez v23, :cond_e

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1415
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb8

    const-string/jumbo v24, "java/lang/Integer"

    const-string/jumbo v25, "valueOf"

    const-string/jumbo v26, "(I)Ljava/lang/Integer;"

    .line 1416
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :goto_9
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1419
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v23, 0xb9

    .line 1420
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v25, "write"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "(L"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0xa7

    .line 1424
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_4

    .line 1384
    :cond_a
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-nez v23, :cond_c

    :cond_b
    const-string/jumbo v22, "write"

    .local v22, "writeMethodName":Ljava/lang/String;
    :goto_a
    const/16 v23, 0x19

    const-string/jumbo v24, "list_item_desc"

    .line 1387
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xc1

    .line 1388
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0x99

    .line 1389
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list_item_desc"

    .line 1391
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xc0

    .line 1392
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0x19

    const/16 v24, 0x1

    .line 1393
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0x19

    const-string/jumbo v24, "list_item"

    .line 1394
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1395
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-nez v23, :cond_d

    const/16 v23, 0x15

    const-string/jumbo v24, "i"

    .line 1398
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v23, 0xb8

    const-string/jumbo v24, "java/lang/Integer"

    const-string/jumbo v25, "valueOf"

    const-string/jumbo v26, "(I)Ljava/lang/Integer;"

    .line 1399
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :goto_b
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1402
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v23, 0xb6

    .line 1403
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "(L"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0xa7

    .line 1405
    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1407
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_8

    .line 1384
    .end local v22    # "writeMethodName":Ljava/lang/String;
    :cond_c
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string/jumbo v22, "writeDirectNonContext"

    goto/16 :goto_a

    .restart local v22    # "writeMethodName":Ljava/lang/String;
    :cond_d
    const/16 v23, 0x1

    .line 1396
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_b

    .end local v22    # "writeMethodName":Ljava/lang/String;
    :cond_e
    const/16 v23, 0x1

    .line 1413
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_9

    .end local v19    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v20    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_f
    const/16 v23, 0x1

    .line 1432
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_5

    .line 1438
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1439
    check-cast v8, Ljava/lang/Class;

    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1440
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v23, 0xb6

    .line 1441
    sget-object v24, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v25, "writeWithFieldName"

    const-string/jumbo v26, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private _long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 1094
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1096
    .local v0, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1097
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x37

    const-string/jumbo v2, "long"

    .line 1098
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1100
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1102
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1103
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1104
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x16

    const-string/jumbo v2, "long"

    .line 1105
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1106
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;J)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1110
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1111
    return-void
.end method

.method private _nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 6
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v5, 0xb6

    const/4 v1, 0x0

    const/16 v4, 0x19

    .line 1500
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    :goto_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 1520
    :goto_1
    return-void

    .line 1501
    :cond_0
    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1502
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1503
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1504
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1505
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v1, "applyName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";Ljava/lang/Object;Ljava/lang/String;)Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 1507
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1509
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_labelApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "out"

    .line 1513
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1514
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1515
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "isEnabled"

    const-string/jumbo v2, "(I)Z"

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 1518
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_1
.end method

.method private _notWriteDefault(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 5
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v3, 0x15

    const/16 v4, 0x99

    .line 1670
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1674
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v0, "elseLabel":Lcom/alibaba/fastjson/asm/Label;
    const-string/jumbo v2, "notWriteDefaultValue"

    .line 1676
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1677
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1679
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1680
    .local v1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 1683
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    .line 1686
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    .line 1689
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    .line 1692
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    .line 1697
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_6

    .line 1702
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    .line 1709
    :goto_0
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1710
    return-void

    .line 1671
    .end local v0    # "elseLabel":Lcom/alibaba/fastjson/asm/Label;
    .end local v1    # "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    .restart local v0    # "elseLabel":Lcom/alibaba/fastjson/asm/Label;
    .restart local v1    # "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string/jumbo v2, "boolean"

    .line 1681
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1682
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "byte"

    .line 1684
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1685
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "short"

    .line 1687
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1688
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "int"

    .line 1690
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1691
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x16

    const-string/jumbo v3, "long"

    .line 1693
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x9

    .line 1694
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v2, 0x94

    .line 1695
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1696
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    const-string/jumbo v3, "float"

    .line 1698
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb

    .line 1699
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v2, 0x95

    .line 1700
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1701
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x18

    const-string/jumbo v3, "double"

    .line 1703
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xe

    .line 1704
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v2, 0x97

    .line 1705
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1706
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0
.end method

.method private _object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 3
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1009
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1010
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x3a

    const-string/jumbo v2, "object"

    .line 1011
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1013
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1015
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1017
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1018
    return-void
.end method

.method private _processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 8
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v4, 0x15

    const/16 v5, 0xb8

    const/16 v3, 0x19

    .line 1868
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v0, "_else_processKey":Lcom/alibaba/fastjson/asm/Label;
    const-string/jumbo v2, "hasNameFilters"

    .line 1870
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x99

    .line 1871
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1873
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1875
    .local v1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x1

    .line 1876
    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1877
    invoke-interface {p1, v3, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1878
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1880
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 1883
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 1886
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    .line 1889
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    .line 1892
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    .line 1895
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    .line 1898
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_6

    .line 1901
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/math/BigDecimal;

    .line 1904
    if-eq v1, v2, :cond_8

    const-class v2, Ljava/lang/String;

    .line 1906
    if-eq v1, v2, :cond_9

    .line 1908
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Ljava/util/List;

    .line 1910
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "object"

    .line 1913
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v2, 0xb6

    .line 1916
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v4, "processKey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    .line 1920
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1922
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1923
    return-void

    :cond_0
    const-string/jumbo v2, "byte"

    .line 1881
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Byte"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(B)Ljava/lang/Byte;"

    .line 1882
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "short"

    .line 1884
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Short"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(S)Ljava/lang/Short;"

    .line 1885
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "int"

    .line 1887
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Integer"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(I)Ljava/lang/Integer;"

    .line 1888
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "char"

    .line 1890
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Character"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(C)Ljava/lang/Character;"

    .line 1891
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x16

    const-string/jumbo v3, "long"

    .line 1893
    invoke-virtual {p3, v3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Long"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(J)Ljava/lang/Long;"

    .line 1894
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x17

    const-string/jumbo v3, "float"

    .line 1896
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Float"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(F)Ljava/lang/Float;"

    .line 1897
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x18

    const-string/jumbo v3, "double"

    .line 1899
    invoke-virtual {p3, v3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Double"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(D)Ljava/lang/Double;"

    .line 1900
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "boolean"

    .line 1902
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "java/lang/Boolean"

    const-string/jumbo v3, "valueOf"

    const-string/jumbo v4, "(Z)Ljava/lang/Boolean;"

    .line 1903
    invoke-interface {p1, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "decimal"

    .line 1905
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "string"

    .line 1907
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "enum"

    .line 1909
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "list"

    .line 1911
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 9
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    .line 1761
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1763
    .local v2, "processKeyElse_":Lcom/alibaba/fastjson/asm/Label;
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1765
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 1779
    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 1780
    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 1781
    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1782
    iget-object v4, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getFieldOrinal(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    .line 1783
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v6, "getBeanContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(I)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 1784
    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1785
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "Ljava/lang/Object;"

    .line 1788
    .local v3, "valueDesc":Ljava/lang/String;
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_1

    .line 1793
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_2

    .line 1798
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_3

    .line 1803
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_4

    .line 1808
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_5

    .line 1813
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_6

    .line 1818
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_7

    .line 1823
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_8

    const-class v4, Ljava/math/BigDecimal;

    .line 1828
    if-eq v1, v4, :cond_9

    const-class v4, Ljava/lang/String;

    .line 1832
    if-eq v1, v4, :cond_a

    .line 1836
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_b

    const-class v4, Ljava/util/List;

    .line 1840
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v4, 0x19

    const-string/jumbo v5, "object"

    .line 1845
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1846
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1847
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_1
    const/16 v4, 0xb6

    .line 1850
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v6, "processValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(L"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/alibaba/fastjson/serializer/BeanContext;

    .line 1852
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Ljava/lang/Object;Ljava/lang/String;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")Ljava/lang/Object;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1850
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3a

    .line 1856
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1858
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1859
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xa5

    .line 1860
    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1861
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0xa7

    .line 1862
    invoke-interface {p1, v4, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1864
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1865
    return-void

    .line 1766
    .end local v3    # "valueDesc":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v0, "checkValueEnd_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x15

    const-string/jumbo v5, "checkValue"

    .line 1767
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x9a

    .line 1768
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x1

    .line 1770
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x59

    .line 1771
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1772
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1773
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xa7

    .line 1774
    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1776
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0

    .end local v0    # "checkValueEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v3    # "valueDesc":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x15

    const-string/jumbo v5, "byte"

    .line 1789
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Byte"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(B)Ljava/lang/Byte;"

    .line 1790
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1791
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1792
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x15

    const-string/jumbo v5, "short"

    .line 1794
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Short"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(S)Ljava/lang/Short;"

    .line 1795
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1796
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1797
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x15

    const-string/jumbo v5, "int"

    .line 1799
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Integer"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(I)Ljava/lang/Integer;"

    .line 1800
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1801
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1802
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x15

    const-string/jumbo v5, "char"

    .line 1804
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Character"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(C)Ljava/lang/Character;"

    .line 1805
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1806
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1807
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x16

    const-string/jumbo v5, "long"

    const/4 v6, 0x2

    .line 1809
    invoke-virtual {p3, v5, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Long"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(J)Ljava/lang/Long;"

    .line 1810
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1811
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1812
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x17

    const-string/jumbo v5, "float"

    .line 1814
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Float"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(F)Ljava/lang/Float;"

    .line 1815
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1816
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1817
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x18

    const-string/jumbo v5, "double"

    const/4 v6, 0x2

    .line 1819
    invoke-virtual {p3, v5, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Double"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(D)Ljava/lang/Double;"

    .line 1820
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1821
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1822
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x15

    const-string/jumbo v5, "boolean"

    .line 1824
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string/jumbo v5, "java/lang/Boolean"

    const-string/jumbo v6, "valueOf"

    const-string/jumbo v7, "(Z)Ljava/lang/Boolean;"

    .line 1825
    invoke-interface {p1, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x59

    .line 1826
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v4, 0x3a

    .line 1827
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x19

    const-string/jumbo v5, "decimal"

    .line 1829
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1830
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1831
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x19

    const-string/jumbo v5, "string"

    .line 1833
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1834
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1835
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x19

    const-string/jumbo v5, "enum"

    .line 1837
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1838
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1839
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x19

    const-string/jumbo v5, "list"

    .line 1841
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x3a

    .line 1842
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    .line 1843
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1
.end method

.method private _seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 2
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0x2c

    .line 1998
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 1999
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2000
    return-void
.end method

.method private _string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 8
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v7, 0xb6

    const/16 v6, 0x15

    const/16 v5, 0x19

    .line 1212
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1214
    .local v2, "end_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1215
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v3, 0x3a

    const-string/jumbo v4, "string"

    .line 1216
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1218
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1220
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1221
    .local v0, "else_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v1, "endIf_":Lcom/alibaba/fastjson/asm/Label;
    const-string/jumbo v3, "string"

    .line 1224
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc7

    .line 1225
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1227
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v3, 0xa7

    .line 1229
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1231
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1233
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "out"

    .line 1241
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "seperator"

    .line 1242
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1243
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "string"

    .line 1244
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1245
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "writeFieldValue"

    const-string/jumbo v5, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1250
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1252
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1253
    return-void

    :cond_0
    const-string/jumbo v3, "out"

    .line 1234
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "seperator"

    .line 1235
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1236
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v3, "string"

    .line 1237
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1238
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "writeFieldValueStringWithDoubleQuoteCheck"

    const-string/jumbo v5, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 4
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/16 v3, 0xb6

    const/16 v1, 0x19

    .line 1985
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "out"

    .line 1990
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1991
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 1992
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1993
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "writeFieldName"

    const-string/jumbo v2, "(Ljava/lang/String;Z)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "out"

    .line 1986
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1987
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1988
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "writeFieldNameDirect"

    const-string/jumbo v2, "(Ljava/lang/String;)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 18
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    .line 1532
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v8

    .line 1533
    .local v8, "format":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1535
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1538
    .local v11, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v13

    if-nez v13, :cond_2

    const/16 v13, 0x19

    .line 1541
    sget v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v13, 0x59

    .line 1543
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v13, 0x3a

    const-string/jumbo v14, "object"

    .line 1544
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc7

    .line 1545
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1546
    invoke-direct/range {p0 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v13, 0xa7

    .line 1547
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1549
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const-string/jumbo v14, "out"

    .line 1551
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x15

    const-string/jumbo v14, "seperator"

    .line 1552
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb6

    .line 1553
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v15, "write"

    const-string/jumbo v16, "(I)V"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1557
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v5, "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1558
    .local v4, "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1612
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const/4 v14, 0x1

    .line 1614
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1615
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v13

    if-nez v13, :cond_9

    const/16 v13, 0x19

    .line 1618
    sget v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1620
    :goto_2
    if-nez v8, :cond_a

    const/16 v13, 0x19

    .line 1625
    sget v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1626
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v13, v13, Ljava/lang/Class;

    if-nez v13, :cond_b

    .line 1631
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    if-eq v13, v14, :cond_c

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 1634
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb4

    .line 1635
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_asm_fieldType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :goto_3
    move-object/from16 v0, p2

    iget v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xb6

    .line 1640
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v15, "writeWithFieldName"

    const-string/jumbo v16, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1647
    return-void

    .end local v4    # "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v5    # "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_2
    const/16 v13, 0x19

    const-string/jumbo v14, "object"

    .line 1539
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1559
    .restart local v4    # "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v5    # "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_3
    invoke-static {v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0x19

    const-string/jumbo v14, "object"

    .line 1561
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb6

    const-string/jumbo v14, "java/lang/Object"

    const-string/jumbo v15, "getClass"

    const-string/jumbo v16, "()Ljava/lang/Class;"

    .line 1562
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xa6

    .line 1564
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v13, 0x3a

    const-string/jumbo v14, "fied_ser"

    .line 1567
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1569
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v9, "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v10, "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v13, 0x19

    const-string/jumbo v14, "fied_ser"

    .line 1570
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc1

    .line 1571
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v13, 0x99

    .line 1572
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1574
    move-object/from16 v0, p2

    iget v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v13, v14

    if-nez v13, :cond_5

    const/4 v6, 0x0

    .line 1576
    .local v6, "fieldBeanToArray":Z
    :goto_5
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1579
    :cond_4
    if-nez v6, :cond_8

    const-string/jumbo v12, "write"

    .local v12, "writeMethodName":Ljava/lang/String;
    :goto_6
    const/16 v13, 0x19

    const-string/jumbo v14, "fied_ser"

    .line 1582
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc0

    .line 1583
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v13, 0x19

    const/4 v14, 0x1

    .line 1584
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const-string/jumbo v14, "object"

    .line 1585
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    .line 1586
    sget v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 1587
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb4

    .line 1588
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_asm_fieldType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, p2

    iget v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xb6

    .line 1591
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "(L"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v12, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xa7

    .line 1593
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1595
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const-string/jumbo v14, "fied_ser"

    .line 1597
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const/4 v14, 0x1

    .line 1598
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const-string/jumbo v14, "object"

    .line 1599
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    .line 1600
    sget v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const/4 v14, 0x0

    .line 1601
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb4

    .line 1602
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_asm_fieldType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p2

    iget v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xb9

    .line 1605
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v15, "write"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "(L"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0xa7

    .line 1609
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_1

    .end local v6    # "fieldBeanToArray":Z
    .end local v12    # "writeMethodName":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    .line 1574
    goto/16 :goto_5

    .line 1576
    .restart local v6    # "fieldBeanToArray":Z
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1577
    if-nez v6, :cond_7

    const-string/jumbo v12, "writeDirectNonContext"

    .restart local v12    # "writeMethodName":Ljava/lang/String;
    :goto_7
    goto/16 :goto_6

    .end local v12    # "writeMethodName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v12, "writeAsArrayNonContext"

    goto :goto_7

    :cond_8
    const-string/jumbo v12, "writeAsArray"

    goto/16 :goto_6

    .end local v6    # "fieldBeanToArray":Z
    .end local v9    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v10    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_9
    const/16 v13, 0x19

    const-string/jumbo v14, "object"

    .line 1616
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2

    .line 1621
    :cond_a
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xb6

    .line 1622
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v15, "writeWithFormat"

    const-string/jumbo v16, "(Ljava/lang/Object;Ljava/lang/String;)V"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1626
    :cond_b
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v13, Ljava/lang/Class;

    .line 1627
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0xb6

    .line 1628
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v15, "writeWithFieldName"

    const-string/jumbo v16, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-class v13, Ljava/lang/String;

    .line 1632
    invoke-static {v13}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 34
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "getters"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 406
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    const/16 v30, 0x5b

    .line 407
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 408
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    .line 412
    .local v28, "size":I
    if-eqz v28, :cond_0

    const/16 v20, 0x0

    .line 419
    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 748
    return-void

    .end local v20    # "i":I
    :cond_0
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 413
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    const/16 v30, 0x5d

    .line 414
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 415
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 420
    .restart local v20    # "i":I
    :cond_1
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    const/16 v29, 0x2c

    :goto_1
    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v27, v0

    .line 422
    .local v27, "seperator":C
    aget-object v10, p3, v20

    .line 423
    .local v10, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 425
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0x3a

    .line 426
    sget v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 428
    sget-object v29, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-ne v9, v0, :cond_4

    :cond_2
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 432
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 433
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xb6

    .line 435
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeInt"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 436
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 437
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v27    # "seperator":C
    :cond_3
    const/16 v29, 0x5d

    .line 420
    goto/16 :goto_1

    .line 428
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v27    # "seperator":C
    :cond_4
    sget-object v29, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_2

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_2

    .line 438
    sget-object v29, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_7

    .line 445
    sget-object v29, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_8

    .line 453
    sget-object v29, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_9

    .line 461
    sget-object v29, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_a

    .line 468
    sget-object v29, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_b

    const-class v29, Ljava/lang/String;

    .line 475
    move-object/from16 v0, v29

    if-eq v9, v0, :cond_c

    .line 480
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v29

    if-nez v29, :cond_d

    const-class v29, Ljava/util/List;

    .line 487
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 662
    new-instance v24, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v24 .. v24}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v24, "notNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v23, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 664
    .local v23, "notNullElse_":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0x59

    .line 665
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v29, 0x3a

    .line 666
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "field_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc7

    .line 667
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 669
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 670
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeNull"

    const-string/jumbo v32, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0xa7

    .line 671
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 673
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 675
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v6, "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v5, "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v29, 0x19

    .line 676
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "field_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    const-string/jumbo v30, "java/lang/Object"

    const-string/jumbo v31, "getClass"

    const-string/jumbo v32, "()Ljava/lang/Class;"

    .line 677
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xa6

    .line 679
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0x3a

    const-string/jumbo v30, "fied_ser"

    .line 682
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 684
    new-instance v21, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v21, "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v22, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 685
    .local v22, "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-nez v29, :cond_1c

    :cond_5
    :goto_3
    const/16 v29, 0x19

    const-string/jumbo v30, "fied_ser"

    .line 703
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 704
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    .line 705
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "field_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    .line 706
    sget v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 707
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 708
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb9

    .line 709
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v31, "write"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "(L"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0xa7

    .line 712
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 714
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 715
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v19

    .local v19, "format":Ljava/lang/String;
    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 717
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    .line 718
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "field_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 719
    if-nez v19, :cond_1d

    const/16 v29, 0x19

    .line 724
    sget v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 725
    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v29, v0

    if-nez v29, :cond_1e

    :cond_6
    const/16 v29, 0x19

    const/16 v30, 0x0

    .line 730
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb4

    .line 731
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "_asm_fieldType"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb6

    .line 735
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeWithFieldName"

    const-string/jumbo v32, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :goto_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 740
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 743
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    .line 744
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 745
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v5    # "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v6    # "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v19    # "format":Ljava/lang/String;
    .end local v21    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v22    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v23    # "notNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v24    # "notNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_7
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 439
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 440
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xb6

    .line 442
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeLong"

    const-string/jumbo v32, "(J)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 443
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 444
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 446
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 447
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0x4

    .line 449
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v29, 0xb6

    .line 450
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeFloat"

    const-string/jumbo v32, "(FZ)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 451
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 452
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 454
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 455
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0x4

    .line 457
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v29, 0xb6

    .line 458
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeDouble"

    const-string/jumbo v32, "(DZ)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 459
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 460
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 462
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 463
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xb6

    .line 465
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(Z)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 466
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 467
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 469
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 470
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xb8

    const-string/jumbo v30, "java/lang/Character"

    const-string/jumbo v31, "toString"

    const-string/jumbo v32, "(C)Ljava/lang/String;"

    .line 471
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 472
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 473
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeString"

    const-string/jumbo v32, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 476
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0x10

    .line 478
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 479
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeString"

    const-string/jumbo v32, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 481
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x59

    .line 482
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xb6

    .line 484
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeEnum"

    const-string/jumbo v32, "(Ljava/lang/Enum;)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x10

    .line 485
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 486
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 488
    :cond_e
    iget-object v11, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 491
    .local v11, "fieldType":Ljava/lang/reflect/Type;
    instance-of v0, v11, Ljava/lang/Class;

    move/from16 v29, v0

    if-nez v29, :cond_13

    .line 494
    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v8, v29, v30

    .local v8, "elementType":Ljava/lang/reflect/Type;
    :goto_5
    const/4 v7, 0x0

    .line 498
    .local v7, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, v8, Ljava/lang/Class;

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 506
    .end local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v29, 0xc0

    const-string/jumbo v30, "java/util/List"

    .line 507
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v29, 0x3a

    const-string/jumbo v30, "list"

    .line 508
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-class v29, Ljava/lang/String;

    .line 510
    move-object/from16 v0, v29

    if-eq v7, v0, :cond_15

    .line 516
    :cond_10
    new-instance v26, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v26, "nullEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v25, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v25, "nullElse_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v29, 0x19

    const-string/jumbo v30, "list"

    .line 518
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc7

    .line 519
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 521
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 522
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeNull"

    const-string/jumbo v32, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0xa7

    .line 523
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 525
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list"

    .line 527
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb9

    const-string/jumbo v30, "java/util/List"

    const-string/jumbo v31, "size"

    const-string/jumbo v32, "()I"

    .line 528
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x36

    const-string/jumbo v30, "size"

    .line 529
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 531
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    const/16 v30, 0x5b

    .line 532
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 533
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v18, "for_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v13, "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v12, "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v29, 0x3

    .line 537
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v29, 0x36

    const-string/jumbo v30, "i"

    .line 538
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 541
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 542
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x15

    const-string/jumbo v30, "size"

    .line 543
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xa2

    .line 544
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 546
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x99

    .line 547
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 549
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    const/16 v30, 0x2c

    .line 550
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 551
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list"

    .line 555
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 556
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb9

    const-string/jumbo v30, "java/util/List"

    const-string/jumbo v31, "get"

    const-string/jumbo v32, "(I)Ljava/lang/Object;"

    .line 557
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x3a

    const-string/jumbo v30, "list_item"

    .line 558
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 560
    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v17, "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v16, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v16, "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v29, 0x19

    const-string/jumbo v30, "list_item"

    .line 562
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc7

    .line 563
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 565
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 566
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "writeNull"

    const-string/jumbo v32, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0xa7

    .line 567
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 569
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 571
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v15, "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 572
    .local v14, "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    if-nez v7, :cond_16

    .line 625
    :cond_11
    :goto_7
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 626
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list_item"

    .line 627
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 628
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-nez v29, :cond_1a

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 631
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb8

    const-string/jumbo v30, "java/lang/Integer"

    const-string/jumbo v31, "valueOf"

    const-string/jumbo v32, "(I)Ljava/lang/Integer;"

    .line 632
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_8
    if-nez v7, :cond_1b

    :cond_12
    const/16 v29, 0xb6

    .line 640
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeWithFieldName"

    const-string/jumbo v32, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    :goto_9
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 644
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v29, "i"

    .line 646
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v29, 0xa7

    .line 647
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 649
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 651
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    const/16 v30, 0x5d

    .line 652
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 653
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .end local v12    # "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v13    # "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    .end local v14    # "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v15    # "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v16    # "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v17    # "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v18    # "for_":Lcom/alibaba/fastjson/asm/Label;
    .end local v25    # "nullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v26    # "nullEnd_":Lcom/alibaba/fastjson/asm/Label;
    :goto_a
    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 658
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x10

    .line 659
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 660
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v11    # "fieldType":Ljava/lang/reflect/Type;
    :cond_13
    const-class v8, Ljava/lang/Object;

    .line 492
    .restart local v8    # "elementType":Ljava/lang/reflect/Type;
    goto/16 :goto_5

    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    move-object v7, v8

    .line 499
    check-cast v7, Ljava/lang/Class;

    .local v7, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v29, Ljava/lang/Object;

    .line 501
    move-object/from16 v0, v29

    if-ne v7, v0, :cond_f

    const/4 v7, 0x0

    .line 502
    .local v7, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_6

    .line 511
    .end local v7    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/16 v29, 0x19

    const-string/jumbo v30, "out"

    .line 512
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list"

    .line 513
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    .line 514
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v31, "write"

    const-string/jumbo v32, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 572
    .restart local v12    # "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v13    # "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v14    # "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v15    # "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v16    # "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v17    # "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v18    # "for_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v25    # "nullElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v26    # "nullEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_16
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v29

    if-eqz v29, :cond_11

    const/16 v29, 0x19

    const-string/jumbo v30, "list_item"

    .line 573
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb6

    const-string/jumbo v30, "java/lang/Object"

    const-string/jumbo v31, "getClass"

    const-string/jumbo v32, "()Ljava/lang/Class;"

    .line 574
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xa6

    .line 576
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/16 v29, 0x3a

    const-string/jumbo v30, "list_item_desc"

    .line 579
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 581
    new-instance v21, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .restart local v21    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v22, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 583
    .restart local v22    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-nez v29, :cond_17

    :goto_b
    const/16 v29, 0x19

    const-string/jumbo v30, "list_item_desc"

    .line 608
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 609
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list_item"

    .line 610
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 611
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-nez v29, :cond_19

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 614
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb8

    const-string/jumbo v30, "java/lang/Integer"

    const-string/jumbo v31, "valueOf"

    const-string/jumbo v32, "(I)Ljava/lang/Integer;"

    .line 615
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :goto_c
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 618
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb9

    .line 619
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v31, "write"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "(L"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0xa7

    .line 622
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_7

    :cond_17
    const/16 v29, 0x19

    const-string/jumbo v30, "list_item_desc"

    .line 584
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc1

    .line 585
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v29, 0x99

    .line 586
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list_item_desc"

    .line 588
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc0

    .line 589
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 590
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    const-string/jumbo v30, "list_item"

    .line 591
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 592
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v29

    if-nez v29, :cond_18

    const/16 v29, 0x15

    const-string/jumbo v30, "i"

    .line 595
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xb8

    const-string/jumbo v30, "java/lang/Integer"

    const-string/jumbo v31, "valueOf"

    const-string/jumbo v32, "(I)Ljava/lang/Integer;"

    .line 596
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_d
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 600
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb6

    .line 601
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeAsArrayNonContext"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "(L"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0xa7

    .line 603
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 605
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_b

    :cond_18
    const/16 v29, 0x1

    .line 593
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_d

    :cond_19
    const/16 v29, 0x1

    .line 612
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_c

    .end local v21    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v22    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_1a
    const/16 v29, 0x1

    .line 629
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_8

    .line 634
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 635
    check-cast v8, Ljava/lang/Class;

    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 636
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb6

    .line 637
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeWithFieldName"

    const-string/jumbo v32, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 685
    .end local v12    # "forEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v13    # "forFirst_":Lcom/alibaba/fastjson/asm/Label;
    .end local v14    # "forItemClassIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v15    # "forItemClassIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v16    # "forItemNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v17    # "forItemNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .end local v18    # "for_":Lcom/alibaba/fastjson/asm/Label;
    .end local v25    # "nullElse_":Lcom/alibaba/fastjson/asm/Label;
    .end local v26    # "nullEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v5    # "classIfElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v6    # "classIfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v21    # "instanceOfElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v22    # "instanceOfEnd_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v23    # "notNullElse_":Lcom/alibaba/fastjson/asm/Label;
    .restart local v24    # "notNullEnd_":Lcom/alibaba/fastjson/asm/Label;
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v29

    if-eqz v29, :cond_5

    const/16 v29, 0x19

    const-string/jumbo v30, "fied_ser"

    .line 686
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc1

    .line 687
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v29, 0x99

    .line 688
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v29, 0x19

    const-string/jumbo v30, "fied_ser"

    .line 690
    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0xc0

    .line 691
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v29, 0x19

    const/16 v30, 0x1

    .line 692
    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    .line 693
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "field_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v29, 0x19

    .line 694
    sget v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 695
    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 696
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb6

    .line 697
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeAsArrayNonContext"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "(L"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0xa7

    .line 699
    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 701
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 720
    .restart local v19    # "format":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v29, 0xb6

    .line 721
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeWithFormat"

    const-string/jumbo v32, "(Ljava/lang/Object;Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 725
    :cond_1e
    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/Class;

    .line 726
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isPrimitive()Z

    move-result v29

    if-eqz v29, :cond_6

    const/16 v29, 0xb6

    .line 727
    sget-object v30, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v31, "writeWithFieldName"

    const-string/jumbo v32, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 27
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "getters"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 755
    .local v14, "end":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    .line 757
    .local v23, "size":I
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 797
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 817
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v25, "writeAsArrayNormal"

    .line 827
    .local v25, "writeAsArrayMethodName":Ljava/lang/String;
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 851
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 852
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 853
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x3

    .line 854
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x4

    .line 855
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x15

    const/4 v5, 0x5

    .line 856
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 858
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(L"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 857
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v5, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    .line 861
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 864
    :goto_3
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 879
    :goto_4
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x10

    const/16 v5, 0x7b

    .line 915
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_5
    const/16 v4, 0x36

    const-string/jumbo v5, "seperator"

    .line 918
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 920
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 924
    :goto_6
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_7
    const/16 v21, 0x0

    .line 940
    .local v21, "i":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 974
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 978
    :goto_9
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 979
    .local v11, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v12, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x15

    const-string/jumbo v5, "seperator"

    .line 981
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x10

    const/16 v5, 0x7b

    .line 982
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v4, 0xa0

    .line 983
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 985
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x10

    const/16 v5, 0x7b

    .line 986
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 987
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "write"

    const-string/jumbo v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 991
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x10

    const/16 v5, 0x7d

    .line 992
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 993
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "write"

    const-string/jumbo v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 996
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 998
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1004
    :goto_a
    return-void

    .line 759
    .end local v11    # "_else":Lcom/alibaba/fastjson/asm/Label;
    .end local v12    # "_end_if":Lcom/alibaba/fastjson/asm/Label;
    .end local v21    # "i":I
    .end local v25    # "writeAsArrayMethodName":Ljava/lang/String;
    :cond_0
    new-instance v16, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 760
    .local v16, "endSupper_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v24, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v24 .. v24}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v24, "supper_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 761
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 762
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    .line 763
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "isEnabled"

    const-string/jumbo v8, "(I)Z"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9a

    .line 764
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 766
    const/16 v20, 0x0

    .line 767
    .local v20, "hasMethod":Z
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_b
    if-lt v4, v5, :cond_1

    .line 773
    if-nez v20, :cond_3

    const/16 v4, 0xa7

    .line 779
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 782
    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 783
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 784
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 785
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x3

    .line 786
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x4

    .line 787
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x15

    const/4 v5, 0x5

    .line 788
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb7

    .line 789
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v6, "write"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    .line 792
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 794
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0

    .line 767
    :cond_1
    aget-object v19, p3, v4

    .line 768
    .local v19, "getter":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v6, :cond_2

    .line 767
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 769
    :cond_2
    const/16 v20, 0x1

    goto :goto_d

    .end local v19    # "getter":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 774
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 775
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    .line 776
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "isEnabled"

    const-string/jumbo v8, "(I)Z"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    .line 777
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_c

    .line 798
    .end local v16    # "endSupper_":Lcom/alibaba/fastjson/asm/Label;
    .end local v20    # "hasMethod":Z
    .end local v24    # "supper_":Lcom/alibaba/fastjson/asm/Label;
    :cond_4
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v15, "endRef_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 801
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 802
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 803
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x15

    const/4 v5, 0x5

    .line 804
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 805
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v6, "writeReference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";Ljava/lang/Object;I)Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    .line 808
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0xb1

    .line 810
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 812
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_1

    .line 818
    .end local v15    # "endRef_":Lcom/alibaba/fastjson/asm/Label;
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v25, "writeAsArray"

    .line 821
    .restart local v25    # "writeAsArrayMethodName":Ljava/lang/String;
    goto/16 :goto_2

    .end local v25    # "writeAsArrayMethodName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v25, "writeAsArrayNonContext"

    .line 819
    .restart local v25    # "writeAsArrayMethodName":Ljava/lang/String;
    goto/16 :goto_2

    .line 828
    :cond_7
    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v17, "endWriteAsArray_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 830
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 831
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    .line 832
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "isEnabled"

    const-string/jumbo v8, "(I)Z"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    .line 833
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 836
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 837
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 838
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x3

    .line 839
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x4

    .line 840
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x15

    const/4 v5, 0x5

    .line 841
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 843
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(L"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 842
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v5, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    .line 847
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 849
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .end local v17    # "endWriteAsArray_":Lcom/alibaba/fastjson/asm/Label;
    :cond_8
    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 865
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 866
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "getContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3a

    const-string/jumbo v5, "parent"

    .line 867
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 869
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const-string/jumbo v5, "parent"

    .line 870
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 871
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x3

    .line 872
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 873
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    .line 874
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "setContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Ljava/lang/Object;Ljava/lang/Object;I)V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 880
    :cond_9
    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 881
    .local v18, "end_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 882
    .local v13, "else_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v26, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v26, "writeClass_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 884
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x4

    .line 885
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 886
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 887
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "isWriteClassName"

    const-string/jumbo v8, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x99

    .line 889
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const/4 v5, 0x4

    .line 892
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 893
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    const-string/jumbo v5, "java/lang/Object"

    const-string/jumbo v6, "getClass"

    const-string/jumbo v8, "()Ljava/lang/Class;"

    .line 894
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa5

    .line 895
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 897
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 898
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x10

    const/16 v5, 0x7b

    .line 899
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 900
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "write"

    const-string/jumbo v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 902
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 903
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x2

    .line 904
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 906
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v6, "writeClassName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";Ljava/lang/Object;)V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    const/16 v5, 0x2c

    .line 907
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xa7

    .line 908
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 910
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v4, 0x10

    const/16 v5, 0x7b

    .line 911
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 913
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_5

    .line 921
    .end local v13    # "else_":Lcom/alibaba/fastjson/asm/Label;
    .end local v18    # "end_":Lcom/alibaba/fastjson/asm/Label;
    .end local v26    # "writeClass_":Lcom/alibaba/fastjson/asm/Label;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_6

    :cond_b
    const/16 v4, 0x19

    const-string/jumbo v5, "out"

    .line 925
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 926
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v6, "isNotWriteDefaultValue"

    const-string/jumbo v8, "()Z"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x36

    const-string/jumbo v5, "notWriteDefaultValue"

    .line 927
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 929
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 930
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 931
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "checkValue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x36

    const-string/jumbo v5, "checkValue"

    .line 932
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 934
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 935
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 936
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "hasNameFilters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x36

    const-string/jumbo v5, "hasNameFilters"

    .line 937
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_7

    .line 941
    .restart local v21    # "i":I
    :cond_c
    aget-object v7, p3, v21

    .line 942
    .local v7, "property":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    .line 944
    .local v22, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x3a

    .line 945
    sget v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 947
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_e

    .line 950
    :cond_d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x49

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    .line 940
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 947
    :cond_e
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_d

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_d

    .line 951
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_f

    .line 953
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_10

    .line 955
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_11

    .line 957
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_12

    .line 959
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_13

    const-class v4, Ljava/lang/String;

    .line 961
    move-object/from16 v0, v22

    if-eq v0, v4, :cond_14

    const-class v4, Ljava/math/BigDecimal;

    .line 963
    move-object/from16 v0, v22

    if-eq v0, v4, :cond_15

    const-class v4, Ljava/util/List;

    .line 965
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 967
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_17

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_e

    .line 952
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_e

    .line 954
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_e

    .line 956
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_e

    :cond_12
    const-string/jumbo v4, "boolean"

    .line 958
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    goto/16 :goto_e

    :cond_13
    const-string/jumbo v4, "char"

    .line 960
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x43

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    goto/16 :goto_e

    .line 962
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_e

    .line 964
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_e

    .line 966
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_e

    .line 968
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_e

    .line 975
    .end local v7    # "property":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v22    # "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_9

    .restart local v11    # "_else":Lcom/alibaba/fastjson/asm/Label;
    .restart local v12    # "_end_if":Lcom/alibaba/fastjson/asm/Label;
    :cond_19
    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 999
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x19

    const-string/jumbo v5, "parent"

    .line 1000
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb6

    .line 1001
    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v6, "setContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method


# virtual methods
.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 51
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    move-object/from16 v37, v0

    .line 116
    .local v37, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 120
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v47

    check-cast v47, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 122
    .local v47, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v50, v0

    .line 124
    .local v50, "unsortedGetters":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v50

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    .line 132
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v44, v0

    .line 134
    .local v44, "getters":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eq v5, v6, :cond_5

    const/16 v48, 0x0

    .line 136
    .local v48, "nativeSorted":Z
    :goto_1
    move-object/from16 v0, v44

    array-length v5, v0

    const/16 v6, 0x100

    if-gt v5, v6, :cond_6

    .line 140
    move-object/from16 v0, v44

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_7

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ASMSerializer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .local v35, "className":Ljava/lang/String;
    const-class v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    .line 147
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v49

    .line 148
    .local v49, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v10, 0x2f

    move-object/from16 v0, v49

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "classNameType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 151
    .local v36, "classNameFull":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    .local v4, "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    const/16 v5, 0x31

    const/16 v6, 0x21

    .line 152
    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v44

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v6, :cond_9

    .line 179
    new-instance v8, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v10, 0x1

    const-string/jumbo v11, "<init>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .local v8, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 180
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 181
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb7

    .line 182
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v10, "<init>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")V"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v45, 0x0

    .line 185
    .local v45, "i":I
    :goto_4
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v45

    if-lt v0, v5, :cond_d

    const/16 v5, 0xb1

    .line 210
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    .line 211
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 212
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 214
    const/16 v24, 0x0

    .line 215
    .local v24, "DisableCircularReferenceDetect":Z
    if-nez v47, :cond_11

    :cond_0
    :goto_5
    const/16 v45, 0x0

    :goto_6
    const/4 v5, 0x3

    .line 227
    move/from16 v0, v45

    if-lt v0, v5, :cond_13

    .line 332
    if-eqz v48, :cond_1c

    :goto_7
    const/16 v45, 0x0

    :goto_8
    const/4 v5, 0x3

    .line 359
    move/from16 v0, v45

    if-lt v0, v5, :cond_1d

    .line 394
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v38

    .line 396
    .local v38, "code":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v6, 0x0

    move-object/from16 v0, v38

    array-length v10, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v5, v0, v1, v6, v10}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v40

    .local v40, "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 397
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v10, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    aput-object v10, v5, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v39

    .local v39, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    .line 398
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 400
    .local v46, "instance":Ljava/lang/Object;
    check-cast v46, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .end local v46    # "instance":Ljava/lang/Object;
    return-object v46

    .line 117
    .end local v4    # "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    .end local v7    # "classNameType":Ljava/lang/String;
    .end local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    .end local v24    # "DisableCircularReferenceDetect":Z
    .end local v35    # "className":Ljava/lang/String;
    .end local v36    # "classNameFull":Ljava/lang/String;
    .end local v38    # "code":[B
    .end local v39    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v40    # "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "getters":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v45    # "i":I
    .end local v47    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v48    # "nativeSorted":Z
    .end local v49    # "packageName":Ljava/lang/String;
    .end local v50    # "unsortedGetters":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unsupportd class "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    .restart local v47    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v50    # "unsortedGetters":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    aget-object v42, v50, v5

    .line 125
    .local v42, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v10, :cond_4

    .line 124
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 125
    :cond_4
    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_3

    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 127
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 128
    new-instance v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    return-object v5

    .end local v42    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v44    # "getters":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_5
    const/16 v48, 0x1

    .line 134
    goto/16 :goto_1

    .line 137
    .restart local v48    # "nativeSorted":Z
    :cond_6
    new-instance v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 140
    :cond_7
    aget-object v43, v44, v5

    .line 141
    .local v43, "getter":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual/range {v43 .. v43}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 142
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 159
    .end local v43    # "getter":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v4    # "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    .restart local v7    # "classNameType":Ljava/lang/String;
    .restart local v35    # "className":Ljava/lang/String;
    .restart local v36    # "classNameFull":Ljava/lang/String;
    .restart local v49    # "packageName":Ljava/lang/String;
    :cond_9
    aget-object v42, v44, v5

    .line 160
    .restart local v42    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 159
    :cond_a
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 160
    :cond_b
    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 161
    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    if-eq v10, v11, :cond_a

    .line 166
    new-instance v10, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, "_asm_fieldType"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "Ljava/lang/reflect/Type;"

    invoke-direct {v10, v4, v11, v12, v15}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v10}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    const-class v10, Ljava/util/List;

    .line 169
    move-object/from16 v0, v42

    iget-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 175
    :goto_a
    new-instance v10, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, "_asm_ser_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-direct {v10, v4, v11, v12, v15}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v10}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_9

    .line 170
    :cond_c
    new-instance v10, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    iget-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, "_asm_list_item_ser_"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-direct {v10, v4, v11, v12, v15}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v10}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_a

    .line 186
    .end local v42    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    .restart local v45    # "i":I
    :cond_d
    aget-object v42, v44, v45

    .line 187
    .restart local v42    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 185
    :cond_e
    :goto_b
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_4

    .line 187
    :cond_f
    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 188
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_e

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 193
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 195
    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_10

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 202
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 203
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb7

    .line 204
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v10, "getFieldType"

    const-string/jumbo v11, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/16 v5, 0xb5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "_asm_fieldType"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "Ljava/lang/reflect/Type;"

    invoke-interface {v8, v5, v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 196
    :cond_10
    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 197
    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb8

    const-class v6, Lcom/alibaba/fastjson/util/ASMUtils;

    .line 198
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "getMethodType"

    const-string/jumbo v11, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 216
    .end local v42    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "DisableCircularReferenceDetect":Z
    :cond_11
    invoke-interface/range {v47 .. v47}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    array-length v10, v6

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v10, :cond_0

    aget-object v41, v6, v5

    .line 217
    .local v41, "featrues":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v41

    if-eq v0, v11, :cond_12

    .line 216
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 218
    :cond_12
    const/16 v24, 0x1

    goto/16 :goto_5

    .line 229
    .end local v41    # "featrues":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_13
    move/from16 v14, v24

    .line 230
    .local v14, "nonContext":Z
    const/4 v13, 0x0

    .line 231
    .local v13, "writeDirect":Z
    if-eqz v45, :cond_16

    const/4 v5, 0x1

    .line 234
    move/from16 v0, v45

    if-eq v0, v5, :cond_17

    .line 237
    const/4 v13, 0x1

    .line 238
    const/4 v14, 0x1

    .local v14, "nonContext":Z
    const-string/jumbo v18, "writeDirectNonContext"

    .line 242
    .end local v14    # "nonContext":Z
    .local v18, "methodName":Ljava/lang/String;
    :goto_e
    new-instance v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    move-object/from16 v10, v44

    move-object/from16 v11, p1

    move-object v12, v7

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 245
    .local v9, "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    new-instance v8, Lcom/alibaba/fastjson/asm/MethodWriter;

    .end local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v17, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "java/io/IOException"

    aput-object v6, v21, v5

    const/16 v20, 0x0

    move-object v15, v8

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v21}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 254
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb4

    .line 255
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v10, "out"

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "out"

    .line 256
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 258
    if-eqz v48, :cond_18

    .line 284
    :cond_14
    :goto_f
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_15
    :goto_10
    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 323
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xc0

    .line 324
    invoke-static/range {v37 .. v37}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "entity"

    .line 325
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v5, 0xb1

    .line 327
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x7

    .line 328
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 329
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 227
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_6

    .end local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .end local v18    # "methodName":Ljava/lang/String;
    .local v14, "nonContext":Z
    :cond_16
    const-string/jumbo v18, "write"

    .line 233
    .restart local v18    # "methodName":Ljava/lang/String;
    const/4 v13, 0x1

    goto/16 :goto_e

    .end local v18    # "methodName":Ljava/lang/String;
    :cond_17
    const-string/jumbo v18, "writeNormal"

    .line 235
    .restart local v18    # "methodName":Ljava/lang/String;
    goto/16 :goto_e

    .line 259
    .end local v14    # "nonContext":Z
    .restart local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    :cond_18
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 261
    if-nez v47, :cond_1a

    .line 262
    :cond_19
    new-instance v34, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v34 .. v34}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v34, "_else":Lcom/alibaba/fastjson/asm/Label;
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 264
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 265
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "isSortField"

    const-string/jumbo v11, "()Z"

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x9a

    .line 267
    move-object/from16 v0, v34

    invoke-interface {v8, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 268
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 269
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 270
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x3

    .line 271
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x4

    .line 272
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x15

    const/4 v6, 0x5

    .line 273
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    const-string/jumbo v6, "writeUnsorted"

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    .line 277
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 279
    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_f

    .line 261
    .end local v34    # "_else":Lcom/alibaba/fastjson/asm/Label;
    :cond_1a
    invoke-interface/range {v47 .. v47}, Lcom/alibaba/fastjson/annotation/JSONType;->alphabetic()Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_f

    .line 284
    :cond_1b
    if-nez v14, :cond_15

    .line 285
    new-instance v32, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v32 .. v32}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 286
    .local v32, "_direct":Lcom/alibaba/fastjson/asm/Label;
    new-instance v33, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v33 .. v33}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .local v33, "_directElse":Lcom/alibaba/fastjson/asm/Label;
    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 288
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 289
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 290
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v10, "writeDirect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(L"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";)Z"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x9a

    .line 291
    move-object/from16 v0, v33

    invoke-interface {v8, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 293
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 294
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 295
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x3

    .line 296
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x4

    .line 297
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x15

    const/4 v6, 0x5

    .line 298
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    const-string/jumbo v6, "writeNormal"

    .line 299
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    .line 302
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 304
    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 305
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 306
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    .line 307
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "isEnabled"

    const-string/jumbo v11, "(I)Z"

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x99

    .line 308
    move-object/from16 v0, v32

    invoke-interface {v8, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 310
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 311
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 312
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x3

    .line 313
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x4

    .line 314
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x15

    const/4 v6, 0x5

    .line 315
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    const-string/jumbo v6, "writeDirectNonContext"

    .line 316
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    .line 318
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 320
    move-object/from16 v0, v32

    invoke-interface {v8, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_10

    .line 334
    .end local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .end local v13    # "writeDirect":Z
    .end local v18    # "methodName":Ljava/lang/String;
    .end local v32    # "_direct":Lcom/alibaba/fastjson/asm/Label;
    .end local v33    # "_directElse":Lcom/alibaba/fastjson/asm/Label;
    :cond_1c
    new-instance v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    const/16 v23, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v44

    move-object/from16 v21, p1

    move-object/from16 v22, v7

    invoke-direct/range {v19 .. v24}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 337
    .restart local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    new-instance v8, Lcom/alibaba/fastjson/asm/MethodWriter;

    .end local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v27, 0x1

    const-string/jumbo v28, "writeUnsorted"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "java/io/IOException"

    aput-object v6, v31, v5

    const/16 v30, 0x0

    move-object/from16 v25, v8

    move-object/from16 v26, v4

    invoke-direct/range {v25 .. v31}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 341
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb4

    .line 342
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v10, "out"

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "out"

    .line 343
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 345
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xc0

    .line 346
    invoke-static/range {v37 .. v37}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "entity"

    .line 347
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v5, 0xb1

    .line 351
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x7

    .line 352
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 353
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_7

    .line 361
    .end local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    :cond_1d
    move/from16 v14, v24

    .line 362
    .restart local v14    # "nonContext":Z
    const/4 v13, 0x0

    .line 363
    .restart local v13    # "writeDirect":Z
    if-eqz v45, :cond_1e

    const/4 v5, 0x1

    .line 366
    move/from16 v0, v45

    if-eq v0, v5, :cond_1f

    .line 369
    const/4 v13, 0x1

    .line 370
    const/4 v14, 0x1

    .local v14, "nonContext":Z
    const-string/jumbo v18, "writeAsArrayNonContext"

    .line 374
    .end local v14    # "nonContext":Z
    .restart local v18    # "methodName":Ljava/lang/String;
    :goto_11
    new-instance v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    move-object/from16 v10, v44

    move-object/from16 v11, p1

    move-object v12, v7

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 377
    .restart local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    new-instance v8, Lcom/alibaba/fastjson/asm/MethodWriter;

    .end local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v17, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "java/io/IOException"

    aput-object v6, v21, v5

    const/16 v20, 0x0

    move-object v15, v8

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v21}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v8    # "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 381
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb4

    .line 382
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v10, "out"

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v8, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "out"

    .line 383
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x2

    .line 385
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xc0

    .line 386
    invoke-static/range {v37 .. v37}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x3a

    const-string/jumbo v6, "entity"

    .line 387
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v5, 0xb1

    .line 389
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x7

    .line 390
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 391
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 359
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_8

    .end local v9    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .end local v18    # "methodName":Ljava/lang/String;
    .local v14, "nonContext":Z
    :cond_1e
    const-string/jumbo v18, "writeAsArray"

    .line 365
    .restart local v18    # "methodName":Ljava/lang/String;
    const/4 v13, 0x1

    goto/16 :goto_11

    .end local v18    # "methodName":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v18, "writeAsArrayNormal"

    .line 367
    .restart local v18    # "methodName":Ljava/lang/String;
    goto/16 :goto_11
.end method
