.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeautres:I


# instance fields
.field protected beanToArray:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 140
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 68
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 116
    if-lez p2, :cond_0

    .line 119
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 122
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 88
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 90
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v2, :cond_0

    const/16 v2, 0x800

    .line 93
    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 96
    :goto_0
    move v1, p2

    .line 97
    .local v1, "featuresValue":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 100
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 103
    return-void

    .line 91
    .end local v1    # "featuresValue":I
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    .restart local v1    # "featuresValue":I
    :cond_1
    aget-object v0, p3, v2

    .line 98
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v4

    or-int/2addr v1, v4

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 73
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 383
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 384
    .local v1, "bytesLength":I
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 386
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 391
    :goto_0
    array-length v3, v0

    if-lt v3, v1, :cond_1

    .line 395
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v8, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 396
    .local v2, "position":I
    invoke-virtual {p1, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 397
    return v2

    .end local v2    # "position":I
    :cond_0
    const/16 v3, 0x2000

    .line 387
    new-array v0, v3, [B

    .line 388
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_1
    new-array v0, v1, [B

    goto :goto_1
.end method

.method private encodeToUTF8Bytes()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 401
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 402
    .local v1, "bytesLength":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 404
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 409
    :goto_0
    array-length v4, v0

    if-lt v4, v1, :cond_1

    .line 413
    :goto_1
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v4, v8, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 414
    .local v3, "position":I
    new-array v2, v3, [B

    .line 415
    .local v2, "copy":[B
    invoke-static {v0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    return-object v2

    .end local v2    # "copy":[B
    .end local v3    # "position":I
    :cond_0
    const/16 v4, 0x2000

    .line 405
    new-array v0, v4, [B

    .line 406
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_1
    new-array v0, v1, [B

    goto :goto_1
.end method

.method static isSpecial(CI)Z
    .locals 4
    .param p0, "ch"    # C
    .param p1, "features"    # I

    .prologue
    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x20

    .line 1573
    if-eq p0, v2, :cond_2

    const/16 v2, 0x2f

    .line 1577
    if-eq p0, v2, :cond_3

    const/16 v2, 0x23

    .line 1581
    if-gt p0, v2, :cond_5

    :cond_0
    const/16 v2, 0x1f

    .line 1587
    if-gt p0, v2, :cond_6

    .line 1591
    :cond_1
    return v1

    .line 1574
    :cond_2
    return v0

    .line 1578
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, p1

    if-nez v2, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1581
    :cond_5
    if-eq p0, v3, :cond_0

    .line 1584
    return v0

    .line 1587
    :cond_6
    if-eq p0, v3, :cond_1

    const/16 v2, 0x22

    if-eq p0, v2, :cond_1

    .line 1594
    return v0
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 1620
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    .line 1622
    :goto_0
    return-void

    .line 1618
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1774
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 1776
    .local v7, "specicalFlags_singleQuotes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1777
    .local v4, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    .line 1778
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_0

    .line 1818
    :goto_0
    if-eqz v4, :cond_b

    .line 1829
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1830
    .local v8, "start":I
    add-int v1, v8, v4

    .local v1, "end":I
    const/4 v9, 0x0

    .line 1832
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1833
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1835
    const/4 v2, 0x0

    .line 1837
    .local v2, "hasSpecial":Z
    move v3, v8

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_d

    .line 1871
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v6, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    .line 1872
    return-void

    .line 1779
    .end local v1    # "end":I
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    .end local v8    # "start":I
    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v9, :cond_1

    .line 1815
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 1780
    :cond_1
    if-eqz v4, :cond_2

    .line 1787
    const/4 v2, 0x0

    .restart local v2    # "hasSpecial":Z
    const/4 v3, 0x0

    .line 1788
    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 1796
    :goto_3
    if-nez v2, :cond_6

    :goto_4
    const/4 v3, 0x0

    .line 1799
    :goto_5
    if-lt v3, v4, :cond_7

    .line 1808
    if-nez v2, :cond_a

    :goto_6
    const/16 v9, 0x3a

    .line 1811
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1812
    return-void

    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_2
    const/16 v9, 0x27

    .line 1781
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v9, 0x27

    .line 1782
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v9, 0x3a

    .line 1783
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1784
    return-void

    .line 1789
    .restart local v2    # "hasSpecial":Z
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-char v0, v9

    .line 1790
    .local v0, "ch":C
    array-length v9, v7

    if-lt v0, v9, :cond_5

    .line 1788
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1790
    :cond_5
    aget-byte v9, v7, v0

    if-eqz v9, :cond_4

    .line 1791
    const/4 v2, 0x1

    goto :goto_3

    .end local v0    # "ch":C
    :cond_6
    const/16 v9, 0x27

    .line 1797
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 1800
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-char v0, v9

    .line 1801
    .restart local v0    # "ch":C
    array-length v9, v7

    if-lt v0, v9, :cond_9

    .line 1805
    :cond_8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1799
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1801
    :cond_9
    aget-byte v9, v7, v0

    if-eqz v9, :cond_8

    const/16 v9, 0x5c

    .line 1802
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1803
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .end local v0    # "ch":C
    :cond_a
    const/16 v9, 0x27

    .line 1809
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 1819
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_b
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v9, 0x3

    .line 1820
    .local v5, "newCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v5, v9, :cond_c

    .line 1823
    :goto_8
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1824
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1825
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    .line 1826
    return-void

    .line 1821
    :cond_c
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_8

    .line 1838
    .end local v5    # "newCount":I
    .restart local v1    # "end":I
    .restart local v2    # "hasSpecial":Z
    .restart local v3    # "i":I
    .restart local v8    # "start":I
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v3

    int-to-char v0, v9

    .line 1839
    .restart local v0    # "ch":C
    array-length v9, v7

    if-lt v0, v9, :cond_f

    .line 1837
    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1839
    :cond_f
    aget-byte v9, v7, v0

    if-eqz v9, :cond_e

    .line 1840
    if-eqz v2, :cond_10

    .line 1857
    add-int/lit8 v6, v6, 0x1

    .line 1858
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_12

    .line 1861
    :goto_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1863
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1864
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1865
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    int-to-char v10, v10

    aput-char v10, v9, v3

    .line 1866
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1841
    :cond_10
    add-int/lit8 v6, v6, 0x3

    .line 1842
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_11

    .line 1845
    :goto_b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1847
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1848
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1849
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x27

    aput-char v10, v9, v8

    .line 1850
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1851
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    int-to-char v10, v10

    aput-char v10, v9, v3

    .line 1852
    add-int/lit8 v1, v1, 0x2

    .line 1853
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1855
    const/4 v2, 0x1

    goto :goto_9

    .line 1843
    :cond_11
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_b

    .line 1859
    :cond_12
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_a
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 268
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 257
    return-object p0

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .end local p1    # "csq":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 263
    return-object p0

    .end local v0    # "s":Ljava/lang/String;
    .restart local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo p1, "null"

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_2

    .line 439
    :goto_1
    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 440
    return-void

    .line 432
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_0

    .line 436
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected computeFeatures()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 154
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 155
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 156
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 159
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 160
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 161
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_b

    :cond_0
    :goto_9
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_c

    const/16 v0, 0x22

    :goto_a
    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 169
    return-void

    :cond_2
    move v0, v2

    .line 153
    goto :goto_0

    :cond_3
    move v0, v2

    .line 154
    goto :goto_1

    :cond_4
    move v0, v2

    .line 155
    goto :goto_2

    :cond_5
    move v0, v2

    .line 156
    goto :goto_3

    :cond_6
    move v0, v2

    .line 157
    goto :goto_4

    :cond_7
    move v0, v2

    .line 158
    goto :goto_5

    :cond_8
    move v0, v2

    .line 159
    goto :goto_6

    :cond_9
    move v0, v2

    .line 160
    goto :goto_7

    :cond_a
    move v0, v2

    .line 161
    goto :goto_8

    .line 163
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v0, :cond_1

    goto :goto_9

    :cond_c
    const/16 v0, 0x27

    .line 168
    goto :goto_a
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 125
    if-nez p2, :cond_1

    .line 134
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 138
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 128
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq p1, v0, :cond_2

    .line 130
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 129
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 246
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_0

    .line 249
    :goto_0
    new-array v1, v0, [C

    .line 250
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 252
    return-void

    .line 247
    .end local v1    # "newValue":[C
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public flush()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1875
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 1880
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 1881
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1886
    return-void

    .line 1876
    :cond_0
    return-void

    .line 1884
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 184
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 3
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x0

    .line 180
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v2, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 364
    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 344
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v1, [C

    .line 345
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v0

    .line 341
    .end local v0    # "newValue":[C
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .prologue
    .line 354
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 358
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    new-array v0, v1, [C

    .line 359
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    return-object v0

    .line 355
    .end local v0    # "newValue":[C
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 191
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 192
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 201
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 202
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v0, 0x1

    .line 197
    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 449
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 445
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 279
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 280
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v0, v2, :cond_0

    .line 295
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 296
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 297
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_2

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 286
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 287
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 289
    sub-int/2addr p3, v1

    .line 290
    add-int/2addr p2, v1

    .line 291
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    .line 292
    move v0, p3

    goto :goto_0

    .line 282
    .end local v1    # "rest":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public write(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1095
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1100
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1101
    .local v8, "offset":I
    move v3, v8

    .local v3, "initOffset":I
    const/4 v2, 0x0

    .line 1102
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "list_size":I
    move v9, v8

    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    if-lt v2, v6, :cond_1

    .line 1158
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x5d

    aput-char v12, v11, v9

    .line 1159
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1160
    return-void

    .end local v2    # "i":I
    .end local v3    # "initOffset":I
    .end local v6    # "list_size":I
    .end local v8    # "offset":I
    :cond_0
    const-string/jumbo v11, "[]"

    .line 1096
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1097
    return-void

    .line 1103
    .restart local v2    # "i":I
    .restart local v3    # "initOffset":I
    .restart local v6    # "list_size":I
    .restart local v9    # "offset":I
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1105
    .local v10, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1106
    .local v1, "hasSpecial":Z
    if-eqz v10, :cond_3

    const/4 v4, 0x0

    .line 1109
    .local v4, "j":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .end local v1    # "hasSpecial":Z
    .local v5, "len":I
    :goto_1
    if-lt v4, v5, :cond_4

    .line 1120
    .end local v4    # "j":I
    .end local v5    # "len":I
    :cond_2
    :goto_2
    if-nez v1, :cond_7

    .line 1139
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v7, v11, 0x3

    .line 1140
    .local v7, "newcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v2, v11, :cond_b

    .line 1143
    :goto_3
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v11, v11

    if-gt v7, v11, :cond_c

    .line 1148
    :goto_4
    if-eqz v2, :cond_d

    .line 1151
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x2c

    aput-char v12, v11, v9

    .line 1153
    :goto_5
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    const/16 v12, 0x22

    aput-char v12, v11, v8

    const/4 v11, 0x0

    .line 1154
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v10, v11, v12, v13, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1155
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 1156
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    const/16 v12, 0x22

    aput-char v12, v11, v8

    .line 1102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1107
    .end local v7    # "newcount":I
    .restart local v1    # "hasSpecial":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 1110
    .end local v1    # "hasSpecial":Z
    .restart local v4    # "j":I
    .restart local v5    # "len":I
    :cond_4
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v0, v11

    .local v0, "ch":C
    const/16 v11, 0x20

    .line 1111
    if-ge v0, v11, :cond_6

    :cond_5
    const/4 v1, 0x1

    .local v1, "hasSpecial":Z
    :goto_6
    if-nez v1, :cond_2

    .line 1109
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "hasSpecial":Z
    :cond_6
    const/16 v11, 0x7e

    .line 1111
    if-gt v0, v11, :cond_5

    const/16 v11, 0x22

    if-eq v0, v11, :cond_5

    const/16 v11, 0x5c

    if-eq v0, v11, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 1121
    .end local v0    # "ch":C
    .end local v4    # "j":I
    .end local v5    # "len":I
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x5b

    .line 1122
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v4, 0x0

    .line 1123
    .restart local v4    # "j":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_8

    const/16 v11, 0x5d

    .line 1135
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1136
    return-void

    .line 1124
    :cond_8
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1125
    .restart local v10    # "text":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 1129
    :goto_8
    if-eqz v10, :cond_a

    .line 1132
    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1123
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    const/16 v11, 0x2c

    .line 1126
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_8

    :cond_a
    const-string/jumbo v11, "null"

    .line 1130
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 1141
    .end local v4    # "j":I
    .restart local v7    # "newcount":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1144
    :cond_c
    iput v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1145
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_4

    .line 1149
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    const/16 v12, 0x5b

    aput-char v12, v11, v9

    goto/16 :goto_5
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1216
    if-nez p1, :cond_0

    const-string/jumbo v0, "false"

    .line 1219
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "true"

    .line 1217
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 212
    if-gez p2, :cond_1

    .line 217
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 212
    :cond_1
    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    .line 218
    if-eqz p3, :cond_2

    .line 222
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 223
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v0, v2, :cond_3

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 241
    return-void

    .line 219
    .end local v0    # "newcount":I
    :cond_2
    return-void

    .line 224
    .restart local v0    # "newcount":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_5

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 229
    .local v1, "rest":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 232
    sub-int/2addr p3, v1

    .line 233
    add-int/2addr p2, v1

    .line 234
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    .line 235
    move v0, p3

    goto :goto_0

    .line 225
    .end local v1    # "rest":I
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 20
    .param p1, "bytes"    # [B

    .prologue
    .line 477
    move-object/from16 v0, p1

    array-length v3, v0

    .line 478
    .local v3, "bytesLen":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x22

    :goto_0
    move/from16 v0, v17

    int-to-char v14, v0

    .line 480
    .local v14, "quote":C
    if-eqz v3, :cond_1

    .line 486
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 488
    .local v2, "CA":[C
    div-int/lit8 v17, v3, 0x3

    mul-int/lit8 v7, v17, 0x3

    .line 489
    .local v7, "eLen":I
    add-int/lit8 v17, v3, -0x1

    div-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    shl-int/lit8 v4, v17, 0x2

    .line 491
    .local v4, "charsLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 492
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v17, v0

    add-int v17, v17, v4

    add-int/lit8 v11, v17, 0x2

    .line 493
    .local v11, "newcount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v11, v0, :cond_3

    .line 526
    :goto_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    int-to-char v0, v14

    move/from16 v18, v0

    aput-char v18, v17, v12

    const/4 v15, 0x0

    .line 530
    .local v15, "s":I
    move v5, v13

    .local v5, "d":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .local v16, "s":I
    :goto_2
    move/from16 v0, v16

    if-lt v0, v7, :cond_9

    .line 542
    sub-int v10, v3, v7

    .line 543
    .local v10, "left":I
    if-gtz v10, :cond_a

    .line 553
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    int-to-char v0, v14

    move/from16 v19, v0

    aput-char v19, v17, v18

    .line 554
    return-void

    .end local v2    # "CA":[C
    .end local v4    # "charsLen":I
    .end local v6    # "d":I
    .end local v7    # "eLen":I
    .end local v10    # "left":I
    .end local v11    # "newcount":I
    .end local v13    # "offset":I
    .end local v14    # "quote":C
    .end local v16    # "s":I
    :cond_0
    const/16 v17, 0x27

    .line 478
    goto :goto_0

    .line 481
    .restart local v14    # "quote":C
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    const-string/jumbo v8, "\"\""

    .line 482
    .local v8, "emptyString":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 483
    return-void

    .end local v8    # "emptyString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "\'\'"

    goto :goto_4

    .line 494
    .restart local v2    # "CA":[C
    .restart local v4    # "charsLen":I
    .restart local v7    # "eLen":I
    .restart local v11    # "newcount":I
    .restart local v12    # "offset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 524
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 495
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v15, 0x0

    .restart local v15    # "s":I
    move/from16 v16, v15

    .line 497
    .end local v15    # "s":I
    .restart local v16    # "s":I
    :goto_5
    move/from16 v0, v16

    if-lt v0, v7, :cond_5

    .line 509
    sub-int v10, v3, v7

    .line 510
    .restart local v10    # "left":I
    if-gtz v10, :cond_6

    .line 521
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 522
    return-void

    .line 499
    .end local v10    # "left":I
    :cond_5
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 502
    .local v9, "i":I
    ushr-int/lit8 v17, v9, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 503
    ushr-int/lit8 v17, v9, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 504
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 505
    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move/from16 v16, v15

    .line 506
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_5

    .line 512
    .end local v9    # "i":I
    .restart local v10    # "left":I
    :cond_6
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v10, v0, :cond_7

    const/16 v17, 0x0

    :goto_7
    or-int v9, v18, v17

    .line 515
    .restart local v9    # "i":I
    shr-int/lit8 v17, v9, 0xc

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 516
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v17, 0x2

    .line 517
    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    const/16 v17, 0x3d

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v17, 0x3d

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_6

    .line 512
    .end local v9    # "i":I
    :cond_7
    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    goto :goto_7

    .line 517
    .restart local v9    # "i":I
    :cond_8
    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    goto :goto_8

    .line 532
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v12    # "offset":I
    .restart local v6    # "d":I
    .restart local v13    # "offset":I
    :cond_9
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 535
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x12

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v17, v6

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    ushr-int/lit8 v18, v9, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v17, v5

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v17, v6

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v17, v5

    move/from16 v16, v15

    .line 539
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto/16 :goto_2

    .line 545
    .end local v9    # "i":I
    .restart local v10    # "left":I
    :cond_a
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v10, v0, :cond_b

    const/16 v17, 0x0

    :goto_9
    or-int v9, v18, v17

    .line 548
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x5

    shr-int/lit8 v19, v9, 0xc

    aget-char v19, v2, v19

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v17, v18

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x4

    ushr-int/lit8 v19, v9, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v17, v18

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v10, v0, :cond_c

    const/16 v17, 0x3d

    :goto_a
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v18, v19

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x2

    const/16 v19, 0x3d

    aput-char v19, v17, v18

    goto/16 :goto_3

    .line 545
    .end local v9    # "i":I
    :cond_b
    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    goto :goto_9

    .line 550
    .restart local v9    # "i":I
    :cond_c
    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    goto :goto_a
.end method

.method public writeDouble(DZ)V
    .locals 3
    .param p1, "doubleValue"    # D
    .param p3, "checkWriteClassName"    # Z

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "doubleText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 583
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 585
    if-eqz p3, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x44

    .line 586
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ".0"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 580
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 598
    .local v1, "strVal":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v2, :cond_2

    .line 600
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v2, :cond_3

    .line 604
    .end local v1    # "strVal":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_4

    .line 610
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 612
    :goto_1
    return-void

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 594
    return-void

    .line 598
    .restart local v1    # "strVal":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v2, :cond_0

    .line 599
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .local v1, "strVal":Ljava/lang/String;
    goto :goto_0

    .line 601
    .local v1, "strVal":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "strVal":Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x22

    :goto_2
    int-to-char v0, v2

    .line 606
    .local v0, "quote":C
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 607
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .end local v0    # "quote":C
    :cond_5
    const/16 v2, 0x27

    .line 605
    goto :goto_2
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1736
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .prologue
    const/16 v5, 0x3a

    const/4 v3, 0x0

    .line 1739
    if-eqz p1, :cond_0

    .line 1744
    iget-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v4, :cond_1

    .line 1752
    iget-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v4, :cond_3

    .line 1755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .local v1, "hashSpecial":Z
    :goto_0
    const/4 v2, 0x0

    .line 1756
    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_5

    .line 1763
    .end local v1    # "hashSpecial":Z
    :goto_2
    if-nez v1, :cond_7

    .line 1766
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1771
    .end local v2    # "i":I
    :goto_3
    return-void

    :cond_0
    const-string/jumbo v3, "null:"

    .line 1740
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1741
    return-void

    .line 1745
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v3, :cond_2

    .line 1749
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_3

    .line 1746
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 1753
    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    .line 1755
    goto :goto_0

    .line 1757
    .restart local v1    # "hashSpecial":Z
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1758
    .local v0, "ch":C
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1756
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1759
    :cond_6
    const/4 v1, 0x1

    .local v1, "hashSpecial":Z
    goto :goto_2

    .line 1764
    .end local v0    # "ch":C
    .end local v1    # "hashSpecial":Z
    :cond_7
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 1077
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1078
    .local v0, "len":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x3

    .line 1080
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v1, v3, :cond_0

    .line 1084
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v3, 0x1

    .line 1086
    .local v2, "start":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v3, v4

    const/4 v3, 0x0

    .line 1087
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1089
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1090
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    aput-char v5, v3, v4

    .line 1091
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    .line 1092
    return-void

    .line 1081
    .end local v2    # "start":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 1164
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1165
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1166
    if-eqz p3, :cond_0

    .line 1169
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\u0000"

    .line 1167
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1309
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    .line 1311
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1303
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1304
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    .line 1305
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 9
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v5, -0x80000000

    .line 1224
    if-ne p3, v5, :cond_1

    .line 1225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1226
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1228
    return-void

    .line 1224
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v5, :cond_0

    .line 1231
    if-ltz p3, :cond_2

    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1233
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1234
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1235
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-gt v3, v5, :cond_3

    .line 1245
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1246
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1248
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v6, p1

    aput-char v6, v5, v4

    .line 1250
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1252
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1254
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p2, v8, v2, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1256
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1257
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1259
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 1260
    return-void

    .line 1231
    .end local v0    # "intSize":I
    .end local v1    # "nameEnd":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    .end local v4    # "start":I
    :cond_2
    neg-int v5, p3

    invoke-static {v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    goto :goto_0

    .line 1236
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_4

    .line 1242
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 1237
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1238
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1240
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    .line 1263
    cmp-long v5, p3, v8

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    .line 1270
    cmp-long v5, p3, v8

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_2

    neg-long v8, p3

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1272
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1273
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1274
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-gt v3, v5, :cond_3

    .line 1284
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1285
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1287
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v7, p1

    aput-char v7, v5, v4

    .line 1289
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1291
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1293
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v6, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1295
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1296
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1298
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 1299
    return-void

    .line 1264
    .end local v0    # "intSize":I
    .end local v1    # "nameEnd":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    .end local v4    # "start":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1265
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1267
    return-void

    :cond_1
    move v5, v6

    .line 1270
    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 1275
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_4

    .line 1281
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2

    .line 1276
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1277
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1279
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1600
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-eqz p3, :cond_1

    .line 1607
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v0, :cond_2

    .line 1609
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_3

    .line 1612
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 1614
    :goto_0
    return-void

    .line 1601
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1602
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1604
    return-void

    .line 1607
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_0

    .line 1608
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1610
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3a

    const/4 v1, 0x0

    .line 1314
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1338
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1339
    if-eqz p3, :cond_5

    .line 1342
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1345
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_1

    .line 1324
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1328
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1333
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1316
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1317
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1318
    if-eqz p3, :cond_2

    .line 1321
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1325
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1326
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1327
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1329
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1330
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1331
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1340
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 1625
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1626
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1627
    if-eqz p3, :cond_0

    .line 1630
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1632
    :goto_0
    return-void

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 10
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v9, 0x0

    .line 1174
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v6, :cond_0

    .line 1180
    if-nez p3, :cond_1

    move v0, v5

    .line 1182
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1183
    .local v2, "nameLen":I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x4

    add-int v3, v6, v0

    .line 1184
    .local v3, "newcount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-gt v3, v6, :cond_2

    .line 1195
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1196
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1198
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v7, p1

    aput-char v7, v6, v4

    .line 1200
    add-int v6, v4, v2

    add-int/lit8 v1, v6, 0x1

    .line 1202
    .local v1, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 1204
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v9, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1206
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 1208
    if-nez p3, :cond_4

    const-string/jumbo v5, ":false"

    .line 1211
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x6

    invoke-static {v5, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1213
    :goto_2
    return-void

    .line 1175
    .end local v0    # "intSize":I
    .end local v1    # "nameEnd":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    .end local v4    # "start":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1176
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1178
    return-void

    :cond_1
    const/4 v0, 0x4

    .line 1180
    goto :goto_0

    .line 1185
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v6, :cond_3

    .line 1192
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 1186
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1187
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 v5, 0x3a

    .line 1188
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1189
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1190
    return-void

    .restart local v1    # "nameEnd":I
    .restart local v4    # "start":I
    :cond_4
    const-string/jumbo v6, ":true"

    .line 1209
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v1, 0x2

    invoke-static {v6, v9, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1532
    .local v3, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1534
    .local v5, "newcount":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 1535
    .local v6, "valueLen":I
    add-int v8, v3, v6

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v5, v8

    .line 1537
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-gt v5, v8, :cond_0

    .line 1547
    :goto_0
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v10, p1

    aput-char v10, v8, v9

    .line 1549
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v8, 0x2

    .line 1550
    .local v4, "nameStart":I
    add-int v2, v4, v3

    .line 1552
    .local v2, "nameEnd":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    const/4 v8, 0x0

    .line 1553
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v8, v3, v9, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1555
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1557
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x22

    aput-char v9, v8, v2

    .line 1559
    add-int/lit8 v0, v2, 0x1

    .line 1560
    .local v0, "index":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/16 v9, 0x3a

    aput-char v9, v8, v0

    .line 1561
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v9, 0x22

    aput-char v9, v8, v1

    .line 1563
    move v7, v0

    .local v7, "valueStart":I
    const/4 v8, 0x0

    .line 1564
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v8, v6, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1565
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    .line 1566
    return-void

    .line 1538
    .end local v0    # "index":I
    .end local v2    # "nameEnd":I
    .end local v4    # "nameStart":I
    .end local v7    # "valueStart":I
    :cond_0
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v8, :cond_1

    .line 1544
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 1539
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1540
    const/16 v8, 0x3a

    invoke-virtual {p0, p2, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1541
    const/4 v8, 0x0

    invoke-virtual {p0, p3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1542
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    .line 1351
    .local v17, "nameLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    .line 1353
    .local v19, "newcount":I
    if-eqz p3, :cond_1

    .line 1357
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    .line 1358
    .local v24, "valueLen":I
    add-int v26, v17, v24

    add-int/lit8 v26, v26, 0x6

    add-int v19, v19, v26

    .line 1361
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-gt v0, v1, :cond_2

    .line 1371
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v28, v0

    aput-char v28, v26, v27

    .line 1373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v26, v0

    add-int/lit8 v18, v26, 0x2

    .line 1374
    .local v18, "nameStart":I
    add-int v16, v18, v17

    .line 1376
    .local v16, "nameEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    const/16 v28, 0x22

    aput-char v28, v26, v27

    const/16 v26, 0x0

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v17

    move-object/from16 v3, v27

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1379
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x22

    aput-char v27, v26, v16

    .line 1383
    add-int/lit8 v12, v16, 0x1

    .line 1384
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    const/16 v27, 0x3a

    aput-char v27, v26, v12

    .line 1386
    if-eqz p3, :cond_4

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x22

    aput-char v27, v26, v13

    .line 1396
    move/from16 v25, v12

    .line 1397
    .local v25, "valueStart":I
    add-int v23, v25, v24

    .local v23, "valueEnd":I
    const/16 v26, 0x0

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v20, 0x0

    .local v20, "specialCount":I
    const/4 v15, -0x1

    .local v15, "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 1404
    .local v10, "firstSpecialIndex":I
    const/4 v14, 0x0

    .line 1406
    .local v14, "lastSpecial":C
    move/from16 v11, v25

    .end local v14    # "lastSpecial":C
    .local v11, "i":I
    :goto_2
    move/from16 v0, v23

    if-lt v11, v0, :cond_5

    .line 1442
    if-gtz v20, :cond_e

    .line 1525
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    const/16 v28, 0x22

    aput-char v28, v26, v27

    .line 1526
    return-void

    .end local v10    # "firstSpecialIndex":I
    .end local v11    # "i":I
    .end local v12    # "index":I
    .end local v15    # "lastSpecialIndex":I
    .end local v16    # "nameEnd":I
    .end local v18    # "nameStart":I
    .end local v20    # "specialCount":I
    .end local v23    # "valueEnd":I
    .end local v24    # "valueLen":I
    .end local v25    # "valueStart":I
    :cond_1
    const/16 v24, 0x4

    .line 1355
    .restart local v24    # "valueLen":I
    add-int/lit8 v26, v17, 0x8

    add-int v19, v19, v26

    goto/16 :goto_0

    .line 1362
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 1368
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_1

    .line 1363
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1364
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1365
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1366
    return-void

    .line 1387
    .restart local v13    # "index":I
    .restart local v16    # "nameEnd":I
    .restart local v18    # "nameStart":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x6e

    aput-char v27, v26, v13

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    const/16 v27, 0x75

    aput-char v27, v26, v12

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x6c

    aput-char v27, v26, v13

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    const/16 v27, 0x6c

    aput-char v27, v26, v12

    .line 1391
    return-void

    .line 1407
    .end local v13    # "index":I
    .restart local v10    # "firstSpecialIndex":I
    .restart local v11    # "i":I
    .restart local v12    # "index":I
    .restart local v15    # "lastSpecialIndex":I
    .restart local v20    # "specialCount":I
    .restart local v23    # "valueEnd":I
    .restart local v25    # "valueStart":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    aget-char v26, v26, v11

    move/from16 v0, v26

    int-to-char v8, v0

    .local v8, "ch":C
    const/16 v26, 0x5d

    .line 1409
    move/from16 v0, v26

    if-ge v8, v0, :cond_7

    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v26

    if-nez v26, :cond_b

    .line 1406
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v26, 0x7f

    .line 1410
    move/from16 v0, v26

    if-lt v8, v0, :cond_6

    const/16 v26, 0x2028

    move/from16 v0, v26

    if-ne v8, v0, :cond_9

    :cond_8
    const/16 v26, -0x1

    .line 1413
    move/from16 v0, v26

    if-eq v10, v0, :cond_a

    .line 1417
    :goto_5
    add-int/lit8 v20, v20, 0x1

    .line 1418
    move v15, v11

    .line 1419
    int-to-char v14, v8

    .line 1420
    .local v14, "lastSpecial":C
    add-int/lit8 v19, v19, 0x4

    goto :goto_4

    .end local v14    # "lastSpecial":C
    :cond_9
    const/16 v26, 0xa0

    .line 1410
    move/from16 v0, v26

    if-lt v8, v0, :cond_8

    goto :goto_4

    .line 1414
    :cond_a
    move v10, v11

    goto :goto_5

    .line 1426
    :cond_b
    add-int/lit8 v20, v20, 0x1

    .line 1427
    move v15, v11

    .line 1428
    int-to-char v14, v8

    .line 1430
    .restart local v14    # "lastSpecial":C
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_d

    :cond_c
    :goto_6
    const/16 v26, -0x1

    .line 1436
    move/from16 v0, v26

    if-ne v10, v0, :cond_6

    .line 1437
    move v10, v11

    goto :goto_4

    .line 1430
    :cond_d
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 1433
    add-int/lit8 v19, v19, 0x4

    goto :goto_6

    .line 1443
    .end local v8    # "ch":C
    .end local v14    # "lastSpecial":C
    :cond_e
    add-int v19, v19, v20

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-gt v0, v1, :cond_10

    .line 1447
    :goto_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v26, 0x1

    .line 1449
    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    const/16 v26, 0x1

    .line 1486
    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 1487
    sub-int v22, v10, v25

    .line 1488
    .local v22, "textIndex":I
    move v6, v10

    .line 1489
    .local v6, "bufIndex":I
    move/from16 v11, v22

    :goto_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_0

    .line 1490
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move/from16 v0, v26

    int-to-char v8, v0

    .line 1492
    .restart local v8    # "ch":C
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_15

    :cond_f
    const/16 v26, 0x2f

    move/from16 v0, v26

    if-eq v8, v0, :cond_17

    :goto_9
    const/16 v26, 0x2028

    .line 1508
    move/from16 v0, v26

    if-eq v8, v0, :cond_19

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .local v7, "bufIndex":I
    int-to-char v0, v8

    move/from16 v27, v0

    aput-char v27, v26, v6

    move v6, v7

    .line 1489
    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1445
    .end local v6    # "bufIndex":I
    .end local v8    # "ch":C
    .end local v22    # "textIndex":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_7

    :cond_11
    const/16 v26, 0x2028

    .line 1450
    move/from16 v0, v26

    if-eq v14, v0, :cond_13

    .line 1462
    int-to-char v8, v14

    .line 1463
    .restart local v8    # "ch":C
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v8, v0, :cond_14

    .line 1478
    :cond_12
    add-int/lit8 v21, v15, 0x1

    .line 1479
    .local v21, "srcPos":I
    add-int/lit8 v9, v15, 0x2

    .line 1480
    .local v9, "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1481
    .local v5, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x5c

    aput-char v27, v26, v15

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v27, v27, v8

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v15

    goto/16 :goto_3

    .line 1451
    .end local v5    # "LengthOfCopy":I
    .end local v8    # "ch":C
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    :cond_13
    add-int/lit8 v21, v15, 0x1

    .line 1452
    .restart local v21    # "srcPos":I
    add-int/lit8 v9, v15, 0x6

    .line 1453
    .restart local v9    # "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1454
    .restart local v5    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x5c

    aput-char v27, v26, v15

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x75

    aput-char v27, v26, v15

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x32

    aput-char v27, v26, v15

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x30

    aput-char v27, v26, v15

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x32

    aput-char v27, v26, v15

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x38

    aput-char v27, v26, v15

    goto/16 :goto_3

    .line 1463
    .end local v5    # "LengthOfCopy":I
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    .restart local v8    # "ch":C
    :cond_14
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 1465
    add-int/lit8 v21, v15, 0x1

    .line 1466
    .restart local v21    # "srcPos":I
    add-int/lit8 v9, v15, 0x6

    .line 1467
    .restart local v9    # "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1468
    .restart local v5    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1470
    move v6, v15

    .line 1471
    .restart local v6    # "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    goto/16 :goto_3

    .line 1492
    .end local v5    # "LengthOfCopy":I
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    .restart local v22    # "textIndex":I
    :cond_15
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    if-eqz v26, :cond_f

    .line 1495
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1496
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v27, v27, v8

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1505
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a

    .line 1492
    :cond_17
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1494
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-nez v26, :cond_16

    goto/16 :goto_9

    .line 1497
    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1502
    add-int/lit8 v23, v23, 0x5

    goto/16 :goto_a

    .line 1509
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v6

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v26, v7

    .line 1515
    add-int/lit8 v23, v23, 0x5

    goto/16 :goto_a
.end method

.method public writeFloat(FZ)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "checkWriteClassName"    # Z

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "floatText":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 565
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 567
    if-eqz p2, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x46

    .line 568
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ".0"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 452
    if-eq p1, v3, :cond_0

    .line 457
    if-ltz p1, :cond_1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v2

    .line 459
    .local v2, "size":I
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v3, v2

    .line 460
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v1, v3, :cond_2

    .line 471
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 473
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 474
    return-void

    .end local v1    # "newcount":I
    .end local v2    # "size":I
    :cond_0
    const-string/jumbo v3, "-2147483648"

    .line 453
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 454
    return-void

    .line 457
    :cond_1
    neg-int v3, p1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 461
    .restart local v1    # "newcount":I
    .restart local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_3

    .line 464
    new-array v0, v2, [C

    .line 465
    .local v0, "chars":[C
    invoke-static {p1, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 466
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 467
    return-void

    .line 462
    .end local v0    # "chars":[C
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1
.end method

.method public writeLong(J)V
    .locals 9
    .param p1, "i"    # J

    .prologue
    const/16 v8, 0x22

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 615
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v5

    .local v1, "needQuotationMark":Z
    :goto_0
    const-wide/high16 v6, -0x8000000000000000L

    .line 619
    cmp-long v6, p1, v6

    if-nez v6, :cond_6

    .line 620
    if-nez v1, :cond_5

    const-string/jumbo v4, "-9223372036854775808"

    .line 621
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 622
    :goto_1
    return-void

    .line 615
    .end local v1    # "needQuotationMark":Z
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 616
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_0

    const-wide v6, 0x1fffffffffffffL

    cmp-long v6, p1, v6

    if-lez v6, :cond_3

    move v6, v4

    :goto_2
    if-nez v6, :cond_2

    const-wide v6, -0x1fffffffffffffL

    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    move v6, v4

    :goto_3
    if-nez v6, :cond_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v5

    goto :goto_3

    .restart local v1    # "needQuotationMark":Z
    :cond_5
    const-string/jumbo v4, "\"-9223372036854775808\""

    .line 620
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    .line 625
    cmp-long v6, p1, v6

    if-ltz v6, :cond_7

    :goto_4
    if-nez v4, :cond_8

    neg-long v6, p1

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 627
    .local v3, "size":I
    :goto_5
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v2, v4, v3

    .line 628
    .local v2, "newcount":I
    if-nez v1, :cond_9

    .line 629
    :goto_6
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v2, v4, :cond_a

    .line 646
    :goto_7
    if-nez v1, :cond_d

    .line 651
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 654
    :goto_8
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 655
    return-void

    .end local v2    # "newcount":I
    .end local v3    # "size":I
    :cond_7
    move v4, v5

    .line 625
    goto :goto_4

    :cond_8
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    goto :goto_5

    .line 628
    .restart local v2    # "newcount":I
    .restart local v3    # "size":I
    :cond_9
    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 630
    :cond_a
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_b

    .line 633
    new-array v0, v3, [C

    .line 634
    .local v0, "chars":[C
    invoke-static {p1, p2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 635
    if-nez v1, :cond_c

    .line 640
    array-length v4, v0

    invoke-virtual {p0, v0, v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 642
    :goto_9
    return-void

    .line 631
    .end local v0    # "chars":[C
    :cond_b
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_7

    .line 636
    .restart local v0    # "chars":[C
    :cond_c
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 637
    array-length v4, v0

    invoke-virtual {p0, v0, v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 638
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    .line 647
    .end local v0    # "chars":[C
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v4, v5

    .line 648
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 649
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, -0x1

    aput-char v8, v4, v5

    goto :goto_8
.end method

.method public writeNull()V
    .locals 1

    .prologue
    const-string/jumbo v0, "null"

    .line 658
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public writeNull(II)V
    .locals 1
    .param p1, "beanFeatures"    # I
    .param p2, "feature"    # I

    .prologue
    .line 666
    and-int v0, p1, p2

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_2

    .line 674
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_3

    .line 676
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_4

    .line 678
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_5

    .line 681
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 683
    :goto_0
    return-void

    .line 666
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 669
    return-void

    :cond_2
    const-string/jumbo v0, "[]"

    .line 673
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    .line 675
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "false"

    .line 677
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x30

    .line 679
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v0, 0x0

    .line 662
    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 663
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1644
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 1647
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1649
    :goto_0
    return-void

    .line 1645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 1635
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 1639
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1641
    :goto_0
    return-void

    .line 1636
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 25
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 686
    if-eqz p1, :cond_1

    .line 694
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 695
    .local v14, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int v20, v20, v14

    add-int/lit8 v15, v20, 0x2

    .line 696
    .local v15, "newcount":I
    if-nez p2, :cond_3

    .line 700
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v15, v0, :cond_4

    .line 781
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x1

    .line 782
    .local v18, "start":I
    add-int v9, v18, v14

    .line 784
    .local v9, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    const/16 v22, 0x22

    aput-char v22, v20, v21

    const/16 v20, 0x0

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v14, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 787
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 789
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_19

    .line 834
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_2e

    const/16 v16, 0x0

    .local v16, "specialCount":I
    const/4 v13, -0x1

    .local v13, "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 938
    .local v10, "firstSpecialIndex":I
    const/4 v12, 0x0

    .line 940
    .local v12, "lastSpecial":C
    move/from16 v11, v18

    .end local v12    # "lastSpecial":C
    .local v11, "i":I
    :goto_2
    if-lt v11, v9, :cond_3f

    .line 986
    if-gtz v16, :cond_47

    .line 1068
    :cond_0
    :goto_3
    if-nez p2, :cond_53

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 1074
    :goto_4
    return-void

    .line 687
    .end local v9    # "end":I
    .end local v10    # "firstSpecialIndex":I
    .end local v11    # "i":I
    .end local v13    # "lastSpecialIndex":I
    .end local v14    # "len":I
    .end local v15    # "newcount":I
    .end local v16    # "specialCount":I
    .end local v18    # "start":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 688
    if-nez p2, :cond_2

    .line 691
    :goto_5
    return-void

    .line 689
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 697
    .restart local v14    # "len":I
    .restart local v15    # "newcount":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 701
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 778
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_1

    :cond_5
    const/16 v20, 0x22

    .line 702
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v11, 0x0

    .line 704
    .restart local v11    # "i":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v11, v0, :cond_6

    const/16 v20, 0x22

    .line 772
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 773
    if-nez p2, :cond_18

    .line 776
    :goto_7
    return-void

    .line 705
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    int-to-char v7, v0

    .line 707
    .local v7, "ch":C
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 718
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 752
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_14

    :cond_7
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_16

    .line 769
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 704
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    const/16 v20, 0x30

    .line 708
    move/from16 v0, v20

    if-ge v7, v0, :cond_d

    :cond_a
    const/16 v20, 0x61

    move/from16 v0, v20

    if-ge v7, v0, :cond_e

    :cond_b
    const/16 v20, 0x41

    move/from16 v0, v20

    if-ge v7, v0, :cond_f

    :cond_c
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v7, v0, :cond_8

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_8

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_8

    const/16 v20, 0x5c

    .line 710
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v20, 0x75

    .line 711
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 712
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 713
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 714
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 715
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    :cond_d
    const/16 v20, 0x39

    .line 708
    move/from16 v0, v20

    if-gt v7, v0, :cond_a

    goto :goto_8

    :cond_e
    const/16 v20, 0x7a

    move/from16 v0, v20

    if-gt v7, v0, :cond_b

    goto/16 :goto_8

    :cond_f
    const/16 v20, 0x5a

    move/from16 v0, v20

    if-gt v7, v0, :cond_c

    goto/16 :goto_8

    :cond_10
    const/16 v20, 0x8

    .line 719
    move/from16 v0, v20

    if-ne v7, v0, :cond_12

    :cond_11
    const/16 v20, 0x5c

    .line 727
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 728
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v20, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_9

    :cond_12
    const/16 v20, 0xc

    .line 719
    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0x22

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-eq v7, v0, :cond_11

    const/16 v20, 0x20

    .line 732
    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v20, 0x7f

    .line 742
    move/from16 v0, v20

    if-lt v7, v0, :cond_8

    const/16 v20, 0x5c

    .line 743
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v20, 0x75

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 745
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 746
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 747
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 748
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_9

    :cond_13
    const/16 v20, 0x5c

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v20, 0x75

    .line 734
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v20, 0x30

    .line 735
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v20, 0x30

    .line 736
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 737
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v7, 0x2

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 738
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v7, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_9

    .line 752
    :cond_14
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    if-eqz v20, :cond_7

    :cond_15
    const/16 v20, 0x5c

    .line 755
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 756
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 763
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v20, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_9

    .line 752
    :cond_16
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_15

    goto/16 :goto_8

    :cond_17
    const/16 v20, 0x75

    .line 757
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 758
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 759
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 760
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 761
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_9

    .line 774
    .end local v7    # "ch":C
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    .end local v11    # "i":I
    .restart local v9    # "end":I
    .restart local v18    # "start":I
    :cond_19
    const/4 v13, -0x1

    .line 792
    .restart local v13    # "lastSpecialIndex":I
    move/from16 v11, v18

    .restart local v11    # "i":I
    :goto_a
    if-lt v11, v9, :cond_1a

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v15, v0, :cond_23

    .line 806
    :goto_b
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 808
    move v11, v13

    :goto_c
    move/from16 v0, v18

    if-ge v11, v0, :cond_24

    .line 824
    if-nez p2, :cond_2d

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 831
    :goto_d
    return-void

    .line 793
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v11

    move/from16 v0, v20

    int-to-char v7, v0

    .restart local v7    # "ch":C
    const/16 v20, 0x30

    .line 795
    move/from16 v0, v20

    if-ge v7, v0, :cond_1f

    :cond_1b
    const/16 v20, 0x61

    move/from16 v0, v20

    if-ge v7, v0, :cond_20

    :cond_1c
    const/16 v20, 0x41

    move/from16 v0, v20

    if-ge v7, v0, :cond_21

    :cond_1d
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v7, v0, :cond_22

    .line 792
    :cond_1e
    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_1f
    const/16 v20, 0x39

    .line 795
    move/from16 v0, v20

    if-gt v7, v0, :cond_1b

    goto :goto_e

    :cond_20
    const/16 v20, 0x7a

    move/from16 v0, v20

    if-gt v7, v0, :cond_1c

    goto :goto_e

    :cond_21
    const/16 v20, 0x5a

    move/from16 v0, v20

    if-gt v7, v0, :cond_1d

    goto :goto_e

    :cond_22
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_1e

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_1e

    .line 797
    move v13, v11

    .line 798
    add-int/lit8 v15, v15, 0x5

    goto :goto_e

    .line 804
    .end local v7    # "ch":C
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_b

    .line 809
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v11

    move/from16 v0, v20

    int-to-char v7, v0

    .restart local v7    # "ch":C
    const/16 v20, 0x30

    .line 811
    move/from16 v0, v20

    if-ge v7, v0, :cond_29

    :cond_25
    const/16 v20, 0x61

    move/from16 v0, v20

    if-ge v7, v0, :cond_2a

    :cond_26
    const/16 v20, 0x41

    move/from16 v0, v20

    if-ge v7, v0, :cond_2b

    :cond_27
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v7, v0, :cond_2c

    .line 808
    :cond_28
    :goto_f
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_c

    :cond_29
    const/16 v20, 0x39

    .line 811
    move/from16 v0, v20

    if-gt v7, v0, :cond_25

    goto :goto_f

    :cond_2a
    const/16 v20, 0x7a

    move/from16 v0, v20

    if-gt v7, v0, :cond_26

    goto :goto_f

    :cond_2b
    const/16 v20, 0x5a

    move/from16 v0, v20

    if-gt v7, v0, :cond_27

    goto :goto_f

    :cond_2c
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_28

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_28

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 820
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_f

    .line 825
    .end local v7    # "ch":C
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    goto/16 :goto_d

    .end local v11    # "i":I
    .end local v13    # "lastSpecialIndex":I
    :cond_2e
    const/4 v13, -0x1

    .line 837
    .restart local v13    # "lastSpecialIndex":I
    move/from16 v11, v18

    .restart local v11    # "i":I
    :goto_10
    if-lt v11, v9, :cond_2f

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v15, v0, :cond_36

    .line 874
    :goto_11
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 876
    move v11, v13

    :goto_12
    move/from16 v0, v18

    if-ge v11, v0, :cond_37

    .line 925
    if-nez p2, :cond_3e

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 932
    :goto_13
    return-void

    .line 838
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v11

    move/from16 v0, v20

    int-to-char v7, v0

    .restart local v7    # "ch":C
    const/16 v20, 0x22

    .line 840
    move/from16 v0, v20

    if-ne v7, v0, :cond_32

    .line 843
    :cond_30
    move v13, v11

    .line 844
    add-int/lit8 v15, v15, 0x1

    .line 837
    :cond_31
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_32
    const/16 v20, 0x2f

    .line 840
    move/from16 v0, v20

    if-eq v7, v0, :cond_30

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-eq v7, v0, :cond_30

    const/16 v20, 0x8

    .line 848
    move/from16 v0, v20

    if-ne v7, v0, :cond_34

    .line 853
    :cond_33
    move v13, v11

    .line 854
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    :cond_34
    const/16 v20, 0xc

    .line 848
    move/from16 v0, v20

    if-eq v7, v0, :cond_33

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_33

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_33

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v7, v0, :cond_33

    const/16 v20, 0x20

    .line 858
    move/from16 v0, v20

    if-lt v7, v0, :cond_35

    const/16 v20, 0x7f

    .line 864
    move/from16 v0, v20

    if-lt v7, v0, :cond_31

    .line 865
    move v13, v11

    .line 866
    add-int/lit8 v15, v15, 0x5

    goto :goto_14

    .line 859
    :cond_35
    move v13, v11

    .line 860
    add-int/lit8 v15, v15, 0x5

    goto :goto_14

    .line 872
    .end local v7    # "ch":C
    :cond_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_11

    .line 877
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v11

    move/from16 v0, v20

    int-to-char v7, v0

    .restart local v7    # "ch":C
    const/16 v20, 0x8

    .line 879
    move/from16 v0, v20

    if-ne v7, v0, :cond_3a

    .line 884
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x2

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v22, v22, v7

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 887
    add-int/lit8 v9, v9, 0x1

    .line 876
    :cond_39
    :goto_15
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_12

    :cond_3a
    const/16 v20, 0xc

    .line 879
    move/from16 v0, v20

    if-eq v7, v0, :cond_38

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_38

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_38

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v7, v0, :cond_38

    const/16 v20, 0x22

    .line 891
    move/from16 v0, v20

    if-ne v7, v0, :cond_3c

    .line 894
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x2

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    int-to-char v0, v7

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 897
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_3c
    const/16 v20, 0x2f

    .line 891
    move/from16 v0, v20

    if-eq v7, v0, :cond_3b

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-eq v7, v0, :cond_3b

    const/16 v20, 0x20

    .line 901
    move/from16 v0, v20

    if-lt v7, v0, :cond_3d

    const/16 v20, 0x7f

    .line 913
    move/from16 v0, v20

    if-lt v7, v0, :cond_39

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 921
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_15

    .line 902
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    const/16 v22, 0x30

    aput-char v22, v20, v21

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    const/16 v22, 0x30

    aput-char v22, v20, v21

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v23, v7, 0x2

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v23, v7, 0x2

    add-int/lit8 v23, v23, 0x1

    aget-char v22, v22, v23

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    .line 909
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_15

    .line 926
    .end local v7    # "ch":C
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    goto/16 :goto_13

    .line 941
    .restart local v10    # "firstSpecialIndex":I
    .restart local v16    # "specialCount":I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v20, v20, v11

    move/from16 v0, v20

    int-to-char v7, v0

    .restart local v7    # "ch":C
    const/16 v20, 0x2028

    .line 943
    move/from16 v0, v20

    if-eq v7, v0, :cond_41

    const/16 v20, 0x5d

    .line 955
    move/from16 v0, v20

    if-ge v7, v0, :cond_42

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v20

    if-nez v20, :cond_44

    .line 940
    :cond_40
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 944
    :cond_41
    add-int/lit8 v16, v16, 0x1

    .line 945
    move v13, v11

    .line 946
    int-to-char v12, v7

    .line 947
    .local v12, "lastSpecial":C
    add-int/lit8 v15, v15, 0x4

    const/16 v20, -0x1

    .line 949
    move/from16 v0, v20

    if-ne v10, v0, :cond_40

    .line 950
    move v10, v11

    goto :goto_16

    .end local v12    # "lastSpecial":C
    :cond_42
    const/16 v20, 0x7f

    .line 956
    move/from16 v0, v20

    if-lt v7, v0, :cond_40

    const/16 v20, 0xa0

    move/from16 v0, v20

    if-ge v7, v0, :cond_40

    const/16 v20, -0x1

    .line 957
    move/from16 v0, v20

    if-eq v10, v0, :cond_43

    .line 961
    :goto_17
    add-int/lit8 v16, v16, 0x1

    .line 962
    move v13, v11

    .line 963
    int-to-char v12, v7

    .line 964
    .restart local v12    # "lastSpecial":C
    add-int/lit8 v15, v15, 0x4

    goto :goto_16

    .line 958
    .end local v12    # "lastSpecial":C
    :cond_43
    move v10, v11

    goto :goto_17

    .line 970
    :cond_44
    add-int/lit8 v16, v16, 0x1

    .line 971
    move v13, v11

    .line 972
    int-to-char v12, v7

    .line 974
    .restart local v12    # "lastSpecial":C
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_46

    :cond_45
    :goto_18
    const/16 v20, -0x1

    .line 980
    move/from16 v0, v20

    if-ne v10, v0, :cond_40

    .line 981
    move v10, v11

    goto :goto_16

    .line 974
    :cond_46
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_45

    .line 977
    add-int/lit8 v15, v15, 0x4

    goto :goto_18

    .line 987
    .end local v7    # "ch":C
    .end local v12    # "lastSpecial":C
    :cond_47
    add-int v15, v15, v16

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v15, v0, :cond_49

    .line 991
    :goto_19
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v20, 0x1

    .line 993
    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_4a

    const/16 v20, 0x1

    .line 1030
    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 1031
    sub-int v19, v10, v18

    .line 1032
    .local v19, "textIndex":I
    move v5, v10

    .line 1033
    .local v5, "bufIndex":I
    move/from16 v11, v19

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_0

    .line 1034
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    int-to-char v7, v0

    .line 1036
    .restart local v7    # "ch":C
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4e

    :cond_48
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_50

    :goto_1b
    const/16 v20, 0x2028

    .line 1052
    move/from16 v0, v20

    if-eq v7, v0, :cond_52

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .local v6, "bufIndex":I
    int-to-char v0, v7

    move/from16 v21, v0

    aput-char v21, v20, v5

    move v5, v6

    .line 1033
    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    :goto_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 989
    .end local v5    # "bufIndex":I
    .end local v7    # "ch":C
    .end local v19    # "textIndex":I
    :cond_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_19

    :cond_4a
    const/16 v20, 0x2028

    .line 994
    move/from16 v0, v20

    if-eq v12, v0, :cond_4c

    .line 1006
    int-to-char v7, v12

    .line 1007
    .restart local v7    # "ch":C
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4d

    .line 1022
    :cond_4b
    add-int/lit8 v17, v13, 0x1

    .line 1023
    .local v17, "srcPos":I
    add-int/lit8 v8, v13, 0x2

    .line 1024
    .local v8, "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 1025
    .local v4, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v13

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v13

    goto/16 :goto_3

    .line 995
    .end local v4    # "LengthOfCopy":I
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    :cond_4c
    add-int/lit8 v17, v13, 0x1

    .line 996
    .restart local v17    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 997
    .restart local v8    # "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 998
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v13

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x75

    aput-char v21, v20, v13

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x32

    aput-char v21, v20, v13

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x30

    aput-char v21, v20, v13

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x32

    aput-char v21, v20, v13

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x38

    aput-char v21, v20, v13

    goto/16 :goto_3

    .line 1007
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    .restart local v7    # "ch":C
    :cond_4d
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4b

    .line 1009
    add-int/lit8 v17, v13, 0x1

    .line 1010
    .restart local v17    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 1011
    .restart local v8    # "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 1012
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    move v5, v13

    .line 1015
    .restart local v5    # "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    goto/16 :goto_3

    .line 1036
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    .restart local v19    # "textIndex":I
    :cond_4e
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    if-eqz v20, :cond_48

    .line 1039
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1040
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_51

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1049
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1c

    .line 1036
    :cond_50
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-nez v20, :cond_4f

    goto/16 :goto_1b

    .line 1041
    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1046
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_1c

    .line 1053
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v5

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v20, v6

    .line 1059
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_1c

    .line 1069
    .end local v5    # "bufIndex":I
    .end local v7    # "ch":C
    .end local v19    # "textIndex":I
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    aput-char v22, v20, v21

    goto/16 :goto_4
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1652
    if-eqz p1, :cond_1

    .line 1662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1663
    .local v5, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 1664
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_3

    .line 1683
    :goto_0
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 1684
    .local v8, "start":I
    add-int v1, v8, v5

    .line 1686
    .local v1, "end":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    const/4 v9, 0x0

    .line 1687
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1688
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v7, 0x0

    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 1692
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 1693
    .local v3, "lastSpecial":C
    move v2, v8

    .end local v3    # "lastSpecial":C
    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_9

    .line 1703
    add-int/2addr v6, v7

    .line 1704
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_d

    .line 1707
    :goto_2
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v9, 0x1

    .line 1709
    if-eq v7, v9, :cond_e

    const/4 v9, 0x1

    .line 1713
    if-gt v7, v9, :cond_f

    .line 1731
    :cond_0
    :goto_3
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1732
    return-void

    .line 1653
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v4    # "lastSpecialIndex":I
    .end local v5    # "len":I
    .end local v6    # "newcount":I
    .end local v7    # "specialCount":I
    .end local v8    # "start":I
    :cond_1
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 1654
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-gt v6, v9, :cond_2

    :goto_4
    const-string/jumbo v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    .line 1657
    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1658
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1659
    return-void

    .line 1655
    :cond_2
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 1665
    .restart local v5    # "len":I
    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v9, :cond_4

    .line 1680
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    :cond_4
    const/16 v9, 0x27

    .line 1666
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v2, 0x0

    .line 1667
    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v2, v9, :cond_5

    const/16 v9, 0x27

    .line 1677
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1678
    return-void

    .line 1668
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-char v0, v9

    .local v0, "ch":C
    const/16 v9, 0xd

    .line 1669
    if-gt v0, v9, :cond_7

    :cond_6
    const/16 v9, 0x5c

    .line 1671
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1672
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1667
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const/16 v9, 0x5c

    .line 1669
    if-eq v0, v9, :cond_6

    const/16 v9, 0x27

    if-eq v0, v9, :cond_6

    const/16 v9, 0x2f

    if-eq v0, v9, :cond_8

    .line 1674
    :goto_7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 1669
    :cond_8
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1670
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_7

    .line 1694
    .end local v0    # "ch":C
    .restart local v1    # "end":I
    .restart local v4    # "lastSpecialIndex":I
    .restart local v7    # "specialCount":I
    .restart local v8    # "start":I
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v2

    int-to-char v0, v9

    .restart local v0    # "ch":C
    const/16 v9, 0xd

    .line 1695
    if-gt v0, v9, :cond_c

    .line 1697
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 1698
    move v4, v2

    .line 1699
    int-to-char v3, v0

    .line 1693
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0x5c

    .line 1695
    if-eq v0, v9, :cond_a

    const/16 v9, 0x27

    if-eq v0, v9, :cond_a

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_b

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1696
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_8

    .line 1705
    .end local v0    # "ch":C
    :cond_d
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_2

    .line 1710
    :cond_e
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1711
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1712
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    int-to-char v10, v10

    aput-char v10, v9, v4

    goto/16 :goto_3

    .line 1714
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1715
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1716
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    int-to-char v10, v10

    aput-char v10, v9, v4

    .line 1717
    add-int/lit8 v1, v1, 0x1

    .line 1718
    add-int/lit8 v2, v4, -0x2

    :goto_9
    if-lt v2, v8, :cond_0

    .line 1719
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v9, v9, v2

    int-to-char v0, v9

    .restart local v0    # "ch":C
    const/16 v9, 0xd

    .line 1721
    if-gt v0, v9, :cond_12

    .line 1723
    :cond_10
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 1725
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v0

    int-to-char v11, v11

    aput-char v11, v9, v10

    .line 1726
    add-int/lit8 v1, v1, 0x1

    .line 1718
    :cond_11
    :goto_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_12
    const/16 v9, 0x5c

    .line 1721
    if-eq v0, v9, :cond_10

    const/16 v9, 0x27

    if-eq v0, v9, :cond_10

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_11

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1722
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_a
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 314
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    .line 318
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 310
    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 325
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-eq p2, v1, :cond_1

    .line 328
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 329
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    array-length v1, v0

    return v1

    .line 322
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v1

    return v1
.end method
