.class public Lcom/alibaba/fastjson/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# instance fields
.field private access:I

.field firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field index:I

.field private interfaceCount:I

.field private interfaces:[I

.field items:[Lcom/alibaba/fastjson/asm/Item;

.field final key:Lcom/alibaba/fastjson/asm/Item;

.field final key2:Lcom/alibaba/fastjson/asm/Item;

.field final key3:Lcom/alibaba/fastjson/asm/Item;

.field lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field private name:I

.field final pool:Lcom/alibaba/fastjson/asm/ByteVector;

.field private superName:I

.field thisName:Ljava/lang/String;

.field threshold:I

.field typeTable:[Lcom/alibaba/fastjson/asm/Item;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>(I)V

    .line 148
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    .line 152
    new-instance v0, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v0, 0x100

    .line 153
    new-array v0, v0, [Lcom/alibaba/fastjson/asm/Item;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 155
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    .line 156
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    .line 157
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    .line 158
    return-void
.end method

.method private get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "key"    # Lcom/alibaba/fastjson/asm/Item;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 384
    .local v0, "i":Lcom/alibaba/fastjson/asm/Item;
    :goto_0
    if-nez v0, :cond_0

    .line 387
    :goto_1
    return-object v0

    .line 384
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    if-eq v1, v2, :cond_2

    .line 385
    :cond_1
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/Item;->isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method private newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 344
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 346
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-object v0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 348
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 349
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0
.end method

.method private put(Lcom/alibaba/fastjson/asm/Item;)V
    .locals 12
    .param p1, "i"    # Lcom/alibaba/fastjson/asm/Item;

    .prologue
    .line 396
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    if-gt v7, v8, :cond_0

    .line 413
    :goto_0
    iget v7, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v8, v8

    rem-int v0, v7, v8

    .line 414
    .local v0, "index":I
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v7, v7, v0

    iput-object v7, p1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 415
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aput-object p1, v7, v0

    .line 416
    return-void

    .line 397
    .end local v0    # "index":I
    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v4, v7

    .line 398
    .local v4, "ll":I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v6, v7, 0x1

    .line 399
    .local v6, "nl":I
    new-array v5, v6, [Lcom/alibaba/fastjson/asm/Item;

    .line 400
    .local v5, "newItems":[Lcom/alibaba/fastjson/asm/Item;
    add-int/lit8 v3, v4, -0x1

    .local v3, "l":I
    :goto_1
    if-gez v3, :cond_1

    .line 410
    iput-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 411
    int-to-double v8, v6

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    goto :goto_0

    .line 401
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v1, v7, v3

    .line 402
    .local v1, "j":Lcom/alibaba/fastjson/asm/Item;
    :goto_2
    if-nez v1, :cond_2

    .line 400
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 403
    :cond_2
    iget v7, v1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    array-length v8, v5

    rem-int v0, v7, v8

    .line 404
    .restart local v0    # "index":I
    iget-object v2, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 405
    .local v2, "k":Lcom/alibaba/fastjson/asm/Item;
    aget-object v7, v5, v0

    iput-object v7, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 406
    aput-object v1, v5, v0

    .line 407
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 280
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 282
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-object v0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 284
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 285
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
    .locals 6
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 247
    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 258
    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 260
    instance-of v3, p1, Lcom/alibaba/fastjson/asm/Type;

    if-nez v3, :cond_3

    .line 264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    .local v2, "val":I
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/asm/Item;->set(I)V

    .line 251
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 252
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_1

    .line 257
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 254
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v3, v4}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 255
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0

    .line 259
    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    .end local v2    # "val":I
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_2
    check-cast p1, Ljava/lang/String;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    return-object v3

    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_3
    move-object v1, p1

    .line 261
    check-cast v1, Lcom/alibaba/fastjson/asm/Type;

    .line 262
    .local v1, "t":Lcom/alibaba/fastjson/asm/Type;
    iget v3, v1, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    return-object v3

    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x9

    .line 300
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 302
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-object v0

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    iget v1, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    .local v1, "s1":I
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    iget v2, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 305
    .local v2, "s2":I
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 306
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v3, v4}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 307
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
    .locals 6
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .prologue
    .line 323
    if-nez p4, :cond_0

    const/16 v3, 0xa

    .line 324
    .local v3, "type":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v4, v3, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 326
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_1

    .line 333
    :goto_1
    return-object v0

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    .end local v3    # "type":I
    :cond_0
    const/16 v3, 0xb

    .line 323
    goto :goto_0

    .line 328
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    .restart local v3    # "type":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v4

    iget v1, v4, Lcom/alibaba/fastjson/asm/Item;->index:I

    .local v1, "s1":I
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v4

    iget v2, v4, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 329
    .local v2, "s2":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v4, v3, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 330
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v4, v5}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 331
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_1
.end method

.method public newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc

    .line 363
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v3, v4, p1, p2, v5}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 365
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    .local v1, "s1":I
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    .line 368
    .local v2, "s2":I
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 369
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v3, v4}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 370
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 271
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-eqz v0, :cond_0

    .line 276
    :goto_0
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 273
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 274
    .restart local v0    # "result":Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 190
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v7, 0x18

    .local v6, "size":I
    const/4 v3, 0x0

    .line 192
    .local v3, "nbFields":I
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 193
    .local v0, "fb":Lcom/alibaba/fastjson/asm/FieldWriter;
    :goto_0
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 199
    .local v4, "nbMethods":I
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 200
    .local v2, "mb":Lcom/alibaba/fastjson/asm/MethodWriter;
    :goto_1
    if-nez v2, :cond_1

    .line 206
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v7, v7, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v6, v7

    .line 209
    new-instance v5, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>(I)V

    .local v5, "out":Lcom/alibaba/fastjson/asm/ByteVector;
    const v7, -0x35014542    # -8346975.0f

    .line 210
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 211
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v8, v8, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v9, v9, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v7, v8, v10, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 213
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    const v8, -0x60001

    and-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 214
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    const/4 v1, 0x0

    .line 215
    .local v1, "i":I
    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-lt v1, v7, :cond_2

    .line 218
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 220
    :goto_3
    if-nez v0, :cond_3

    .line 224
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 225
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 226
    :goto_4
    if-nez v2, :cond_4

    .line 230
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 231
    iget-object v7, v5, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-object v7

    .line 194
    .end local v1    # "i":I
    .end local v2    # "mb":Lcom/alibaba/fastjson/asm/MethodWriter;
    .end local v4    # "nbMethods":I
    .end local v5    # "out":Lcom/alibaba/fastjson/asm/ByteVector;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/FieldWriter;->getSize()I

    move-result v7

    add-int/2addr v6, v7

    .line 196
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_0

    .line 201
    .restart local v2    # "mb":Lcom/alibaba/fastjson/asm/MethodWriter;
    .restart local v4    # "nbMethods":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 202
    invoke-virtual {v2}, Lcom/alibaba/fastjson/asm/MethodWriter;->getSize()I

    move-result v7

    add-int/2addr v6, v7

    .line 203
    iget-object v2, v2, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_1

    .line 216
    .restart local v1    # "i":I
    .restart local v5    # "out":Lcom/alibaba/fastjson/asm/ByteVector;
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget v7, v7, v1

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    :cond_3
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/asm/FieldWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 222
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_3

    .line 227
    :cond_4
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/asm/MethodWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 228
    iget-object v2, v2, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_4
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    .line 166
    iput p2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    .line 167
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/fastjson/asm/Item;->index:I

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    .line 168
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 169
    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/fastjson/asm/Item;->index:I

    :cond_0
    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    .line 170
    if-nez p5, :cond_2

    .line 177
    :cond_1
    return-void

    .line 170
    :cond_2
    array-length v1, p5

    if-lez v1, :cond_1

    .line 171
    array-length v1, p5

    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    .line 172
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/fastjson/asm/Item;->index:I

    aput v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
