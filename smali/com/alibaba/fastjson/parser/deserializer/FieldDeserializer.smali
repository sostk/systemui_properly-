.class public abstract Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.super Ljava/lang/Object;
.source "FieldDeserializer.java"


# instance fields
.field protected beanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
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
    .line 25
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->clazz:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public abstract parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .prologue
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public setValue(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # J

    .prologue
    .line 46
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    if-eqz p2, :cond_2

    .line 61
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 62
    .local v7, "method":Ljava/lang/reflect/Method;
    if-nez v7, :cond_3

    .line 95
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 97
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_a

    .line 125
    if-nez v5, :cond_f

    .line 133
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 55
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 56
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    return-void

    .line 63
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    .line 91
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local p2    # "value":Ljava/lang/Object;
    :cond_4
    :goto_1
    return-void

    .line 64
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v8, v9, :cond_6

    .line 69
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v8, v9, :cond_7

    .line 74
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v8, v9, :cond_8

    const-class v8, Ljava/util/Map;

    .line 79
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    .line 85
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 86
    .local v3, "collection":Ljava/util/Collection;
    if-eqz v3, :cond_4

    .line 87
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v3, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 132
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set property error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v8, 0x0

    .line 65
    :try_start_2
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .local v1, "atomic":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v1, :cond_4

    .line 67
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .end local v1    # "atomic":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x0

    .line 70
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    .local v2, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v2, :cond_4

    .line 72
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_1

    .end local v2    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const/4 v8, 0x0

    .line 75
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v0, :cond_4

    .line 77
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v8, 0x0

    .line 80
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 81
    .local v6, "map":Ljava/util/Map;
    if-eqz v6, :cond_4

    .line 82
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v6, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 98
    .end local v6    # "map":Ljava/util/Map;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v8, v9, :cond_b

    .line 103
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v8, v9, :cond_c

    .line 108
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v8, v9, :cond_d

    const-class v8, Ljava/util/Map;

    .line 113
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 119
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 120
    .restart local v3    # "collection":Ljava/util/Collection;
    if-eqz v3, :cond_1

    .line 121
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v3, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 99
    .end local v3    # "collection":Ljava/util/Collection;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    .restart local v1    # "atomic":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v1, :cond_1

    .line 101
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "atomic":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    .restart local v2    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v2, :cond_1

    .line 106
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_0

    .line 109
    .end local v2    # "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .restart local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v0, :cond_1

    .line 111
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "atomic":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 115
    .restart local v6    # "map":Ljava/util/Map;
    if-eqz v6, :cond_1

    .line 116
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v6, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 126
    .end local v6    # "map":Ljava/util/Map;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    invoke-virtual {v5, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public setValue(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .prologue
    .line 38
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method
