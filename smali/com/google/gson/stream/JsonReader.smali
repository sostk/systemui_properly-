.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ")]}\'\n"

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1585
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1607
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/16 v0, 0x400

    .line 238
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1403
    return-void

    :cond_0
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1401
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1568
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1570
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1574
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1581
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1582
    return-void

    .line 1570
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    return-void

    .line 1575
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1576
    :cond_3
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1276
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1277
    .local v0, "buffer":[C
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1278
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ne v2, v3, :cond_1

    .line 1282
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1285
    :goto_0
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1287
    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1301
    return v6

    .line 1279
    .end local v1    # "total":I
    :cond_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1280
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1288
    .restart local v1    # "total":I
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1291
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-eqz v2, :cond_4

    .line 1297
    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    .line 1298
    const/4 v2, 0x1

    return v2

    .line 1291
    :cond_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v2, :cond_3

    aget-char v2, v0, v6

    const v3, 0xfeff

    if-ne v2, v3, :cond_3

    .line 1292
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1293
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1294
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    sparse-switch p1, :sswitch_data_0

    .line 765
    const/4 v0, 0x1

    return v0

    .line 751
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 763
    :sswitch_1
    const/4 v0, 0x0

    return v0

    .line 745
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private locationString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1449
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v2, 0x1

    .line 1450
    .local v1, "line":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 1451
    .local v0, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1320
    .local v0, "buffer":[C
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1321
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1323
    .local v3, "l":I
    :goto_0
    if-eq v4, v3, :cond_1

    .line 1332
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .local v1, "c":I
    const/16 v7, 0xa

    .line 1333
    if-eq v1, v7, :cond_2

    const/16 v7, 0x20

    .line 1337
    if-ne v1, v7, :cond_3

    :cond_0
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1324
    .end local v1    # "c":I
    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    .line 1325
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1328
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1329
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    .line 1334
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_2
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1335
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1336
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0xd

    .line 1337
    if-eq v1, v7, :cond_0

    const/16 v7, 0x9

    if-eq v1, v7, :cond_4

    const/16 v7, 0x2f

    .line 1341
    if-eq v1, v7, :cond_5

    const/16 v7, 0x23

    .line 1376
    if-eq v1, v7, :cond_9

    .line 1388
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1389
    return v1

    :cond_4
    move v4, v5

    .line 1338
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1342
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_5
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1343
    if-eq v5, v3, :cond_7

    .line 1352
    :cond_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1353
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v7, v0, v7

    int-to-char v6, v7

    .line 1354
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    .line 1374
    return v1

    .line 1344
    .end local v6    # "peek":C
    :cond_7
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    .line 1345
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1346
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1347
    if-nez v2, :cond_6

    .line 1348
    return v1

    .line 1357
    .end local v2    # "charsLoaded":Z
    .restart local v6    # "peek":C
    :sswitch_0
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string/jumbo v7, "*/"

    .line 1358
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1361
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1362
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_8
    const-string/jumbo v7, "Unterminated comment"

    .line 1359
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1367
    :sswitch_1
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1368
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1369
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1370
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1377
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_9
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1383
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1384
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1385
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1386
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1392
    .end local v1    # "c":I
    :cond_a
    if-nez p1, :cond_b

    const/4 v7, -0x1

    .line 1395
    return v7

    .line 1393
    :cond_b
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "End of input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1354
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 988
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 991
    .local v4, "p":I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 993
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 994
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-lt v5, v3, :cond_1

    .line 1014
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1015
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    .line 1016
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Unterminated string"

    .line 1017
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 995
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 997
    .local v2, "c":I
    if-eq v2, p1, :cond_2

    const/16 v7, 0x5c

    .line 1001
    if-eq v2, v7, :cond_3

    const/16 v7, 0xa

    .line 1008
    if-eq v2, v7, :cond_4

    :goto_1
    move v5, v4

    .line 1012
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 998
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 999
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1002
    :cond_3
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1003
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1006
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1007
    move v6, v4

    goto :goto_1

    .line 1009
    :cond_4
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1010
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1032
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, v4, :cond_1

    .line 1056
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 1065
    if-eqz v0, :cond_3

    .line 1068
    :goto_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1069
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1071
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    :goto_2
    :sswitch_0
    if-eqz v0, :cond_4

    .line 1080
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "result":Ljava/lang/String;
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1084
    return-object v2

    .line 1033
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_2

    .line 1057
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 1066
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1078
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_3

    .line 1033
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 599
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    int-to-char v0, v6

    .local v0, "c":C
    const/16 v6, 0x74

    .line 603
    if-ne v0, v6, :cond_2

    :cond_0
    const-string/jumbo v2, "true"

    .local v2, "keyword":Ljava/lang/String;
    const-string/jumbo v3, "TRUE"

    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 620
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    const/4 v1, 0x1

    .line 621
    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_7

    .line 631
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_c

    :cond_1
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 632
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-nez v6, :cond_d

    .line 637
    :goto_2
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 638
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :cond_2
    const/16 v6, 0x54

    .line 603
    if-eq v0, v6, :cond_0

    const/16 v6, 0x66

    .line 607
    if-ne v0, v6, :cond_4

    :cond_3
    const-string/jumbo v2, "false"

    .restart local v2    # "keyword":Ljava/lang/String;
    const-string/jumbo v3, "FALSE"

    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .line 610
    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_4
    const/16 v6, 0x46

    .line 607
    if-eq v0, v6, :cond_3

    const/16 v6, 0x6e

    .line 611
    if-ne v0, v6, :cond_6

    :cond_5
    const-string/jumbo v2, "null"

    .restart local v2    # "keyword":Ljava/lang/String;
    const-string/jumbo v3, "NULL"

    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .line 614
    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_6
    const/16 v6, 0x4e

    .line 611
    if-eq v0, v6, :cond_5

    .line 616
    return v8

    .line 622
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_7
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_a

    .line 625
    :cond_8
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    aget-char v6, v6, v7

    int-to-char v0, v6

    .line 626
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_b

    .line 621
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 622
    :cond_a
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 623
    return v8

    .line 626
    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v0, v6, :cond_9

    .line 627
    return v8

    .line 631
    :cond_c
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 633
    :cond_d
    return v8
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 644
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 645
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 648
    .local v12, "value":J
    const/4 v8, 0x0

    .line 649
    .local v8, "negative":Z
    const/4 v4, 0x1

    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .local v7, "last":I
    const/4 v5, 0x0

    .line 656
    .end local v4    # "fitsInLong":Z
    .local v5, "i":I
    :goto_0
    add-int v14, v9, v5

    if-eq v14, v6, :cond_1

    .line 669
    :goto_1
    add-int v14, v9, v5

    aget-char v14, v2, v14

    int-to-char v3, v14

    .line 670
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    const/16 v14, 0x30

    .line 705
    if-ge v3, v14, :cond_9

    .line 706
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    .line 709
    return v14

    .line 657
    .end local v3    # "c":C
    :cond_1
    array-length v14, v2

    if-eq v5, v14, :cond_2

    .line 662
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 665
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 666
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 660
    return v14

    .line 672
    .restart local v3    # "c":C
    :sswitch_0
    if-eqz v7, :cond_3

    const/4 v14, 0x5

    .line 676
    if-eq v7, v14, :cond_4

    const/4 v14, 0x0

    .line 680
    return v14

    .line 673
    :cond_3
    const/4 v8, 0x1

    const/4 v7, 0x1

    .line 655
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    .line 677
    goto :goto_2

    :sswitch_1
    const/4 v14, 0x5

    .line 683
    if-eq v7, v14, :cond_5

    const/4 v14, 0x0

    .line 687
    return v14

    :cond_5
    const/4 v7, 0x6

    .line 684
    goto :goto_2

    :sswitch_2
    const/4 v14, 0x2

    .line 691
    if-ne v7, v14, :cond_7

    :cond_6
    const/4 v7, 0x5

    .line 692
    goto :goto_2

    :cond_7
    const/4 v14, 0x4

    .line 691
    if-eq v7, v14, :cond_6

    const/4 v14, 0x0

    .line 695
    return v14

    :sswitch_3
    const/4 v14, 0x2

    .line 698
    if-eq v7, v14, :cond_8

    const/4 v14, 0x0

    .line 702
    return v14

    :cond_8
    const/4 v7, 0x3

    .line 699
    goto :goto_2

    :cond_9
    const/16 v14, 0x39

    .line 705
    if-gt v3, v14, :cond_0

    const/4 v14, 0x1

    .line 711
    if-ne v7, v14, :cond_b

    .line 712
    :cond_a
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    const/4 v7, 0x2

    .line 713
    goto :goto_2

    .line 711
    :cond_b
    if-eqz v7, :cond_a

    const/4 v14, 0x2

    .line 714
    if-eq v7, v14, :cond_d

    const/4 v14, 0x3

    .line 722
    if-eq v7, v14, :cond_13

    const/4 v14, 0x5

    .line 724
    if-ne v7, v14, :cond_14

    :cond_c
    const/4 v7, 0x7

    .line 725
    goto :goto_2

    :cond_d
    const-wide/16 v14, 0x0

    .line 715
    cmp-long v14, v12, v14

    if-nez v14, :cond_e

    const/4 v14, 0x0

    .line 716
    return v14

    :cond_e
    const-wide/16 v14, 0xa

    .line 718
    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    .line 719
    cmp-long v14, v12, v14

    if-lez v14, :cond_10

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_f

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_11

    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_12

    :cond_f
    const/4 v14, 0x1

    :goto_5
    and-int/2addr v4, v14

    .line 721
    .local v4, "fitsInLong":Z
    move-wide v12, v10

    goto :goto_2

    .line 719
    .end local v4    # "fitsInLong":Z
    :cond_10
    const/4 v14, 0x0

    goto :goto_3

    :cond_11
    const/4 v14, 0x0

    goto :goto_4

    :cond_12
    const/4 v14, 0x0

    goto :goto_5

    .end local v10    # "newValue":J
    :cond_13
    const/4 v7, 0x4

    .line 723
    goto :goto_2

    :cond_14
    const/4 v14, 0x6

    .line 724
    if-eq v7, v14, :cond_c

    goto :goto_2

    .end local v3    # "c":C
    :cond_15
    const/4 v14, 0x2

    .line 731
    if-eq v7, v14, :cond_18

    :cond_16
    const/4 v14, 0x2

    .line 735
    if-ne v7, v14, :cond_1b

    .line 737
    :cond_17
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v14, 0x10

    .line 738
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0x10

    return v14

    .line 731
    :cond_18
    if-eqz v4, :cond_16

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_19

    if-eqz v8, :cond_16

    .line 732
    :cond_19
    if-nez v8, :cond_1a

    neg-long v12, v12

    .end local v12    # "value":J
    :cond_1a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 733
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v14, 0xf

    .line 734
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0xf

    return v14

    .restart local v12    # "value":J
    :cond_1b
    const/4 v14, 0x4

    .line 735
    if-eq v7, v14, :cond_17

    const/4 v14, 0x7

    if-eq v7, v14, :cond_17

    const/4 v14, 0x0

    .line 740
    return v14

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 1256
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 1267
    :goto_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v3, v4

    .line 1268
    return-void

    .line 1257
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 1258
    .local v2, "newStack":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 1259
    .local v0, "newPathIndices":[I
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 1260
    .local v1, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1264
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1265
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    goto :goto_0
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1495
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-eq v5, v6, :cond_1

    .line 1499
    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v5, v5, v6

    int-to-char v2, v5

    .line 1500
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v5, "Invalid escape sequence"

    .line 1550
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .end local v2    # "escaped":C
    :cond_1
    const/4 v5, 0x1

    .line 1495
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated escape sequence"

    .line 1496
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1502
    .restart local v2    # "escaped":C
    :sswitch_0
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v5, v6, :cond_3

    .line 1506
    :cond_2
    const/4 v4, 0x0

    .line 1507
    .local v4, "result":C
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .end local v4    # "result":C
    .local v1, "end":I
    :goto_0
    if-lt v3, v1, :cond_4

    .line 1520
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1521
    return v4

    .line 1502
    .end local v1    # "end":I
    .end local v3    # "i":I
    :cond_3
    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Unterminated escape sequence"

    .line 1503
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1508
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v5, v5, v3

    int-to-char v0, v5

    .line 1509
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v5, v5

    int-to-char v4, v5

    .local v4, "result":C
    const/16 v5, 0x30

    .line 1510
    if-ge v0, v5, :cond_8

    :cond_5
    const/16 v5, 0x61

    .line 1512
    if-ge v0, v5, :cond_9

    :cond_6
    const/16 v5, 0x41

    .line 1514
    if-ge v0, v5, :cond_a

    .line 1517
    :cond_7
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const/16 v5, 0x39

    .line 1510
    if-gt v0, v5, :cond_5

    .line 1511
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    .line 1507
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    const/16 v5, 0x66

    .line 1512
    if-gt v0, v5, :cond_6

    .line 1513
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    goto :goto_1

    :cond_a
    const/16 v5, 0x46

    .line 1514
    if-gt v0, v5, :cond_7

    .line 1515
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v5, v5

    int-to-char v4, v5

    goto :goto_1

    .line 1524
    .end local v0    # "c":C
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v5, 0x9

    return v5

    .line 1527
    :sswitch_2
    const/16 v5, 0x8

    return v5

    .line 1530
    :sswitch_3
    const/16 v5, 0xa

    return v5

    .line 1533
    :sswitch_4
    const/16 v5, 0xd

    return v5

    .line 1536
    :sswitch_5
    const/16 v5, 0xc

    return v5

    .line 1539
    :sswitch_6
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1540
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1547
    :sswitch_7
    return v2

    .line 1500
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1091
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1092
    .local v3, "p":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1094
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 1109
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v5, 0x1

    .line 1110
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated string"

    .line 1111
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1095
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1096
    .local v1, "c":I
    if-eq v1, p1, :cond_2

    const/16 v5, 0x5c

    .line 1099
    if-eq v1, v5, :cond_3

    const/16 v5, 0xa

    .line 1104
    if-eq v1, v5, :cond_4

    :goto_1
    move v4, v3

    .line 1108
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1097
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1098
    return-void

    .line 1100
    :cond_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1101
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1102
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1103
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    .line 1105
    :cond_4
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1106
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1428
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    .line 1429
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    .line 1434
    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1439
    const/4 v1, 0x1

    return v1

    .line 1428
    .end local v0    # "c":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1441
    return v3

    .line 1430
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1431
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1428
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1435
    .restart local v0    # "c":I
    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_2

    .line 1412
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    int-to-char v0, v1

    .local v0, "c":C
    const/16 v1, 0xa

    .line 1413
    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    .line 1417
    if-ne v0, v1, :cond_0

    .line 1421
    .end local v0    # "c":C
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    .line 1411
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1414
    .restart local v0    # "c":C
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1415
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    const/4 v0, 0x0

    .line 1117
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    .line 1140
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    .line 1141
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    return-void

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1124
    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1136
    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1137
    return-void

    .line 1118
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x3

    .line 345
    if-eq v0, v1, :cond_1

    .line 350
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 346
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 348
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 352
    return-void
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 378
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    .line 381
    if-eq v0, v1, :cond_1

    .line 385
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 382
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 383
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 387
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1208
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1209
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    .line 1210
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1211
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1212
    return-void
.end method

.method doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 462
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v3, v4

    .line 463
    .local v1, "peekStack":I
    if-eq v1, v6, :cond_1

    .line 465
    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    .line 478
    if-ne v1, v3, :cond_4

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v8, v3, v4

    .line 481
    if-eq v1, v9, :cond_5

    .line 494
    :goto_0
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 495
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 509
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 510
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "Expected name"

    .line 513
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 464
    .end local v0    # "c":I
    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v7, v3, v4

    .line 549
    :cond_2
    :goto_1
    :pswitch_0
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 550
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 576
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 579
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 580
    .local v2, "result":I
    if-nez v2, :cond_12

    .line 584
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 585
    if-nez v2, :cond_13

    .line 589
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 593
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xa

    .line 594
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xa

    return v3

    .line 467
    .end local v0    # "c":I
    .end local v2    # "result":I
    :cond_3
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 468
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    const-string/jumbo v3, "Unterminated array"

    .line 476
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 470
    :sswitch_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 472
    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    .line 478
    .end local v0    # "c":I
    :cond_4
    if-eq v1, v9, :cond_0

    .line 516
    if-eq v1, v8, :cond_8

    const/4 v3, 0x6

    .line 532
    if-eq v1, v3, :cond_b

    const/4 v3, 0x7

    .line 537
    if-eq v1, v3, :cond_d

    const/16 v3, 0x8

    .line 545
    if-ne v1, v3, :cond_2

    .line 546
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 482
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 483
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    const-string/jumbo v3, "Unterminated object"

    .line 491
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 485
    :sswitch_4
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    .line 487
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_0

    :sswitch_6
    const/16 v3, 0xd

    .line 497
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xd

    return v3

    .line 499
    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xc

    .line 500
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xc

    return v3

    .line 502
    :sswitch_8
    if-ne v1, v9, :cond_6

    const-string/jumbo v3, "Expected name"

    .line 505
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 503
    :cond_6
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_7
    const/16 v3, 0xe

    .line 511
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xe

    return v3

    .line 517
    .end local v0    # "c":I
    :cond_8
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v9, v3, v4

    .line 519
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 520
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string/jumbo v3, "Expected \':\'"

    .line 530
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 524
    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 525
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    .line 526
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    .line 525
    :cond_a
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    .line 533
    .end local v0    # "c":I
    :cond_b
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_c

    .line 536
    :goto_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x7

    aput v5, v3, v4

    goto/16 :goto_1

    .line 534
    :cond_c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    goto :goto_2

    .line 538
    :cond_d
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .restart local v0    # "c":I
    const/4 v3, -0x1

    .line 539
    if-eq v0, v3, :cond_e

    .line 542
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 543
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x11

    .line 540
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x11

    return v3

    .line 552
    :sswitch_9
    if-eq v1, v6, :cond_10

    .line 559
    :sswitch_a
    if-ne v1, v6, :cond_11

    .line 560
    :cond_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 561
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x7

    .line 562
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x7

    return v3

    .line 553
    :cond_10
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 559
    :cond_11
    if-eq v1, v7, :cond_f

    const-string/jumbo v3, "Unexpected value"

    .line 564
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 567
    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0x8

    .line 568
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x8

    return v3

    :sswitch_c
    const/16 v3, 0x9

    .line 570
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x9

    return v3

    :sswitch_d
    const/4 v3, 0x3

    .line 572
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x3

    return v3

    .line 574
    :sswitch_e
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    .line 581
    .restart local v2    # "result":I
    :cond_12
    return v2

    .line 586
    :cond_13
    return v2

    :cond_14
    const-string/jumbo v3, "Expected value"

    .line 590
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 550
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 468
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_3
        0x5d -> :sswitch_2
    .end sparse-switch

    .line 483
    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_5
        0x7d -> :sswitch_4
    .end sparse-switch

    .line 520
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 359
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 360
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x4

    .line 363
    if-eq v0, v1, :cond_1

    .line 368
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 364
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 365
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 366
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 370
    return-void
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 395
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x2

    .line 398
    if-eq v0, v1, :cond_1

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 399
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 400
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 401
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 402
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 406
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1460
    .local v0, "i":I
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1461
    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1460
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :pswitch_1
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1470
    :pswitch_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 1472
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 413
    .local v0, "p":I
    if-eqz v0, :cond_1

    :goto_0
    const/4 v2, 0x2

    .line 416
    if-ne v0, v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    .line 416
    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 840
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x5

    .line 844
    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    .line 848
    if-eq v0, v1, :cond_2

    .line 853
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 845
    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 846
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 847
    const/4 v1, 0x1

    return v1

    .line 849
    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 850
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 851
    return v4
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 886
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 887
    .local v0, "p":I
    if-eqz v0, :cond_2

    :goto_0
    const/16 v1, 0xf

    .line 891
    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    .line 897
    if-eq v0, v1, :cond_4

    .line 900
    if-ne v0, v4, :cond_5

    .line 901
    :cond_0
    if-eq v0, v4, :cond_6

    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 908
    :cond_1
    :goto_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 909
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 910
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v1, :cond_8

    :goto_3
    const/4 v1, 0x0

    .line 914
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 915
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 916
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 917
    return-wide v2

    .line 888
    .end local v2    # "result":D
    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 892
    :cond_3
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 893
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 894
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v4, v4

    return-wide v4

    .line 898
    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 899
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x9

    .line 900
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    .line 902
    if-eq v0, v1, :cond_7

    .line 904
    if-eq v0, v8, :cond_1

    .line 905
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v1, 0x27

    .line 901
    goto/16 :goto_1

    .line 903
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    .line 910
    .restart local v2    # "result":D
    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 911
    :cond_9
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 912
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 910
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_3
.end method

.method public nextInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 1155
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1156
    .local v2, "p":I
    if-eqz v2, :cond_1

    :goto_0
    const/16 v4, 0xf

    .line 1161
    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    .line 1171
    if-eq v2, v4, :cond_4

    .line 1174
    if-ne v2, v5, :cond_5

    .line 1175
    :cond_0
    if-eq v2, v6, :cond_6

    .line 1178
    if-eq v2, v5, :cond_7

    const/16 v4, 0x22

    :goto_1
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1181
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "result":I
    const/4 v4, 0x0

    .line 1182
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1183
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    return v3

    .line 1157
    .end local v3    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    goto :goto_0

    .line 1162
    :cond_2
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v4

    .line 1163
    .restart local v3    # "result":I
    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 1164
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1166
    :cond_3
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1167
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 1168
    return v3

    .line 1172
    .end local v3    # "result":I
    :cond_4
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1173
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_3
    const/16 v4, 0xb

    .line 1192
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1193
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1194
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1195
    .restart local v3    # "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_8

    .line 1196
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_5
    const/16 v4, 0x9

    .line 1174
    if-eq v2, v4, :cond_0

    if-eq v2, v6, :cond_0

    .line 1189
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1176
    :cond_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const/16 v4, 0x27

    .line 1178
    goto/16 :goto_1

    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_8
    const/4 v4, 0x0

    .line 1198
    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1199
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1200
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 1201
    return v3

    .line 1184
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 931
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    .local v2, "p":I
    if-eqz v2, :cond_1

    :goto_0
    const/16 v3, 0xf

    .line 936
    if-eq v2, v3, :cond_2

    const/16 v3, 0x10

    .line 942
    if-eq v2, v3, :cond_3

    .line 945
    if-ne v2, v6, :cond_4

    .line 946
    :cond_0
    if-eq v2, v7, :cond_5

    .line 949
    if-eq v2, v6, :cond_6

    const/16 v3, 0x22

    :goto_1
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 952
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "result":J
    const/4 v3, 0x0

    .line 953
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-wide v4

    .line 933
    .end local v4    # "result":J
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    goto :goto_0

    .line 937
    :cond_2
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 938
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 939
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v6

    .line 943
    :cond_3
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 944
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_3
    const/16 v3, 0xb

    .line 963
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 964
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 965
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 966
    .restart local v4    # "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_7

    .line 967
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_4
    const/16 v3, 0x9

    .line 945
    if-eq v2, v3, :cond_0

    if-eq v2, v7, :cond_0

    .line 960
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 947
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/16 v3, 0x27

    .line 949
    goto/16 :goto_1

    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_7
    const/4 v3, 0x0

    .line 969
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 970
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 971
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 972
    return-wide v4

    .line 955
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 777
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 778
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xe

    .line 782
    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    .line 784
    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    .line 786
    if-eq v0, v2, :cond_3

    .line 789
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 783
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "result":Ljava/lang/String;
    :goto_1
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 792
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 793
    return-object v1

    .line 785
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 787
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 864
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 865
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x7

    .line 868
    if-eq v0, v1, :cond_1

    .line 872
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 869
    :cond_1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 870
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 874
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 805
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 806
    .local v0, "p":I
    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xa

    .line 810
    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    .line 812
    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    .line 814
    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    .line 816
    if-eq v0, v2, :cond_4

    const/16 v2, 0xf

    .line 819
    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    .line 821
    if-eq v0, v2, :cond_6

    .line 825
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 811
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "result":Ljava/lang/String;
    :goto_1
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 828
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 829
    return-object v1

    .line 813
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 815
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 817
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 818
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 820
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 822
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 823
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 424
    .local v0, "p":I
    if-eqz v0, :cond_0

    .line 428
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    .line 430
    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 432
    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 434
    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 436
    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 440
    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 443
    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 445
    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 450
    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 453
    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 455
    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1222
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1223
    .local v1, "p":I
    if-eqz v1, :cond_3

    .line 1227
    :goto_0
    if-eq v1, v6, :cond_4

    .line 1230
    if-eq v1, v5, :cond_5

    const/4 v2, 0x4

    .line 1233
    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    .line 1236
    if-eq v1, v2, :cond_7

    const/16 v2, 0xe

    .line 1239
    if-ne v1, v2, :cond_8

    .line 1240
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1248
    :cond_2
    :goto_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1249
    if-nez v0, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1252
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string/jumbo v4, "null"

    aput-object v4, v2, v3

    .line 1253
    return-void

    .line 1224
    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    goto :goto_0

    .line 1228
    :cond_4
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1231
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1234
    :cond_6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1237
    :cond_7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1238
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    const/16 v2, 0xa

    .line 1239
    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    .line 1241
    if-ne v1, v2, :cond_a

    .line 1242
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xc

    .line 1241
    if-eq v1, v2, :cond_9

    const/16 v2, 0x9

    .line 1243
    if-ne v1, v2, :cond_c

    .line 1244
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_c
    const/16 v2, 0xd

    .line 1243
    if-eq v1, v2, :cond_b

    const/16 v2, 0x10

    .line 1245
    if-ne v1, v2, :cond_2

    .line 1246
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
