.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONReaderScanner.java"


# static fields
.field private static final BUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 53
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "features"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 60
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 61
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez v1, :cond_0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-eqz v1, :cond_1

    .line 70
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 78
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    .line 81
    :goto_2
    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2000

    .line 66
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 41
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 46
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 49
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    .line 50
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 84
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 85
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 1
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 3
    .param p1, "chars"    # [C

    .prologue
    const/4 v0, 0x0

    .line 209
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 215
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    aget-char v2, p1, v0

    if-ne v1, v2, :cond_1

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final charAt(I)C
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/16 v9, 0x1a

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 88
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ge p1, v4, :cond_0

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v4, v4, p1

    return v4

    .line 89
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v4, v8, :cond_1

    .line 96
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    if-eqz v4, :cond_3

    .line 109
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v3, v4, v5

    .line 110
    .local v3, "rest":I
    if-gtz v3, :cond_4

    .line 115
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/Reader;->read([CII)I

    move-result v4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v4, :cond_5

    .line 124
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v4, v8, :cond_6

    .line 128
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 129
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p1, v4

    .line 130
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 131
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    goto :goto_0

    .line 90
    .end local v3    # "rest":I
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-lt p1, v4, :cond_2

    .line 93
    return v9

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v4, v4, p1

    return v4

    .line 97
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 98
    .local v0, "buf":[C
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    invoke-static {v4, v5, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v4, v0

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    sub-int v3, v4, v5

    .line 102
    .restart local v3    # "rest":I
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 103
    .local v2, "len":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 104
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 111
    .end local v0    # "buf":[C
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v4, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 118
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal state, textLength is zero"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_6
    return v9
.end method

.method public close()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v0, v0

    const v1, 0x8000

    if-le v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 290
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 291
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    return-void
.end method

.method public final indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 139
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v2, p2, v3

    .line 141
    .local v2, "offset":I
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int v1, v3, v2

    .line 142
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v3

    int-to-char v0, v3

    .line 143
    .local v0, "chLoal":C
    if-eq p1, v0, :cond_0

    const/16 v3, 0x1a

    .line 146
    if-eq v0, v3, :cond_1

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v3, v2

    return v3

    :cond_1
    const/4 v3, -0x1

    .line 147
    return v3
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method public final next()C
    .locals 12

    .prologue
    const/16 v11, 0x1a

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 157
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 159
    .local v1, "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ge v1, v6, :cond_0

    .line 201
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v6, v6, v1

    int-to-char v7, v6

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v6

    .line 160
    :cond_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v6, v10, :cond_1

    .line 164
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-gtz v6, :cond_2

    .line 172
    :goto_1
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 174
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    .end local v1    # "index":I
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 177
    .restart local v1    # "index":I
    :try_start_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 178
    .local v5, "startPos":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6

    sub-int v4, v6, v5

    .line 179
    .local v4, "readLength":I
    if-eqz v4, :cond_4

    .line 185
    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    invoke-virtual {v6, v7, v8, v4}, Ljava/io/Reader;->read([CII)I

    move-result v6

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v6, :cond_5

    .line 194
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v6, v10, :cond_6

    .line 198
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    goto :goto_0

    .line 161
    .end local v4    # "readLength":I
    .end local v5    # "startPos":I
    :cond_1
    return v11

    .line 166
    :cond_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int v3, v6, v7

    .line 167
    .local v3, "offset":I
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v7, 0x22

    if-eq v6, v7, :cond_3

    .line 170
    :goto_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v6, v3, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 168
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 180
    .end local v3    # "offset":I
    .restart local v4    # "readLength":I
    .restart local v5    # "startPos":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [C

    .line 181
    .local v2, "newBuf":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v9, v9

    invoke-static {v6, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 183
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int v4, v6, v5

    goto :goto_2

    .line 188
    .end local v2    # "newBuf":[C
    .end local v4    # "readLength":I
    .end local v5    # "startPos":I
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "readLength":I
    .restart local v5    # "startPos":I
    :cond_5
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v7, "illegal stat, textLength is zero"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_6
    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v11
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .local v1, "offset":I
    const/4 v4, -0x1

    .line 268
    if-eq v1, v4, :cond_1

    .line 271
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 273
    .local v0, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    .local v2, "sp":I
    const/16 v4, 0x4c

    .line 274
    if-ne v0, v4, :cond_2

    .line 275
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 278
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 279
    .local v3, "value":Ljava/lang/String;
    return-object v3

    .end local v0    # "chLocal":C
    .end local v2    # "sp":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 269
    goto :goto_0

    .restart local v0    # "chLocal":C
    .restart local v2    # "sp":I
    :cond_2
    const/16 v4, 0x53

    .line 274
    if-eq v0, v4, :cond_0

    const/16 v4, 0x42

    if-eq v0, v4, :cond_0

    const/16 v4, 0x46

    if-eq v0, v4, :cond_0

    const/16 v4, 0x44

    if-eq v0, v4, :cond_0

    goto :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->hasSpecial:Z

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 231
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v0, v1, 0x1

    .line 232
    .local v0, "offset":I
    if-ltz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 238
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 236
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 246
    if-ltz p2, :cond_0

    .line 249
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final sub_chars(II)[C
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    if-ltz p2, :cond_0

    .line 258
    if-eqz p1, :cond_1

    .line 261
    new-array v0, p2, [C

    .line 262
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v0

    .line 255
    .end local v0    # "chars":[C
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    return-object v1
.end method
