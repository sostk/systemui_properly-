.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p0, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v4, 0x1

    .line 46
    .local v4, "isEmpty":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 47
    const/4 v4, 0x0

    .line 48
    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v5, p0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v5

    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/EOFException;
    if-nez v4, :cond_0

    .line 58
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 55
    :cond_0
    sget-object v5, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v5

    .line 58
    .end local v1    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1
    .param p0, "element"    # Lcom/google/gson/JsonElement;
    .param p1, "writer"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
