.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field private final indexMask:I

.field private final symbols:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "tableSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 30
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    const-string/jumbo v0, "$ref"

    const/4 v1, 0x4

    const-string/jumbo v2, "$ref"

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static hash([CII)I
    .locals 6
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    .local v0, "h":I
    move v2, p1

    .local v2, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .line 113
    .end local v2    # "off":I
    .local v3, "off":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 116
    return v0

    .line 114
    :cond_0
    mul-int/lit8 v4, v0, 0x1f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "off":I
    .restart local v2    # "off":I
    aget-char v5, p0, v3

    add-int v0, v4, v5

    .line 113
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "off":I
    .restart local v3    # "off":I
    goto :goto_0
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 104
    new-array v0, p2, [C

    .line 105
    .local v0, "chars":[C
    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 82
    iget v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v0, p4, v2

    .line 84
    .local v0, "bucket":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 85
    .local v1, "symbol":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p3, v2, :cond_3

    .line 97
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 100
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq p4, v2, :cond_2

    .line 92
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 87
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 88
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    return-object v1

    :cond_3
    move-object v1, p1

    .line 95
    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 38
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 39
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 52
    iget v4, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v0, p4, v4

    .line 54
    .local v0, "bucket":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v3, v4, v0

    .line 55
    .local v3, "symbol":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 76
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 78
    return-object v3

    .line 56
    :cond_0
    const/4 v1, 0x1

    .line 57
    .local v1, "eq":Z
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eq p4, v4, :cond_3

    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 69
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 72
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 58
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p3, v4, :cond_1

    const/4 v2, 0x0

    .line 59
    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 60
    add-int v4, p2, v2

    aget-char v4, p1, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_4

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_5
    return-object v3
.end method
