.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;
.source "ObjectArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 184
    if-eqz p3, :cond_0

    .line 188
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 190
    .local v4, "size":I
    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "objArray":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 191
    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 234
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 236
    return-object v3

    .line 185
    .end local v2    # "i":I
    .end local v3    # "objArray":Ljava/lang/Object;
    .end local v4    # "size":I
    :cond_0
    return-object v10

    .line 192
    .restart local v2    # "i":I
    .restart local v3    # "objArray":Ljava/lang/Object;
    .restart local v4    # "size":I
    :cond_1
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 194
    .local v5, "value":Ljava/lang/Object;
    if-eq v5, p3, :cond_3

    .line 199
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v1, 0x0

    .line 210
    .local v1, "element":Ljava/lang/Object;
    instance-of v10, v5, Lcom/alibaba/fastjson/JSONArray;

    if-nez v10, :cond_6

    .line 226
    .end local v1    # "element":Ljava/lang/Object;
    :cond_2
    :goto_1
    if-eqz v1, :cond_9

    .line 229
    :goto_2
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 191
    .end local v5    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v3, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 201
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 204
    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    .restart local v1    # "element":Ljava/lang/Object;
    :goto_4
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 202
    .end local v1    # "element":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_5
    move-object v1, v5

    .restart local v1    # "element":Ljava/lang/Object;
    goto :goto_4

    .line 211
    :cond_6
    const/4 v0, 0x0

    .local v0, "contains":Z
    move-object v6, v5

    .line 212
    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 213
    .local v6, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .local v7, "valueArraySize":I
    const/4 v9, 0x0

    .line 214
    .local v9, "y":I
    :goto_5
    if-lt v9, v7, :cond_7

    .line 221
    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 215
    :cond_7
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 216
    .local v8, "valueItem":Ljava/lang/Object;
    if-eq v8, p3, :cond_8

    .line 214
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 217
    :cond_8
    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    goto :goto_6

    .line 227
    .end local v0    # "contains":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "valueArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "valueArraySize":I
    .end local v8    # "valueItem":Ljava/lang/Object;
    .end local v9    # "y":I
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v10

    invoke-static {v5, p2, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "element":Ljava/lang/Object;
    goto :goto_2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 135
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 143
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v5, p2

    .line 173
    check-cast v5, Ljava/lang/Class;

    .line 174
    .local v5, "clazz":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .local v7, "componentClass":Ljava/lang/Class;
    move-object v8, v7

    .line 176
    .end local v5    # "clazz":Ljava/lang/Class;
    .local v8, "componentType":Ljava/lang/reflect/Type;
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 177
    .local v3, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v3, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v16

    return-object v16

    .end local v3    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "componentClass":Ljava/lang/Class;
    .end local v8    # "componentType":Ljava/lang/reflect/Type;
    :cond_0
    const/16 v16, 0x10

    .line 131
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v16, 0x0

    .line 132
    return-object v16

    .line 136
    :cond_1
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v4

    .local v4, "bytes":[B
    const/16 v16, 0x10

    .line 137
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 138
    return-object v4

    .end local v4    # "bytes":[B
    :cond_2
    move-object/from16 v6, p2

    .line 144
    check-cast v6, Ljava/lang/reflect/GenericArrayType;

    .line 145
    .local v6, "clazz":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v6}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 146
    .restart local v8    # "componentType":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 170
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .restart local v7    # "componentClass":Ljava/lang/Class;
    goto :goto_0

    .end local v7    # "componentClass":Ljava/lang/Class;
    :cond_3
    move-object v15, v8

    .line 147
    check-cast v15, Ljava/lang/reflect/TypeVariable;

    .line 148
    .local v15, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 149
    .local v13, "objType":Ljava/lang/reflect/Type;
    instance-of v0, v13, Ljava/lang/reflect/ParameterizedType;

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 167
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .restart local v7    # "componentClass":Ljava/lang/Class;
    goto :goto_0

    .end local v7    # "componentClass":Ljava/lang/Class;
    :cond_4
    move-object v11, v13

    .line 150
    check-cast v11, Ljava/lang/reflect/ParameterizedType;

    .line 151
    .local v11, "objParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    .local v12, "objRawType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 153
    .local v2, "actualType":Ljava/lang/reflect/Type;
    instance-of v0, v12, Ljava/lang/Class;

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 161
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v12    # "objRawType":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v0, v2, Ljava/lang/Class;

    move/from16 v16, v0

    if-nez v16, :cond_8

    const-class v7, Ljava/lang/Object;

    .line 164
    .restart local v7    # "componentClass":Ljava/lang/Class;
    goto :goto_0

    .line 154
    .end local v7    # "componentClass":Ljava/lang/Class;
    .restart local v2    # "actualType":Ljava/lang/reflect/Type;
    .restart local v12    # "objRawType":Ljava/lang/reflect/Type;
    :cond_6
    check-cast v12, Ljava/lang/Class;

    .end local v12    # "objRawType":Ljava/lang/reflect/Type;
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    .local v14, "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    const/4 v9, 0x0

    .line 155
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .local v9, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 156
    aget-object v16, v14, v9

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 155
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 157
    :cond_7
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    aget-object v2, v16, v9

    .local v2, "actualType":Ljava/lang/reflect/Type;
    goto :goto_2

    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v9    # "i":I
    .end local v14    # "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    :cond_8
    move-object v7, v2

    .line 162
    check-cast v7, Ljava/lang/Class;

    .restart local v7    # "componentClass":Ljava/lang/Class;
    goto/16 :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 240
    return v0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
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
    .line 44
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .local v14, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object/from16 v4, p2

    .line 46
    check-cast v4, [Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, [Ljava/lang/Object;

    .line 48
    .local v9, "array":[Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 53
    array-length v0, v9

    move/from16 v16, v0

    .line 55
    .local v16, "size":I
    add-int/lit8 v12, v16, -0x1

    .local v12, "end":I
    const/4 v4, -0x1

    .line 57
    if-eq v12, v4, :cond_1

    .line 62
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    .line 63
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v15, 0x0

    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 68
    .local v3, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v4, 0x5b

    :try_start_0
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v13, 0x0

    .line 86
    .end local v3    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "i":I
    :goto_0
    if-lt v13, v12, :cond_5

    .line 110
    aget-object v5, v9, v12

    .line 112
    .local v5, "item":Ljava/lang/Object;
    if-eqz v5, :cond_9

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 118
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_1
    const/16 v4, 0x5d

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_2
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 125
    return-void

    .line 49
    .end local v5    # "item":Ljava/lang/Object;
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v16    # "size":I
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 50
    return-void

    .restart local v12    # "end":I
    .restart local v16    # "size":I
    :cond_1
    const-string/jumbo v4, "[]"

    .line 58
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 59
    return-void

    .line 71
    .restart local v3    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    const/4 v13, 0x0

    .line 73
    .restart local v13    # "i":I
    :goto_3
    move/from16 v0, v16

    if-lt v13, v0, :cond_3

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    const/16 v4, 0x5d

    .line 82
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 83
    return-void

    .line 74
    :cond_3
    if-nez v13, :cond_4

    .line 78
    :goto_4
    :try_start_2
    aget-object v4, v9, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    const/16 v4, 0x2c

    .line 75
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 124
    .end local v3    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v13    # "i":I
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v4

    .line 123
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 87
    .restart local v13    # "i":I
    :cond_5
    :try_start_3
    aget-object v5, v9, v13

    .line 89
    .restart local v5    # "item":Ljava/lang/Object;
    if-eqz v5, :cond_6

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 97
    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v10, v15, :cond_8

    .line 100
    move-object v15, v10

    .line 101
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .local v3, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    .line 103
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 106
    .end local v3    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    const/16 v4, 0x2c

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 86
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "null,"

    .line 90
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_6

    .line 93
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_5

    .restart local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    .line 98
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_5

    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    const-string/jumbo v4, "null]"

    .line 113
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_2

    .line 116
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
