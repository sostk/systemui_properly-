.class public Lcom/alibaba/fastjson/serializer/FieldSerializer;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/serializer/FieldSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final double_quoted_fieldPrefix:Ljava/lang/String;

.field protected features:I

.field protected fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

.field private format:Ljava/lang/String;

.field private runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

.field private single_quoted_fieldPrefix:Ljava/lang/String;

.field private un_quoted_fieldPrefix:Ljava/lang/String;

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected final writeNull:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 11
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    .line 42
    iput-boolean v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    .line 47
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 48
    new-instance v4, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-direct {v4, p1, p2}, Lcom/alibaba/fastjson/serializer/BeanContext;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    .line 50
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->setAccessible()V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "writeNull":Z
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 56
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    .line 82
    return-void

    .line 57
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_1
    if-lt v4, v6, :cond_1

    .line 64
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    .line 66
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    :goto_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    array-length v5, v4

    :goto_4
    if-lt v3, v5, :cond_4

    .line 78
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    goto :goto_0

    .line 57
    :cond_1
    aget-object v1, v5, v4

    .line 58
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v7

    sget v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 67
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_3
    iput-object v10, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    goto :goto_3

    .line 70
    :cond_4
    aget-object v1, v4, v3

    .line 71
    .restart local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v1, v6, :cond_5

    .line 73
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v1, v6, :cond_6

    .line 70
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 72
    :cond_5
    iput-boolean v9, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    goto :goto_5

    .line 74
    :cond_6
    iput-boolean v9, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    goto :goto_5
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I

    move-result v0

    return v0
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 87
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 102
    :goto_1
    return-void

    .line 88
    :cond_0
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    goto :goto_2

    .line 98
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 19
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    if-eqz v3, :cond_1

    .line 134
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    move-object/from16 v17, v0

    .line 136
    .local v17, "runtimeInfo":Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v7, v3, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 138
    .local v7, "fieldFeatures":I
    if-eqz p2, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-nez v3, :cond_c

    .line 179
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 181
    .local v18, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_e

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    .line 187
    .local v8, "valueSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v11, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 197
    .end local v8    # "valueSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_2
    return-void

    .line 117
    .end local v7    # "fieldFeatures":I
    .end local v17    # "runtimeInfo":Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    .end local v18    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    if-eqz p2, :cond_3

    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 124
    .local v16, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v14

    .line 125
    .local v14, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v14, :cond_4

    .line 128
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 131
    .local v2, "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_4
    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    goto :goto_0

    .line 118
    .end local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v14    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v16    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v16, v0

    .restart local v16    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 125
    .restart local v14    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_2

    .line 126
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto :goto_4

    .line 139
    .end local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v14    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v16    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "fieldFeatures":I
    .restart local v17    # "runtimeInfo":Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    :cond_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    move-object/from16 v16, v0

    .line 140
    .restart local v16    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .local v15, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const-class v3, Ljava/lang/Number;

    .line 141
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_7

    const-class v3, Ljava/lang/String;

    .line 144
    move-object/from16 v0, v16

    if-eq v3, v0, :cond_8

    const-class v3, Ljava/lang/Boolean;

    .line 147
    move-object/from16 v0, v16

    if-eq v3, v0, :cond_9

    const-class v3, Ljava/util/Collection;

    .line 150
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 155
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 157
    .restart local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    sget v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_6
    const/4 v4, 0x0

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 164
    return-void

    .line 142
    .end local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v15, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 143
    return-void

    .line 145
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v15, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 146
    return-void

    .line 148
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v15, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 149
    return-void

    .line 151
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v15, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 152
    return-void

    .line 157
    .restart local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_b
    instance-of v3, v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 160
    return-void

    .line 168
    .end local v2    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v15    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v16    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    if-nez v3, :cond_d

    .line 173
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    if-eqz v3, :cond_0

    .line 174
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 175
    return-void

    .line 169
    .restart local p2    # "propertyValue":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 170
    return-void

    .line 182
    .restart local v18    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "propertyValue":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v8    # "valueSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_1

    .line 188
    :cond_f
    instance-of v3, v8, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    if-nez v3, :cond_10

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 189
    :cond_10
    check-cast v8, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    .end local v8    # "valueSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v8, v0, v1, v3}, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V

    goto/16 :goto_2
.end method
