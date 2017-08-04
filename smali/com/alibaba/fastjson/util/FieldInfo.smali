.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 57
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 58
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 59
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 60
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 61
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 62
    iput v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 64
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 66
    if-nez p5, :cond_0

    .line 71
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 72
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 77
    if-nez p5, :cond_3

    :goto_1
    const-string/jumbo v1, ""

    .line 81
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 83
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 84
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 85
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 86
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 87
    return-void

    .line 67
    :cond_0
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 68
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 69
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_2

    .line 78
    .end local v0    # "modifiers":I
    :cond_3
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p11, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    .line 24
    iput v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 100
    if-nez p3, :cond_5

    .line 107
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 109
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 110
    move/from16 v0, p6

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 111
    move/from16 v0, p7

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 112
    move/from16 v0, p8

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 113
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 114
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 116
    if-nez p3, :cond_6

    .line 121
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 122
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 125
    :goto_1
    if-nez p11, :cond_9

    :cond_1
    const-string/jumbo v13, ""

    .line 128
    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    :goto_2
    const/4 v6, 0x0

    .line 132
    .local v6, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 134
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v9, 0x0

    .line 135
    .local v9, "jsonDirect":Z
    if-nez v2, :cond_a

    .line 143
    const/4 v9, 0x0

    .line 145
    .end local v6    # "format":Ljava/lang/String;
    .end local v9    # "jsonDirect":Z
    :goto_3
    iput-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 149
    if-nez p2, :cond_c

    .line 153
    :goto_4
    if-nez p3, :cond_d

    .line 157
    :goto_5
    const/4 v8, 0x0

    .line 160
    .local v8, "getOnly":Z
    if-nez p2, :cond_e

    .line 172
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 173
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 174
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 175
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    .line 177
    .end local v8    # "getOnly":Z
    :goto_6
    iput-boolean v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 178
    if-nez v9, :cond_10

    :cond_2
    const/4 v13, 0x0

    :goto_7
    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 180
    if-nez p4, :cond_11

    .line 192
    :cond_3
    move-object v7, v5

    .line 194
    .local v7, "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v13, v5, Ljava/lang/Class;

    if-eqz v13, :cond_12

    .line 206
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_4
    :goto_8
    iput-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 207
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 209
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 210
    return-void

    .line 101
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    .end local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 103
    move-object/from16 p1, v4

    goto/16 :goto_0

    .line 117
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 118
    .local v10, "modifiers":I
    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_8

    :cond_7
    const/4 v13, 0x1

    :goto_9
    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 119
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_1

    .line 118
    :cond_8
    if-eqz p2, :cond_7

    const/4 v13, 0x0

    goto :goto_9

    .line 125
    .end local v10    # "modifiers":I
    :cond_9
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 126
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto :goto_2

    .line 136
    .restart local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "format":Ljava/lang/String;
    .restart local v9    # "jsonDirect":Z
    :cond_a
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "format":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_b

    .line 141
    .end local v6    # "format":Ljava/lang/String;
    :goto_a
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v9

    .local v9, "jsonDirect":Z
    goto/16 :goto_3

    .restart local v6    # "format":Ljava/lang/String;
    .local v9, "jsonDirect":Z
    :cond_b
    const/4 v6, 0x0

    .line 139
    .local v6, "format":Ljava/lang/String;
    goto :goto_a

    .line 150
    .end local v6    # "format":Ljava/lang/String;
    .end local v9    # "jsonDirect":Z
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_4

    .line 154
    :cond_d
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_5

    .line 162
    .restart local v8    # "getOnly":Z
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v12

    const/4 v14, 0x1

    if-eq v13, v14, :cond_f

    .line 166
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 167
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 168
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    const/4 v8, 0x1

    .line 170
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_6

    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    :cond_f
    const/4 v13, 0x0

    .line 163
    aget-object v3, v12, v13

    .line 164
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v5, v13, v14

    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_b

    .end local v8    # "getOnly":Z
    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_10
    const-class v13, Ljava/lang/String;

    .line 178
    if-ne v3, v13, :cond_2

    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_11
    const-class v13, Ljava/lang/Object;

    .line 180
    if-ne v3, v13, :cond_3

    instance-of v13, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v13, :cond_3

    move-object v11, v5

    .line 181
    check-cast v11, Ljava/lang/reflect/TypeVariable;

    .line 182
    .local v11, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p4

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 183
    .restart local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v7, :cond_3

    .line 184
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 185
    iput-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 187
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 188
    return-void

    .line 195
    .end local v11    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_12
    if-nez p5, :cond_13

    move-object/from16 p5, p4

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 197
    if-eq v7, v5, :cond_4

    .line 198
    instance-of v13, v7, Ljava/lang/reflect/ParameterizedType;

    if-nez v13, :cond_14

    .line 200
    instance-of v13, v7, Ljava/lang/Class;

    if-eqz v13, :cond_4

    .line 201
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto/16 :goto_8

    .line 199
    :cond_14
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto/16 :goto_8
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 242
    :cond_0
    return-object p2

    .line 241
    :cond_1
    if-eqz p1, :cond_0

    .line 245
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 261
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 275
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 315
    :cond_3
    return-object p2

    :cond_4
    move-object/from16 v10, p2

    .line 246
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 247
    .local v10, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 248
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 249
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-ne v6, v7, :cond_5

    .line 254
    return-object p2

    .line 250
    :cond_5
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 251
    .local v9, "fieldTypeX":Ljava/lang/reflect/Type;
    return-object v9

    .line 258
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v9    # "fieldTypeX":Ljava/lang/reflect/Type;
    .end local v10    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_6
    return-object p2

    .line 262
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 263
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 264
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 266
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v11, 0x0

    .line 267
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 268
    aget-object v18, v17, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 267
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 269
    :cond_8
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    .line 270
    return-object p2

    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_9
    move-object/from16 v15, p2

    .line 276
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 278
    .local v15, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 279
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .local v5, "changed":Z
    const/16 v17, 0x0

    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .line 284
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 287
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-nez v18, :cond_c

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    const/4 v11, 0x0

    .line 292
    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .restart local v11    # "i":I
    :goto_2
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_d

    .line 308
    :cond_a
    if-eqz v5, :cond_3

    .line 309
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 310
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 311
    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    return-object p2

    .end local v11    # "i":I
    .restart local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_b
    move-object/from16 v13, p1

    .line 285
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 286
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    goto :goto_1

    .line 288
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 289
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    goto :goto_1

    .line 292
    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v11    # "i":I
    :cond_d
    if-eqz v13, :cond_a

    .line 293
    aget-object v8, v4, v11

    .line 294
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-nez v18, :cond_f

    .line 292
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_f
    move-object/from16 v16, v8

    .line 295
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .line 297
    .local v12, "j":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_e

    .line 298
    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 297
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 299
    :cond_10
    if-eqz v3, :cond_11

    .line 302
    :goto_5
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    .line 303
    const/4 v5, 0x1

    goto :goto_4

    .line 300
    :cond_11
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    goto :goto_5
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 320
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 322
    .end local v4    # "type":Ljava/lang/reflect/Type;
    .local v0, "gd":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 323
    .local v4, "type":Ljava/lang/reflect/Type;
    if-eqz v4, :cond_2

    .line 326
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-nez v6, :cond_3

    .line 337
    :cond_1
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 338
    if-nez v4, :cond_0

    .line 339
    return-object v7

    .line 324
    :cond_2
    return-object v7

    :cond_3
    move-object v2, v4

    .line 327
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 328
    .local v2, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 330
    .local v3, "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "types":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 331
    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-lt v1, v6, :cond_4

    .line 334
    return-object v7

    .line 332
    :cond_4
    aget-object v6, v3, v1

    if-eq v6, p1, :cond_5

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_5
    aget-object v6, v5, v1

    return-object v6
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 10
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    iget v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-lt v7, v8, :cond_9

    .line 371
    iget v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gt v7, v8, :cond_a

    .line 375
    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 377
    .local v3, "result":I
    if-nez v3, :cond_b

    .line 381
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v4

    .line 382
    .local v4, "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v2

    .line 384
    .local v2, "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_c

    .line 394
    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v7, :cond_e

    :cond_1
    move v0, v6

    .line 395
    .local v0, "isSampeType":Z
    :goto_0
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v7, :cond_f

    :cond_2
    move v1, v6

    .line 397
    .local v1, "oSameType":Z
    :goto_1
    if-nez v0, :cond_10

    .line 401
    :cond_3
    if-nez v1, :cond_11

    .line 405
    :cond_4
    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_12

    .line 409
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_13

    .line 413
    :cond_6
    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 417
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 421
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 368
    .end local v0    # "isSampeType":Z
    .end local v1    # "oSameType":Z
    .end local v2    # "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":I
    .end local v4    # "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    return v9

    .line 372
    :cond_a
    return v5

    .line 378
    .restart local v3    # "result":I
    :cond_b
    return v3

    .line 384
    .restart local v2    # "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    if-eqz v2, :cond_0

    if-eq v4, v2, :cond_0

    .line 385
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 389
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 390
    return v5

    .line 386
    :cond_d
    return v9

    .line 394
    :cond_e
    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_1

    move v0, v5

    goto :goto_0

    .line 395
    .restart local v0    # "isSampeType":Z
    :cond_f
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_2

    move v1, v5

    goto :goto_1

    .line 397
    .restart local v1    # "oSameType":Z
    :cond_10
    if-nez v1, :cond_3

    .line 398
    return v5

    .line 401
    :cond_11
    if-nez v0, :cond_4

    .line 402
    return v9

    .line 405
    :cond_12
    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_5

    .line 406
    return v5

    .line 409
    :cond_13
    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_6

    .line 410
    return v9

    .line 413
    :cond_14
    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 414
    return v5

    .line 417
    :cond_15
    iget-object v5, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 418
    return v9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method protected genFieldNameChars()[C
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 213
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    .local v0, "nameLen":I
    add-int/lit8 v2, v0, 0x3

    new-array v1, v2, [C

    .line 215
    .local v1, "name_chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 216
    aput-char v6, v1, v5

    .line 217
    add-int/lit8 v2, v0, 0x1

    aput-char v6, v1, v2

    .line 218
    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    .line 219
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 224
    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    .line 229
    .local v0, "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 233
    .end local v0    # "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    :goto_0
    if-eqz v0, :cond_3

    .line 237
    :cond_0
    :goto_1
    return-object v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    return-object v1

    .line 230
    .restart local v0    # "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    goto :goto_0

    .line 233
    .end local v0    # "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .restart local v0    # "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    goto :goto_1
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 363
    return-object v1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public setAccessible()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 461
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
