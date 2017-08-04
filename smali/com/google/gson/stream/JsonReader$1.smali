.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    instance-of v1, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-nez v1, :cond_0

    .line 1591
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1592
    .local v0, "p":I
    if-eqz v0, :cond_1

    :goto_0
    const/16 v1, 0xd

    .line 1595
    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    .line 1597
    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    .line 1599
    if-eq v0, v1, :cond_4

    .line 1602
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1603
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1588
    .end local v0    # "p":I
    :cond_0
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1589
    return-void

    .line 1593
    .restart local v0    # "p":I
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    .line 1596
    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1605
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x8

    .line 1598
    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    .line 1600
    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1
.end method
