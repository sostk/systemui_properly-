.class public Lcom/alibaba/fastjson/serializer/CollectionCodec;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 108
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const-class v5, Lcom/alibaba/fastjson/JSONArray;

    .line 113
    if-eq p2, v5, :cond_2

    .line 119
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v3

    .local v3, "list":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 122
    .local v2, "itemType":Ljava/lang/reflect/Type;
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_3

    const/4 v1, 0x0

    .line 126
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v5, p2, Ljava/lang/Class;

    if-nez v5, :cond_4

    .line 134
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "itemType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 138
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_1
    invoke-virtual {p1, v2, v3, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 140
    return-object v3

    .line 109
    .end local v3    # "list":Ljava/util/Collection;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 110
    return-object v8

    .line 114
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 115
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 116
    return-object v0

    .line 123
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local v2    # "itemType":Ljava/lang/reflect/Type;
    .restart local v3    # "list":Ljava/util/Collection;
    :cond_3
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v2, v5, v7

    .local v2, "itemType":Ljava/lang/reflect/Type;
    goto :goto_1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "itemType":Ljava/lang/reflect/Type;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_4
    move-object v1, p2

    .line 126
    check-cast v1, Ljava/lang/Class;

    .line 127
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 129
    .local v4, "superClass":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    .line 130
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .end local v4    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v2, v5, v7

    .local v2, "itemType":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "itemType":Ljava/lang/reflect/Type;
    :cond_5
    const-class v2, Ljava/lang/Object;

    .line 135
    .restart local v2    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 146
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 20
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
    .line 39
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    .local v15, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    .line 47
    .local v8, "elementType":Ljava/lang/reflect/Type;
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_3

    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    move-object/from16 v11, p2

    .line 54
    check-cast v11, Ljava/util/Collection;

    .line 56
    .local v11, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .local v12, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v5, 0x0

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    :goto_1
    const/4 v13, 0x0

    .line 69
    .local v13, "i":I
    const/16 v5, 0x5b

    :try_start_0
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    move v14, v13

    .end local v13    # "i":I
    .local v14, "i":I
    :goto_2
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 100
    const/16 v5, 0x5d

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 104
    return-void

    .line 42
    .end local v11    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v12    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v14    # "i":I
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 43
    return-void

    .line 48
    .restart local v8    # "elementType":Ljava/lang/reflect/Type;
    :cond_3
    move-object/from16 v0, p4

    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    move-object/from16 v16, p4

    .line 49
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 50
    .local v16, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, v5, v7

    .local v8, "elementType":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v8    # "elementType":Ljava/lang/reflect/Type;
    .end local v16    # "param":Ljava/lang/reflect/ParameterizedType;
    .restart local v11    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v12    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_4
    const-class v5, Ljava/util/HashSet;

    .line 60
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v5, v7, :cond_5

    const-class v5, Ljava/util/TreeSet;

    .line 62
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v5, v7, :cond_1

    const-string/jumbo v5, "TreeSet"

    .line 63
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "Set"

    .line 61
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 70
    .restart local v14    # "i":I
    :cond_6
    :try_start_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 72
    .local v6, "item":Ljava/lang/Object;
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "i":I
    .restart local v13    # "i":I
    if-nez v14, :cond_7

    .line 76
    :goto_3
    if-eqz v6, :cond_8

    .line 81
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Integer;

    .line 83
    if-eq v10, v5, :cond_9

    const-class v5, Ljava/lang/Long;

    .line 88
    if-eq v10, v5, :cond_a

    .line 97
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 98
    .local v4, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v5, v13, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move v14, v13

    .line 99
    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    .line 73
    .end local v4    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "i":I
    .restart local v13    # "i":I
    :cond_7
    const/16 v5, 0x2c

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 103
    .end local v6    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    .line 102
    :goto_4
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v5

    .line 77
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_8
    :try_start_4
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move v14, v13

    .line 78
    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    .line 84
    .end local v14    # "i":I
    .restart local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "i":I
    :cond_9
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move v14, v13

    .line 85
    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_2

    .line 89
    .end local v14    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    .restart local v13    # "i":I
    :cond_a
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 91
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_b

    move v14, v13

    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_2

    .end local v14    # "i":I
    .restart local v13    # "i":I
    :cond_b
    const/16 v5, 0x4c

    .line 92
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v14, v13

    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_2

    .line 103
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_1
    move-exception v5

    move v13, v14

    .end local v14    # "i":I
    .restart local v13    # "i":I
    goto :goto_4
.end method
