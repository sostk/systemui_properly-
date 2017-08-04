.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lcom/google/gson/internal/Excluder;
    .param p4, "jsonAdapterFactory"    # Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 57
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 58
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 59
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 60
    return-void
.end method

.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 14
    .param p1, "context"    # Lcom/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, "fieldType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual/range {p4 .. p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v11

    .local v11, "isPrimitive":Z
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/google/gson/annotations/JsonAdapter;

    .local v12, "annotation":Lcom/google/gson/annotations/JsonAdapter;
    const/4 v13, 0x0

    .line 110
    .local v13, "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    if-nez v12, :cond_0

    .line 114
    .end local v13    # "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :goto_0
    if-nez v13, :cond_1

    const/4 v7, 0x0

    .line 115
    .local v7, "jsonAdapterPresent":Z
    :goto_1
    if-eqz v13, :cond_2

    .line 117
    :goto_2
    move-object v8, v13

    .line 118
    .local v8, "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v2, p0

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p2

    move-object v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    return-object v1

    .line 111
    .end local v7    # "jsonAdapterPresent":Z
    .end local v8    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v13    # "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, p1, v0, v12}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v13

    .local v13, "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_0

    .end local v13    # "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_1
    const/4 v7, 0x1

    .line 114
    goto :goto_1

    .line 115
    .restart local v7    # "jsonAdapterPresent":Z
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v13

    .restart local v13    # "mapped":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_2
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .param p1, "serialize"    # Z
    .param p2, "excluder"    # Lcom/google/gson/internal/Excluder;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p0, p1}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 20
    .param p1, "context"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .local v17, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .local v10, "declaredType":Ljava/lang/reflect/Type;
    :goto_0
    const-class v2, Ljava/lang/Object;

    .line 149
    move-object/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 177
    return-object v17

    .line 145
    .end local v10    # "declaredType":Ljava/lang/reflect/Type;
    :cond_0
    return-object v17

    .line 150
    .restart local v10    # "declaredType":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 151
    .local v13, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v13

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 175
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    .line 151
    :cond_2
    aget-object v4, v13, v18

    .line 152
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 153
    .local v7, "serialize":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v8

    .line 154
    .local v8, "deserialize":Z
    if-eqz v7, :cond_4

    .line 157
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 159
    .local v12, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v11

    .local v11, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    const/4 v14, 0x0

    .line 161
    .end local v7    # "serialize":Z
    .end local v15    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v14, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lt v14, v2, :cond_5

    .line 169
    if-nez v15, :cond_8

    .line 151
    .end local v11    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "fieldType":Ljava/lang/reflect/Type;
    .end local v14    # "i":I
    :cond_3
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 154
    .restart local v7    # "serialize":Z
    :cond_4
    if-eqz v8, :cond_3

    goto :goto_2

    .line 162
    .end local v7    # "serialize":Z
    .restart local v11    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v14    # "i":I
    :cond_5
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 163
    .local v5, "name":Ljava/lang/String;
    if-nez v14, :cond_6

    .line 165
    :goto_4
    invoke-static {v12}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 164
    invoke-direct/range {v2 .. v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v9

    .line 166
    .local v9, "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    move-object/from16 v0, v17

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 167
    .local v16, "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v15, :cond_7

    .line 161
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 163
    .end local v9    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_6
    const/4 v7, 0x0

    .local v7, "serialize":Z
    goto :goto_4

    .line 167
    .end local v7    # "serialize":Z
    .restart local v9    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v16    # "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_7
    move-object/from16 v15, v16

    .local v15, "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    goto :goto_5

    .line 170
    .end local v5    # "name":Ljava/lang/String;
    .end local v9    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v15    # "previous":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "replaced":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " declares multiple JSON fields named "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v15, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-class v7, Lcom/google/gson/annotations/SerializedName;

    .line 72
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/SerializedName;

    .line 73
    .local v2, "annotation":Lcom/google/gson/annotations/SerializedName;
    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v2}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "serializedName":Ljava/lang/String;
    invoke-interface {v2}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "alternates":[Ljava/lang/String;
    array-length v7, v1

    if-eqz v7, :cond_1

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v3, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    array-length v7, v1

    :goto_0
    if-lt v6, v7, :cond_2

    .line 89
    return-object v3

    .line 74
    .end local v1    # "alternates":[Ljava/lang/String;
    .end local v3    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "serializedName":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v6, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 81
    .end local v4    # "name":Ljava/lang/String;
    .restart local v1    # "alternates":[Ljava/lang/String;
    .restart local v5    # "serializedName":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 86
    .restart local v3    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    aget-object v0, v1, v6

    .line 87
    .local v0, "alternate":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 4
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Ljava/lang/Object;

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 100
    .local v0, "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2

    .end local v0    # "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    :cond_0
    const/4 v2, 0x0

    .line 96
    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/google/gson/internal/Excluder;)Z

    move-result v0

    return v0
.end method
