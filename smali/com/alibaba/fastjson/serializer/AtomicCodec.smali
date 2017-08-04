.class public Lcom/alibaba/fastjson/serializer/AtomicCodec;
.super Ljava/lang/Object;
.source "AtomicCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

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
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    .line 95
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 101
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    const-class v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 103
    if-eq p2, v4, :cond_1

    .line 112
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .local v2, "atomicArray":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v3, 0x0

    .line 113
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 117
    return-object v2

    .line 96
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "atomicArray":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v4, 0x0

    .line 97
    return-object v4

    .line 104
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .local v1, "atomicArray":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    const/4 v3, 0x0

    .line 105
    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 109
    return-object v1

    .line 106
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "atomicArray":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .restart local v2    # "atomicArray":Ljava/util/concurrent/atomic/AtomicLongArray;
    :cond_3
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getLong(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 121
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 16
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

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v13, :cond_0

    .line 47
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v13, :cond_1

    .line 53
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v13, :cond_2

    .line 59
    if-eqz p2, :cond_4

    .line 64
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-nez v13, :cond_5

    move-object/from16 v3, p2

    .line 80
    check-cast v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 81
    .local v3, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v5

    .local v5, "len":I
    const/16 v13, 0x5b

    .line 82
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v4, 0x0

    .line 83
    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_8

    const/16 v13, 0x5d

    .line 90
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 91
    return-void

    .end local v3    # "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    .end local v4    # "i":I
    .end local v5    # "len":I
    :cond_0
    move-object/from16 v11, p2

    .line 42
    check-cast v11, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .local v11, "val":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 44
    return-void

    .end local v11    # "val":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_1
    move-object/from16 v12, p2

    .line 48
    check-cast v12, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .local v12, "val":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 50
    return-void

    .end local v12    # "val":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    move-object/from16 v10, p2

    .line 54
    check-cast v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .local v10, "val":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "false"

    :goto_1
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    return-void

    :cond_3
    const-string/jumbo v13, "true"

    goto :goto_1

    .line 60
    .end local v10    # "val":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_4
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 61
    return-void

    :cond_5
    move-object/from16 v2, p2

    .line 65
    check-cast v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 66
    .local v2, "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v5

    .restart local v5    # "len":I
    const/16 v13, 0x5b

    .line 67
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v4, 0x0

    .line 68
    .restart local v4    # "i":I
    :goto_2
    if-lt v4, v5, :cond_6

    const/16 v13, 0x5d

    .line 75
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 77
    return-void

    .line 69
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v7

    .line 70
    .local v7, "val":I
    if-nez v4, :cond_7

    .line 73
    :goto_3
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/16 v13, 0x2c

    .line 71
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 84
    .end local v2    # "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .end local v7    # "val":I
    .restart local v3    # "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    :cond_8
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v8

    .line 85
    .local v8, "val":J
    if-nez v4, :cond_9

    .line 88
    :goto_4
    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    const/16 v13, 0x2c

    .line 86
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4
.end method
