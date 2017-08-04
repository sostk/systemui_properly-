.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "constructor":Lcom/google/gson/internal/ObjectConstructor;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 201
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    .line 210
    iget-object v5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {v5}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v3

    .line 213
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 214
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 229
    return-object v3

    .line 206
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 207
    return-object v7

    .line 215
    .restart local v3    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 217
    .local v2, "field":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-nez v2, :cond_3

    .line 218
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    .end local v2    # "field":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 217
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "field":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-boolean v5, v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-eqz v5, :cond_2

    .line 220
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 224
    .end local v2    # "field":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 249
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 250
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 235
    return-void

    .line 240
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 241
    .local v0, "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    invoke-virtual {v0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 248
    .end local v0    # "boundField":Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
