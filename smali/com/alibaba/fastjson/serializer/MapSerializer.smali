.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 36
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v26, v0

    .line 39
    .local v26, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_3

    move-object/from16 v23, p2

    .line 44
    check-cast v23, Ljava/util/Map;

    .line 56
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 61
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v27, v0

    .local v27, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    .line 62
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v4, 0x7b

    .line 64
    :try_start_0
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    const/16 v28, 0x0

    .local v28, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 71
    .local v10, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v21, 0x1

    .line 73
    .local v21, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 85
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object/from16 v30, v10

    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v30, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_1
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_9

    .line 255
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 259
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_2
    :goto_2
    const/16 v4, 0x7d

    .line 262
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 263
    return-void

    .line 40
    .end local v21    # "first":Z
    .end local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v27    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 41
    return-void

    .line 57
    .restart local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_4
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 74
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "first":Z
    .restart local v27    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 75
    .local v33, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .local v24, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    .line 76
    move-object/from16 v0, v24

    if-ne v0, v4, :cond_7

    .line 77
    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_3
    const/16 v17, 0x0

    .line 78
    .local v17, "containsKey":Z
    :goto_4
    if-nez v17, :cond_0

    .line 79
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 81
    const/16 v21, 0x0

    goto :goto_0

    .end local v17    # "containsKey":Z
    :cond_7
    const-class v4, Ljava/util/HashMap;

    .line 76
    move-object/from16 v0, v24

    if-eq v0, v4, :cond_6

    const-class v4, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_6

    goto :goto_3

    :cond_8
    const/16 v17, 0x1

    .line 77
    goto :goto_4

    .line 85
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "typeKey":Ljava/lang/String;
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 86
    .local v19, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 88
    .local v9, "value":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    .line 91
    .local v20, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v29, v0

    .line 92
    .local v29, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-nez v29, :cond_13

    .line 106
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v29, v0

    .line 107
    if-nez v29, :cond_18

    .line 122
    :cond_b
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 123
    .local v31, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-nez v31, :cond_1d

    .line 137
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 138
    if-nez v31, :cond_22

    .line 153
    :cond_d
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 154
    .local v25, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-nez v25, :cond_27

    .line 164
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 165
    if-nez v25, :cond_2c

    .line 176
    :cond_f
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v34, v0

    .line 177
    .local v34, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->contextValueFilters:Ljava/util/List;

    move-object/from16 v18, v0

    .line 178
    .local v18, "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    if-nez v34, :cond_31

    :cond_10
    if-nez v18, :cond_34

    .line 189
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v34, v0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->contextValueFilters:Ljava/util/List;

    move-object/from16 v18, v0

    .line 191
    if-nez v34, :cond_38

    :cond_11
    if-nez v18, :cond_3b

    .line 202
    :goto_c
    if-eqz v9, :cond_3f

    .line 208
    :goto_d
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_40

    .line 220
    if-eqz v21, :cond_43

    .line 224
    :goto_e
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 227
    :cond_12
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 228
    .local v32, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .end local v32    # "strEntryKey":Ljava/lang/String;
    :goto_f
    const/16 v4, 0x3a

    .line 233
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 236
    :goto_10
    const/16 v21, 0x0

    .line 238
    if-eqz v9, :cond_45

    .line 243
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 245
    .local v16, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_46

    .line 248
    move-object/from16 v28, v16

    .line 249
    .local v28, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v10, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    move-object/from16 v13, v20

    .line 251
    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .end local v28    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_11
    move-object/from16 v30, v10

    .line 253
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_1

    .line 92
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_13
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 93
    if-nez v20, :cond_15

    .line 94
    :cond_14
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    .line 93
    :cond_15
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_14

    .line 97
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 98
    :cond_16
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    .line 97
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_16

    goto/16 :goto_5

    .line 107
    :cond_18
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 108
    if-nez v20, :cond_1a

    .line 109
    :cond_19
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 108
    :cond_1a
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_19

    .line 112
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 113
    :cond_1b
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 112
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_1b

    goto/16 :goto_6

    .line 123
    .restart local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_1d
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 124
    if-nez v20, :cond_1f

    .line 125
    :cond_1e
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_7

    .line 124
    :cond_1f
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_1e

    .line 128
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 129
    :cond_20
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_7

    .line 128
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_20

    goto/16 :goto_7

    .line 138
    :cond_22
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 139
    if-nez v20, :cond_24

    .line 140
    :cond_23
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_8

    .line 139
    :cond_24
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_23

    .line 143
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 144
    :cond_25
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_8

    .line 143
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_25

    goto/16 :goto_8

    .line 154
    .restart local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_27
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 155
    if-nez v20, :cond_29

    .line 156
    :cond_28
    check-cast v20, Ljava/lang/String;

    .end local v20    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "entryKey":Ljava/lang/Object;
    goto/16 :goto_9

    .line 155
    :cond_29
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_28

    .line 157
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 158
    :cond_2a
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_9

    .line 157
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_2a

    goto/16 :goto_9

    .line 165
    :cond_2c
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 166
    if-nez v20, :cond_2e

    .line 167
    :cond_2d
    check-cast v20, Ljava/lang/String;

    .end local v20    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "entryKey":Ljava/lang/Object;
    goto/16 :goto_a

    .line 166
    :cond_2e
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_2d

    .line 168
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 169
    :cond_2f
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 170
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_a

    .line 168
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_2f

    goto/16 :goto_a

    .line 178
    .restart local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .restart local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_31
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 180
    :cond_32
    if-nez v20, :cond_35

    .line 181
    :cond_33
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_b

    .line 179
    :cond_34
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_32

    goto/16 :goto_b

    .line 180
    :cond_35
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_33

    .line 182
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 183
    :cond_36
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 184
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_b

    .line 182
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_36

    goto/16 :goto_b

    .line 191
    :cond_38
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 193
    :cond_39
    if-nez v20, :cond_3c

    .line 194
    :cond_3a
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    const/4 v12, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_c

    .line 192
    :cond_3b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_39

    goto/16 :goto_c

    .line 193
    :cond_3c
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_3a

    .line 195
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 196
    :cond_3d
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 197
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_c

    .line 195
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_3d

    goto/16 :goto_c

    .line 203
    :cond_3f
    sget v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_d

    .line 209
    :cond_40
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 211
    .local v22, "key":Ljava/lang/String;
    if-eqz v21, :cond_41

    .line 215
    :goto_12
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 218
    :goto_13
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_10

    .line 256
    .end local v9    # "value":Ljava/lang/Object;
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v20    # "entryKey":Ljava/lang/Object;
    .end local v21    # "first":Z
    .end local v22    # "key":Ljava/lang/String;
    .end local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_0
    move-exception v4

    .line 255
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .restart local v19    # "entry":Ljava/util/Map$Entry;
    .restart local v20    # "entryKey":Ljava/lang/Object;
    .restart local v21    # "first":Z
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_41
    const/16 v4, 0x2c

    .line 212
    :try_start_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_12

    .line 216
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_13

    .end local v22    # "key":Ljava/lang/String;
    :cond_43
    const/16 v4, 0x2c

    .line 221
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_e

    .line 224
    :cond_44
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 225
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 226
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 230
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 239
    :cond_45
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_1

    .restart local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_46
    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, v30

    move-object/from16 v11, p1

    move-object v12, v9

    move-object/from16 v13, v20

    .line 246
    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, v30

    .end local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_11

    .line 259
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v20    # "entryKey":Ljava/lang/Object;
    .end local v25    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v29    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v31    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v34    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v30    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_47
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_2
.end method
