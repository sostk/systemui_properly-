.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 5
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 47
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/4 v2, 0x0

    .line 48
    .local v2, "i":I
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    .local v3, "size":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 55
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/4 v2, 0x0

    .line 56
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    :goto_1
    if-lt v2, v3, :cond_1

    .line 61
    return-void

    .line 49
    :cond_0
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 50
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 52
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 58
    .restart local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 59
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p2, p3, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    .line 41
    return-void
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "deser"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x5b

    const/16 v8, 0xf

    const/16 v7, 0x10

    const/16 v6, 0xe

    .line 859
    iget-object v3, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 860
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .local v4, "token":I
    const/16 v5, 0x8

    .line 861
    if-eq v4, v5, :cond_0

    .line 867
    if-ne v4, v6, :cond_1

    .line 870
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    int-to-char v0, v5

    .line 871
    .local v0, "ch":C
    if-eq v0, v9, :cond_2

    .line 875
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 878
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-eq v5, v8, :cond_3

    const/4 v1, 0x0

    .line 885
    .local v1, "index":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 887
    add-int/lit8 v1, v1, 0x1

    .line 888
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 901
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 902
    if-ne v4, v8, :cond_6

    .line 906
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    int-to-char v0, v5

    const/16 v5, 0x2c

    .line 907
    if-eq v0, v5, :cond_7

    .line 911
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 914
    :goto_4
    return-void

    .line 862
    .end local v0    # "ch":C
    .end local v1    # "index":I
    .end local v2    # "item":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 863
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 864
    return-void

    .line 868
    :cond_1
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    goto :goto_0

    .line 872
    .restart local v0    # "ch":C
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 873
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_1

    .line 879
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 880
    return-void

    .line 889
    .restart local v1    # "index":I
    .restart local v2    # "item":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    int-to-char v0, v5

    .line 890
    if-eq v0, v9, :cond_5

    .line 894
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_2

    .line 891
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 892
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 903
    :cond_6
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    goto :goto_3

    .line 908
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 909
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_4
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "token"    # I

    .prologue
    .line 257
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 34
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 91
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v29, v0

    if-nez v29, :cond_2

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 108
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    .line 112
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    .local v24, "parentName":Ljava/lang/String;
    const-string/jumbo v28, ""

    .line 115
    .local v28, "typeName":Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v29, v0

    if-nez v29, :cond_5

    .line 119
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x24

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/16 v29, 0x1

    .line 160
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 168
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v24    # "parentName":Ljava/lang/String;
    .end local v28    # "typeName":Ljava/lang/String;
    .local v21, "object":Ljava/lang/Object;
    :goto_1
    if-nez p1, :cond_b

    .line 181
    :cond_1
    return-object v21

    .line 92
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v21    # "object":Ljava/lang/Object;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->isInterface()Z

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v3, p2

    .line 93
    check-cast v3, Ljava/lang/Class;

    .line 94
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    .line 95
    .local v19, "loader":Ljava/lang/ClassLoader;
    new-instance v20, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .local v20, "obj":Lcom/alibaba/fastjson/JSONObject;
    const/16 v29, 0x1

    .line 96
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v3, v29, v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v25

    .line 97
    .local v25, "proxy":Ljava/lang/Object;
    return-object v25

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "loader":Ljava/lang/ClassLoader;
    .end local v20    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "proxy":Ljava/lang/Object;
    :cond_3
    const/16 v29, 0x0

    .line 102
    return-object v29

    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_4
    const/16 v29, 0x0

    .line 109
    :try_start_1
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "object":Ljava/lang/Object;
    goto :goto_1

    .line 116
    .end local v21    # "object":Ljava/lang/Object;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v24    # "parentName":Ljava/lang/String;
    .restart local v28    # "typeName":Ljava/lang/String;
    :cond_5
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 120
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .line 121
    .local v27, "typeChars":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v5, "clsNameBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "$"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v23, "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v15, v29, 0x1

    .local v15, "i":I
    :goto_2
    const/16 v29, 0x24

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    move/from16 v0, v29

    if-le v15, v0, :cond_7

    const/16 v29, 0x1

    .line 158
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "object":Ljava/lang/Object;
    goto/16 :goto_1

    .line 126
    .end local v21    # "object":Ljava/lang/Object;
    :cond_7
    aget-char v29, v27, v15

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v26, v0

    .local v26, "thisChar":C
    const/16 v29, 0x24

    .line 127
    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 156
    :cond_8
    :goto_3
    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 128
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "clsName":Ljava/lang/String;
    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 132
    .local v22, "outter":Ljava/lang/Object;
    :try_start_2
    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v22, :cond_8

    .line 135
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .local v17, "innerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v29, 0x1

    .line 136
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v3, v29, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 137
    .local v18, "innerClsConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v29

    if-eqz v29, :cond_a

    :goto_4
    const/16 v29, 0x1

    .line 140
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v22, v29, v30

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 141
    .local v16, "inner":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-object/from16 v24, v4

    goto :goto_3

    .line 138
    .end local v16    # "inner":Ljava/lang/Object;
    :cond_a
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 154
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "innerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "innerClsConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v8

    .line 145
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v29, Lcom/alibaba/fastjson/JSONException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "unable to find class "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v15    # "i":I
    .end local v22    # "outter":Ljava/lang/Object;
    .end local v23    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "parentName":Ljava/lang/String;
    .end local v26    # "thisChar":C
    .end local v27    # "typeChars":[C
    .end local v28    # "typeName":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 165
    .local v9, "e":Ljava/lang/Exception;
    new-instance v29, Lcom/alibaba/fastjson/JSONException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "create instance error, class "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    .line 145
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "clsName":Ljava/lang/String;
    .restart local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v15    # "i":I
    .restart local v22    # "outter":Ljava/lang/Object;
    .restart local v23    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "parentName":Ljava/lang/String;
    .restart local v26    # "thisChar":C
    .restart local v27    # "typeChars":[C
    .restart local v28    # "typeName":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 147
    .local v12, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v29, Ljava/lang/RuntimeException;

    move-object/from16 v0, v29

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v29

    .end local v12    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v13

    .line 149
    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "can not instantiate "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v10

    .line 151
    .local v10, "e":Ljava/lang/IllegalAccessException;
    new-instance v29, Ljava/lang/RuntimeException;

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v29

    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v11

    .line 153
    .local v11, "e":Ljava/lang/InstantiationException;
    new-instance v29, Ljava/lang/RuntimeException;

    move-object/from16 v0, v29

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v29
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v11    # "e":Ljava/lang/InstantiationException;
    .end local v15    # "i":I
    .end local v22    # "outter":Ljava/lang/Object;
    .end local v23    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "parentName":Ljava/lang/String;
    .end local v26    # "thisChar":C
    .end local v27    # "typeChars":[C
    .end local v28    # "typeName":Ljava/lang/String;
    .restart local v21    # "object":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v29, v0

    sget-object v30, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 169
    invoke-interface/range {v29 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    aget-object v14, v30, v29

    .line 171
    .local v14, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v32, v0

    const-class v33, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 170
    :goto_6
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    :cond_c
    :try_start_5
    const-string/jumbo v32, ""

    .line 173
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    .line 176
    :catch_6
    move-exception v9

    .line 175
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v29, Lcom/alibaba/fastjson/JSONException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "create instance error, class "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 20
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 763
    .local v12, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 791
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 792
    .local v8, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v15, v8

    .line 793
    .local v15, "size":I
    new-array v14, v15, [Ljava/lang/Object;

    .local v14, "params":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 794
    .local v9, "i":I
    :goto_0
    if-lt v9, v15, :cond_5

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 814
    .end local v12    # "object":Ljava/lang/Object;
    :goto_1
    return-object v12

    .line 763
    .end local v8    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "i":I
    .end local v14    # "params":[Ljava/lang/Object;
    .end local v15    # "size":I
    .restart local v12    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 766
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_3

    .line 788
    return-object v12

    .line 766
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 767
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 768
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 770
    .local v16, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    .line 771
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v6, :cond_2

    .line 775
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 776
    .local v11, "method":Ljava/lang/reflect/Method;
    if-nez v11, :cond_4

    .line 781
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 782
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 783
    .local v13, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    .line 784
    move-object/from16 v0, v16

    invoke-virtual {v5, v12, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 777
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "paramType":Ljava/lang/reflect/Type;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v13, v18, v19

    .line 778
    .restart local v13    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    const/16 v18, 0x1

    .line 779
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v11, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 795
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "paramType":Ljava/lang/reflect/Type;
    .end local v16    # "value":Ljava/lang/Object;
    .restart local v8    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "i":I
    .restart local v14    # "params":[Ljava/lang/Object;
    .restart local v15    # "size":I
    :cond_5
    aget-object v7, v8, v9

    .line 796
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v14, v9

    .line 794
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 801
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 805
    :catch_0
    move-exception v3

    .line 803
    .local v3, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "create instance error, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v19, v0

    .line 804
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 808
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto/16 :goto_1

    .line 811
    :catch_1
    move-exception v3

    .line 810
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "create factory method error, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 46
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const-class v4, Lcom/alibaba/fastjson/JSON;

    .line 272
    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 273
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_1
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    .line 272
    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 276
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v30, v0

    check-cast v30, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 278
    .local v30, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v42

    .local v42, "token":I
    const/16 v4, 0x8

    .line 279
    move/from16 v0, v42

    if-eq v0, v4, :cond_9

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15

    .line 285
    .local v15, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez p4, :cond_a

    :cond_2
    :goto_0
    const/4 v13, 0x0

    .local v13, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v9, 0x0

    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    .line 293
    move/from16 v0, v42

    if-eq v0, v4, :cond_b

    const/16 v4, 0xe

    .line 301
    move/from16 v0, v42

    if-eq v0, v4, :cond_d

    :cond_3
    const/16 v4, 0xc

    .line 312
    move/from16 v0, v42

    if-ne v0, v4, :cond_10

    .line 346
    :cond_4
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    :goto_1
    const/16 v22, 0x0

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v22, "fieldIndex":I
    :goto_2
    const/4 v6, 0x0

    .local v6, "key":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v23, 0x0

    .local v23, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v20, 0x0

    .line 355
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    move/from16 v0, v22

    if-lt v0, v4, :cond_18

    .line 361
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_3
    const/16 v33, 0x0

    .line 362
    .local v33, "matchField":Z
    const/16 v45, 0x0

    .local v45, "valueParsed":Z
    const/16 v26, 0x0

    .line 365
    .local v26, "fieldValue":Ljava/lang/Object;
    if-nez v21, :cond_19

    .line 441
    .end local v26    # "fieldValue":Ljava/lang/Object;
    :cond_5
    :goto_4
    if-eqz v33, :cond_2f

    .line 539
    .end local v6    # "key":Ljava/lang/String;
    :cond_6
    if-eqz p4, :cond_46

    .line 547
    :cond_7
    :goto_5
    if-nez v33, :cond_48

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 570
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v32

    .line 571
    .local v32, "match":Z
    if-eqz v32, :cond_4d

    .line 578
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_4e

    .line 583
    .end local v32    # "match":Z
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1b

    .line 587
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4f

    .line 592
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_50

    .line 593
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .end local v22    # "fieldIndex":I
    .end local v33    # "matchField":Z
    .end local v45    # "valueParsed":Z
    :catchall_0
    move-exception v4

    .line 664
    if-nez v13, :cond_62

    .line 667
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_9
    const/16 v4, 0x10

    .line 280
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    const/4 v4, 0x0

    .line 281
    return-object v4

    .line 285
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_a
    if-eqz v15, :cond_2

    .line 286
    iget-object v15, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_b
    const/16 v4, 0x10

    .line 294
    :try_start_1
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    if-eqz p4, :cond_c

    .line 667
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 298
    return-object p4

    .line 296
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_8

    .line 302
    :cond_d
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v31, v0

    .line 303
    .local v31, "mask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int v4, v4, v31

    if-eqz v4, :cond_f

    :cond_e
    const/16 v29, 0x1

    .line 307
    .local v29, "isSupportArrayToBean":Z
    :goto_9
    if-eqz v29, :cond_3

    .line 308
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 667
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 308
    return-object v4

    .line 303
    .end local v29    # "isSupportArrayToBean":Z
    :cond_f
    :try_start_3
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 304
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_e

    and-int v4, p5, v31

    if-nez v4, :cond_e

    const/16 v29, 0x0

    goto :goto_9

    .end local v31    # "mask":I
    :cond_10
    const/16 v4, 0x10

    .line 312
    move/from16 v0, v42

    if-eq v0, v4, :cond_4

    .line 313
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x4

    .line 317
    move/from16 v0, v42

    if-eq v0, v4, :cond_14

    :cond_11
    const/16 v4, 0xe

    .line 325
    move/from16 v0, v42

    if-eq v0, v4, :cond_15

    .line 331
    :cond_12
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "syntax error, expect {, actual "

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 333
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", pos "

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 335
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 337
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_16

    .line 343
    :goto_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 667
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 314
    return-object v4

    .line 318
    :cond_14
    :try_start_4
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v41

    .line 319
    .local v41, "strVal":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 320
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 667
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 321
    return-object v4

    .line 325
    .end local v41    # "strVal":Ljava/lang/String;
    :cond_15
    :try_start_5
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_12

    .line 326
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 327
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 667
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 328
    return-object v4

    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    :cond_16
    :try_start_6
    const-string/jumbo v4, ", fieldName "

    .line 339
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 340
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_a

    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :cond_17
    const/4 v4, 0x0

    .line 347
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_1

    .line 356
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v22    # "fieldIndex":I
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v21, v4, v22

    .line 357
    .local v21, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v23, v0

    .line 358
    .local v23, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_3

    .line 366
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v33    # "matchField":Z
    .restart local v45    # "valueParsed":Z
    :cond_19
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    move-object/from16 v34, v0

    .line 367
    .local v34, "name_chars":[C
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1c

    .line 368
    :cond_1a
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 370
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_1e

    .line 373
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    .line 350
    .end local v6    # "key":Ljava/lang/String;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v34    # "name_chars":[C
    :cond_1b
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .restart local v6    # "key":Ljava/lang/String;
    .restart local v26    # "fieldValue":Ljava/lang/Object;
    .restart local v34    # "name_chars":[C
    :cond_1c
    const-class v4, Ljava/lang/Integer;

    .line 367
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1a

    .line 376
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1f

    .line 377
    :cond_1d
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 379
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_21

    .line 382
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 371
    :cond_1e
    const/16 v33, 0x1

    .line 372
    const/16 v45, 0x1

    goto/16 :goto_4

    :cond_1f
    const-class v4, Ljava/lang/Long;

    .line 376
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1d

    const-class v4, Ljava/lang/String;

    .line 385
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_22

    .line 394
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_24

    .line 395
    :cond_20
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 397
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_26

    .line 400
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 380
    :cond_21
    const/16 v33, 0x1

    .line 381
    const/16 v45, 0x1

    goto/16 :goto_4

    .line 386
    :cond_22
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v26

    .line 388
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_23

    .line 391
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 389
    :cond_23
    const/16 v33, 0x1

    .line 390
    const/16 v45, 0x1

    goto/16 :goto_4

    :cond_24
    const-class v4, Ljava/lang/Boolean;

    .line 394
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_20

    .line 403
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_27

    .line 404
    :cond_25
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    .line 406
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_29

    .line 409
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 398
    :cond_26
    const/16 v33, 0x1

    .line 399
    const/16 v45, 0x1

    goto/16 :goto_4

    :cond_27
    const-class v4, Ljava/lang/Float;

    .line 403
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_25

    .line 412
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2a

    .line 413
    :cond_28
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    .line 415
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_2c

    .line 418
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 407
    :cond_29
    const/16 v33, 0x1

    .line 408
    const/16 v45, 0x1

    goto/16 :goto_4

    :cond_2a
    const-class v4, Ljava/lang/Double;

    .line 412
    move-object/from16 v0, v20

    if-eq v0, v4, :cond_28

    .line 421
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 434
    :cond_2b
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 435
    const/16 v33, 0x1

    goto/16 :goto_4

    .line 416
    :cond_2c
    const/16 v33, 0x1

    .line 417
    const/16 v45, 0x1

    goto/16 :goto_4

    .line 422
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_2b

    .line 424
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v18

    .line 426
    .local v18, "enumName":Ljava/lang/String;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_2e

    .line 431
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1b

    goto/16 :goto_4

    .line 427
    :cond_2e
    const/16 v33, 0x1

    .line 428
    const/16 v45, 0x1

    .line 430
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v26

    goto/16 :goto_4

    .line 442
    .end local v18    # "enumName":Ljava/lang/String;
    .end local v26    # "fieldValue":Ljava/lang/Object;
    .end local v34    # "name_chars":[C
    :cond_2f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "key":Ljava/lang/String;
    if-eqz v6, :cond_31

    :cond_30
    :goto_c
    const-string/jumbo v4, "$ref"

    .line 457
    if-eq v4, v6, :cond_35

    .line 503
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v4, v6, :cond_6

    const/4 v4, 0x4

    .line 504
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 505
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3f

    .line 534
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 445
    :cond_31
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v42

    const/16 v4, 0xd

    .line 446
    move/from16 v0, v42

    if-eq v0, v4, :cond_32

    const/16 v4, 0x10

    .line 450
    move/from16 v0, v42

    if-ne v0, v4, :cond_30

    .line 451
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_c

    :cond_32
    const/16 v4, 0x10

    .line 447
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 597
    .end local v6    # "key":Ljava/lang/String;
    :cond_33
    :goto_d
    if-eqz p4, :cond_51

    .line 649
    :cond_34
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 650
    .local v11, "buildMethod":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_5f

    const/4 v4, 0x0

    .line 657
    :try_start_7
    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v12

    .line 664
    .local v12, "builtObj":Ljava/lang/Object;
    if-nez v13, :cond_61

    .line 667
    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 662
    return-object v12

    .end local v11    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v12    # "builtObj":Ljava/lang/Object;
    .restart local v6    # "key":Ljava/lang/String;
    :cond_35
    const/4 v4, 0x4

    .line 458
    :try_start_8
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 459
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v42

    const/4 v4, 0x4

    .line 460
    move/from16 v0, v42

    if-eq v0, v4, :cond_36

    .line 489
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v42 .. v42}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 461
    :cond_36
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v38

    .local v38, "ref":Ljava/lang/String;
    const-string/jumbo v4, "@"

    .line 462
    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string/jumbo v4, ".."

    .line 464
    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string/jumbo v4, "$"

    .line 472
    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 485
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v38

    invoke-direct {v4, v15, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 486
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_10
    const/16 v4, 0xd

    .line 492
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 493
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3d

    const/16 v4, 0x10

    .line 496
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 498
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 664
    if-nez v13, :cond_3e

    .line 667
    :goto_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 500
    return-object p4

    .line 463
    :cond_37
    :try_start_9
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_10

    .line 465
    :cond_38
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v37, v0

    .line 466
    .local v37, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v4, :cond_39

    .line 469
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 470
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_10

    .line 467
    :cond_39
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_10

    .line 473
    .end local v37    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3a
    move-object/from16 v39, v15

    .line 474
    .local v39, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_12
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v4, :cond_3b

    .line 478
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v4, :cond_3c

    .line 481
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 482
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_10

    .line 475
    :cond_3b
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v39, v0

    goto :goto_12

    .line 479
    :cond_3c
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_10

    .line 494
    .end local v39    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 665
    :cond_3e
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_11

    .line 506
    .end local v38    # "ref":Ljava/lang/String;
    :cond_3f
    :try_start_a
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v43

    .local v43, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    .line 507
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v14

    .line 518
    .local v14, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v14, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v16

    .local v16, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v44, 0x0

    .line 520
    .local v44, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v16, :cond_41

    .line 532
    .end local v44    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_13
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v4

    .line 664
    if-nez v13, :cond_45

    .line 667
    :goto_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 532
    return-object v4

    .line 510
    .end local v14    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v16    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_40
    :try_start_b
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1b

    .line 511
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_d

    .line 521
    .restart local v14    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v16    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v44    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_41
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v44

    .line 523
    .local v44, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 524
    .local v19, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v19, :cond_43

    .line 526
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v16

    goto :goto_13

    .line 524
    :cond_43
    if-nez v44, :cond_44

    .line 528
    :goto_15
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_44
    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v4

    if-nez v4, :cond_42

    goto :goto_15

    .line 665
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v44    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_14

    .line 539
    .end local v6    # "key":Ljava/lang/String;
    .end local v14    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v16    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v43    # "typeName":Ljava/lang/String;
    :cond_46
    if-nez v9, :cond_7

    .line 540
    :try_start_c
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 541
    if-eqz p4, :cond_47

    .line 544
    :goto_16
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    .local v13, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    goto/16 :goto_5

    .line 542
    .end local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_47
    new-instance v27, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .local v27, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v9, v27

    .end local v27    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_16

    .line 548
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_48
    if-eqz v45, :cond_4a

    .line 551
    if-eqz p4, :cond_4b

    .line 553
    if-eqz v26, :cond_4c

    .line 563
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    :cond_49
    :goto_17
    move-object/from16 v0, v30

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_33

    goto/16 :goto_6

    .line 549
    :cond_4a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 552
    :cond_4b
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 554
    :cond_4c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_49

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_49

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_49

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_49

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_49

    .line 560
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    .line 572
    .restart local v32    # "match":Z
    :cond_4d
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1b

    .line 573
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_d

    .line 579
    :cond_4e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v32    # "match":Z
    :cond_4f
    const/16 v4, 0x10

    .line 588
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto/16 :goto_d

    .line 592
    :cond_50
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    goto/16 :goto_b

    .line 598
    :cond_51
    if-eqz v9, :cond_52

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    .line 607
    .local v24, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    .line 608
    .local v40, "size":I
    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    .local v36, "params":[Ljava/lang/Object;
    const/16 v28, 0x0

    .line 609
    .local v28, "i":I
    :goto_18
    move/from16 v0, v28

    move/from16 v1, v40

    if-lt v0, v1, :cond_55

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v4, :cond_5e

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_34

    .line 642
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object p4

    goto/16 :goto_e

    .line 599
    .end local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v28    # "i":I
    .end local v36    # "params":[Ljava/lang/Object;
    .end local v40    # "size":I
    :cond_52
    :try_start_e
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object p4

    .line 600
    if-eqz v13, :cond_53

    .line 664
    :goto_19
    if-nez v13, :cond_54

    .line 667
    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 603
    return-object p4

    .line 601
    :cond_53
    :try_start_f
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v13

    .restart local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    goto :goto_19

    .line 665
    .end local v13    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_54
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1a

    .line 610
    .restart local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v28    # "i":I
    .restart local v36    # "params":[Ljava/lang/Object;
    .restart local v40    # "size":I
    :cond_55
    :try_start_10
    aget-object v23, v24, v28

    .line 611
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .line 612
    .local v35, "param":Ljava/lang/Object;
    if-eqz v35, :cond_57

    .line 630
    :cond_56
    :goto_1b
    aput-object v35, v36, v28

    .line 609
    add-int/lit8 v28, v28, 0x1

    goto :goto_18

    .line 613
    :cond_57
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v25, v0

    .line 614
    .local v25, "fieldType":Ljava/lang/reflect/Type;
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_58

    .line 616
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_59

    .line 618
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_5a

    .line 620
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_5b

    .line 622
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_5c

    .line 624
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_5d

    .line 626
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_56

    .line 627
    sget-object v35, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1b

    .line 615
    :cond_58
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    goto :goto_1b

    .line 617
    :cond_59
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v35

    goto :goto_1b

    :cond_5a
    const/4 v4, 0x0

    .line 619
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    goto :goto_1b

    :cond_5b
    const-wide/16 v4, 0x0

    .line 621
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    goto :goto_1b

    :cond_5c
    const/4 v4, 0x0

    .line 623
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    goto :goto_1b

    :cond_5d
    const-wide/16 v4, 0x0

    .line 625
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v35

    goto :goto_1b

    .line 635
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v25    # "fieldType":Ljava/lang/reflect/Type;
    .end local v35    # "param":Ljava/lang/Object;
    :cond_5e
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object p4

    goto/16 :goto_e

    .line 639
    :catch_0
    move-exception v17

    .line 637
    .local v17, "e":Ljava/lang/Exception;
    :try_start_12
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 638
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 645
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 644
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 664
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v28    # "i":I
    .end local v36    # "params":[Ljava/lang/Object;
    .end local v40    # "size":I
    .restart local v11    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_5f
    if-nez v13, :cond_60

    .line 667
    :goto_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 651
    return-object p4

    .line 665
    :cond_60
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1c

    .line 660
    :catch_2
    move-exception v17

    .line 659
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "build object error"

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 665
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v12    # "builtObj":Ljava/lang/Object;
    :cond_61
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_f

    .end local v11    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v12    # "builtObj":Ljava/lang/Object;
    .end local v22    # "fieldIndex":I
    .end local v33    # "matchField":Z
    .end local v45    # "valueParsed":Z
    :cond_62
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_7
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 194
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 195
    .local v9, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v24

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    const/4 v8, 0x0

    .line 201
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v14, v0

    .local v14, "size":I
    :goto_0
    if-lt v8, v14, :cond_1

    const/16 v24, 0x10

    .line 251
    move/from16 v0, v24

    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 253
    return-object p4

    .line 196
    .end local v8    # "i":I
    .end local v14    # "size":I
    :cond_0
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v25, "error"

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 202
    .restart local v8    # "i":I
    .restart local v14    # "size":I
    :cond_1
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    if-eq v8, v0, :cond_3

    const/16 v24, 0x2c

    :goto_1
    move/from16 v0, v24

    int-to-char v13, v0

    .line 203
    .local v13, "seperator":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v24, v0

    aget-object v7, v24, v8

    .line 204
    .local v7, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 205
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_4

    const-class v24, Ljava/lang/String;

    .line 208
    move-object/from16 v0, v24

    if-eq v6, v0, :cond_5

    .line 211
    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_6

    .line 214
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v24

    if-nez v24, :cond_7

    .line 230
    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_c

    .line 233
    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_d

    .line 236
    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v6, v0, :cond_e

    const-class v24, Ljava/util/Date;

    .line 239
    move-object/from16 v0, v24

    if-eq v6, v0, :cond_f

    :cond_2
    const/16 v24, 0xe

    .line 243
    move/from16 v0, v24

    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 244
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v19

    .line 245
    .local v19, "value":Ljava/lang/Object;
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v24, 0x5d

    .line 247
    move/from16 v0, v24

    if-eq v13, v0, :cond_10

    const/16 v24, 0x10

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    .line 201
    .end local v19    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "seperator":C
    :cond_3
    const/16 v24, 0x5d

    .line 202
    goto :goto_1

    .line 206
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v13    # "seperator":C
    :cond_4
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v18

    .line 207
    .local v18, "value":I
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_3

    .line 209
    .end local v18    # "value":I
    :cond_5
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v22

    .line 210
    .local v22, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 212
    .end local v22    # "value":Ljava/lang/String;
    :cond_6
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v20

    .line 213
    .local v20, "value":J
    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_3

    .line 215
    .end local v20    # "value":J
    :cond_7
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v24

    move/from16 v0, v24

    int-to-char v4, v0

    .local v4, "ch":C
    const/16 v24, 0x22

    .line 218
    move/from16 v0, v24

    if-ne v4, v0, :cond_9

    .line 219
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v9, v6, v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v19

    .line 229
    .restart local v19    # "value":Ljava/lang/Object;
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .end local v19    # "value":Ljava/lang/Object;
    :cond_9
    const/16 v24, 0x6e

    .line 218
    move/from16 v0, v24

    if-eq v4, v0, :cond_8

    const/16 v24, 0x30

    .line 220
    move/from16 v0, v24

    if-ge v4, v0, :cond_b

    .line 226
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_4

    .end local v19    # "value":Ljava/lang/Object;
    :cond_b
    const/16 v24, 0x39

    .line 220
    move/from16 v0, v24

    if-gt v4, v0, :cond_a

    .line 221
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v12

    .local v12, "ordinal":I
    move-object/from16 v24, v7

    .line 223
    check-cast v24, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 224
    .local v5, "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-virtual {v5, v12}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 231
    .end local v4    # "ch":C
    .end local v5    # "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    .end local v12    # "ordinal":I
    .end local v19    # "value":Ljava/lang/Object;
    :cond_c
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v23

    .line 232
    .local v23, "value":Z
    move-object/from16 v0, p4

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_3

    .line 234
    .end local v23    # "value":Z
    :cond_d
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v15

    .line 235
    .local v15, "value":F
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 237
    .end local v15    # "value":F
    :cond_e
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v16

    .line 238
    .local v16, "value":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 239
    .end local v16    # "value":D
    :cond_f
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v24

    const/16 v25, 0x31

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 240
    invoke-interface {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v10

    .line 241
    .local v10, "longValue":J
    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, v24

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v10    # "longValue":J
    .restart local v19    # "value":Ljava/lang/Object;
    :cond_10
    const/16 v24, 0xf

    .line 247
    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 754
    return v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 64
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    .line 69
    .local v3, "low":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .line 71
    .local v2, "high":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 87
    return-object v6

    .line 65
    .end local v2    # "high":I
    .end local v3    # "low":I
    :cond_0
    return-object v6

    .line 72
    .restart local v2    # "high":I
    .restart local v3    # "low":I
    :cond_1
    add-int v5, v3, v2

    ushr-int/lit8 v4, v5, 0x1

    .line 74
    .local v4, "mid":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 76
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "cmp":I
    if-ltz v0, :cond_2

    .line 80
    if-gtz v0, :cond_3

    .line 83
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v4

    return-object v5

    .line 79
    :cond_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 81
    :cond_3
    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 828
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v6, :cond_0

    .line 832
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 849
    return-object v9

    .line 829
    :cond_0
    return-object v9

    .line 832
    :cond_1
    aget-object v0, v6, v5

    .line 833
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 834
    .local v1, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v8, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v8, :cond_3

    .line 832
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 835
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 837
    .local v2, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 838
    .local v3, "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v8, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 842
    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4

    .line 843
    .local v4, "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v4, :cond_2

    .line 844
    return-object v4

    .line 839
    .end local v4    # "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_4
    return-object v2
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 673
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 675
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 677
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 689
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 691
    const/4 v2, 0x1

    return v2

    .line 678
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    return v3

    .line 679
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setter not found, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I

    .prologue
    .line 822
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 824
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 3
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 695
    if-eqz p1, :cond_2

    .line 699
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 701
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v3, :cond_3

    .line 723
    :cond_0
    :goto_0
    if-eqz v3, :cond_9

    .line 750
    :cond_1
    :goto_1
    return-object v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_2
    const/4 v10, 0x0

    .line 696
    return-object v10

    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_3
    const-string/jumbo v10, "is"

    .line 702
    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 704
    .local v9, "startsWithIs":Z
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_0

    aget-object v2, v11, v10

    .line 705
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 706
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v1, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 707
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 709
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 714
    if-nez v9, :cond_6

    .line 704
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 710
    :cond_5
    move-object v3, v2

    goto :goto_0

    .line 714
    :cond_6
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v13, :cond_8

    :cond_7
    const/4 v13, 0x2

    .line 716
    invoke-virtual {p1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 717
    move-object v3, v2

    goto :goto_0

    :cond_8
    const-class v13, Ljava/lang/Boolean;

    .line 714
    if-eq v1, v13, :cond_7

    goto :goto_3

    .line 724
    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v9    # "startsWithIs":Z
    :cond_9
    const/4 v8, 0x0

    .local v8, "snakeOrkebab":Z
    const/4 v7, 0x0

    .local v7, "key2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 726
    .local v6, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 738
    .end local v7    # "key2":Ljava/lang/String;
    :goto_5
    if-eqz v8, :cond_1

    .line 739
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 740
    if-nez v3, :cond_1

    .line 741
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v12, :cond_1

    aget-object v2, v11, v10

    .line 742
    .restart local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 741
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 727
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v7    # "key2":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .local v0, "ch":C
    const/16 v10, 0x5f

    .line 728
    if-eq v0, v10, :cond_b

    const/16 v10, 0x2d

    .line 732
    if-eq v0, v10, :cond_c

    .line 726
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 729
    :cond_b
    const/4 v8, 0x1

    const-string/jumbo v10, "_"

    const-string/jumbo v11, ""

    .line 730
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "key2":Ljava/lang/String;
    goto :goto_5

    .line 733
    .local v7, "key2":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x1

    const-string/jumbo v10, "-"

    const-string/jumbo v11, ""

    .line 734
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "key2":Ljava/lang/String;
    goto :goto_5

    .line 743
    .end local v0    # "ch":C
    .end local v7    # "key2":Ljava/lang/String;
    .restart local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_d
    move-object v3, v2

    goto/16 :goto_1
.end method
