.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "PrimitiveArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 18
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
    .line 29
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 31
    .local v14, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_0

    .line 36
    move-object/from16 v0, p2

    instance-of v15, v0, [I

    if-nez v15, :cond_1

    .line 49
    move-object/from16 v0, p2

    instance-of v15, v0, [S

    if-nez v15, :cond_4

    .line 62
    move-object/from16 v0, p2

    instance-of v15, v0, [J

    if-nez v15, :cond_7

    .line 76
    move-object/from16 v0, p2

    instance-of v15, v0, [Z

    if-nez v15, :cond_a

    .line 89
    move-object/from16 v0, p2

    instance-of v15, v0, [F

    if-nez v15, :cond_d

    .line 108
    move-object/from16 v0, p2

    instance-of v15, v0, [D

    if-nez v15, :cond_11

    .line 127
    move-object/from16 v0, p2

    instance-of v15, v0, [B

    if-nez v15, :cond_15

    .line 133
    check-cast p2, [C

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v9, p2

    check-cast v9, [C

    .line 134
    .local v9, "chars":[C
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 135
    return-void

    .line 32
    .end local v9    # "chars":[C
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 33
    return-void

    .line 37
    :cond_1
    check-cast p2, [I

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v5, p2

    check-cast v5, [I

    .local v5, "array":[I
    const/16 v15, 0x5b

    .line 38
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 39
    .local v10, "i":I
    :goto_0
    array-length v15, v5

    if-lt v10, v15, :cond_2

    const/16 v15, 0x5d

    .line 45
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 46
    return-void

    .line 40
    :cond_2
    if-nez v10, :cond_3

    .line 43
    :goto_1
    aget v15, v5, v10

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 39
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/16 v15, 0x2c

    .line 41
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 50
    .end local v5    # "array":[I
    .end local v10    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_4
    check-cast p2, [S

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v7, p2

    check-cast v7, [S

    .local v7, "array":[S
    const/16 v15, 0x5b

    .line 51
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 52
    .restart local v10    # "i":I
    :goto_2
    array-length v15, v7

    if-lt v10, v15, :cond_5

    const/16 v15, 0x5d

    .line 58
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 59
    return-void

    .line 53
    :cond_5
    if-nez v10, :cond_6

    .line 56
    :goto_3
    aget-short v15, v7, v10

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 52
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    const/16 v15, 0x2c

    .line 54
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 63
    .end local v7    # "array":[S
    .end local v10    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    check-cast p2, [J

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [J

    .local v6, "array":[J
    const/16 v15, 0x5b

    .line 65
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 66
    .restart local v10    # "i":I
    :goto_4
    array-length v15, v6

    if-lt v10, v15, :cond_8

    const/16 v15, 0x5d

    .line 72
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    return-void

    .line 67
    :cond_8
    if-nez v10, :cond_9

    .line 70
    :goto_5
    aget-wide v16, v6, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 66
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    const/16 v15, 0x2c

    .line 68
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 77
    .end local v6    # "array":[J
    .end local v10    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_a
    check-cast p2, [Z

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v8, p2

    check-cast v8, [Z

    .local v8, "array":[Z
    const/16 v15, 0x5b

    .line 78
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 79
    .restart local v10    # "i":I
    :goto_6
    array-length v15, v8

    if-lt v10, v15, :cond_b

    const/16 v15, 0x5d

    .line 85
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 86
    return-void

    .line 80
    :cond_b
    if-nez v10, :cond_c

    .line 83
    :goto_7
    aget-boolean v15, v8, v10

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    const/16 v15, 0x2c

    .line 81
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 90
    .end local v8    # "array":[Z
    .end local v10    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_d
    check-cast p2, [F

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [F

    .local v4, "array":[F
    const/16 v15, 0x5b

    .line 91
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 92
    .restart local v10    # "i":I
    :goto_8
    array-length v15, v4

    if-lt v10, v15, :cond_e

    const/16 v15, 0x5d

    .line 104
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 105
    return-void

    .line 93
    :cond_e
    if-nez v10, :cond_f

    .line 97
    :goto_9
    aget v11, v4, v10

    .line 98
    .local v11, "item":F
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_10

    .line 101
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 92
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .end local v11    # "item":F
    :cond_f
    const/16 v15, 0x2c

    .line 94
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    .line 99
    .restart local v11    # "item":F
    :cond_10
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_a

    .line 109
    .end local v4    # "array":[F
    .end local v10    # "i":I
    .end local v11    # "item":F
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_11
    check-cast p2, [D

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v3, p2

    check-cast v3, [D

    .local v3, "array":[D
    const/16 v15, 0x5b

    .line 110
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v10, 0x0

    .line 111
    .restart local v10    # "i":I
    :goto_b
    array-length v15, v3

    if-lt v10, v15, :cond_12

    const/16 v15, 0x5d

    .line 123
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 124
    return-void

    .line 112
    :cond_12
    if-nez v10, :cond_13

    .line 116
    :goto_c
    aget-wide v12, v3, v10

    .line 117
    .local v12, "item":D
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_14

    .line 120
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 111
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .end local v12    # "item":D
    :cond_13
    const/16 v15, 0x2c

    .line 113
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_c

    .line 118
    .restart local v12    # "item":D
    :cond_14
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_d

    .line 128
    .end local v3    # "array":[D
    .end local v10    # "i":I
    .end local v12    # "item":D
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_15
    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v2, p2

    check-cast v2, [B

    .line 129
    .local v2, "array":[B
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    .line 130
    return-void
.end method
