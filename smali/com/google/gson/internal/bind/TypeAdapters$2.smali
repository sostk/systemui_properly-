.class Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 10
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v8, v9, :cond_0

    .line 99
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 100
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    .line 103
    .local v5, "tokenType":Lcom/google/gson/stream/JsonToken;
    :goto_0
    sget-object v8, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v8, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 131
    return-object v0

    .line 95
    .end local v0    # "bitset":Ljava/util/BitSet;
    .end local v2    # "i":I
    .end local v5    # "tokenType":Lcom/google/gson/stream/JsonToken;
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v6, 0x0

    .line 96
    return-object v6

    .line 105
    .restart local v0    # "bitset":Ljava/util/BitSet;
    .restart local v2    # "i":I
    .restart local v5    # "tokenType":Lcom/google/gson/stream/JsonToken;
    :cond_1
    sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v5}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 122
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid bitset value type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 107
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    if-nez v8, :cond_2

    move v3, v6

    .line 124
    .local v3, "set":Z
    :goto_1
    if-nez v3, :cond_4

    .line 127
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    goto :goto_0

    .end local v3    # "set":Z
    :cond_2
    move v3, v7

    .line 107
    goto :goto_1

    .line 110
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    .restart local v3    # "set":Z
    goto :goto_1

    .line 113
    .end local v3    # "set":Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    move v3, v6

    .restart local v3    # "set":Z
    :goto_3
    goto :goto_1

    .end local v3    # "set":Z
    :cond_3
    move v3, v7

    goto :goto_3

    .line 119
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "stringValue":Ljava/lang/String;
    .restart local v3    # "set":Z
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    const/4 v0, 0x0

    .line 141
    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 146
    return-void

    .line 136
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 137
    return-void

    .line 142
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 143
    .local v1, "value":I
    :goto_1
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "value":I
    :cond_2
    const/4 v1, 0x1

    .line 142
    goto :goto_1
.end method
