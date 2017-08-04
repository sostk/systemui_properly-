.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field public static final ISO8601_LEN_0:I

.field public static final ISO8601_LEN_1:I

.field public static final ISO8601_LEN_2:I


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "0000-00-00"

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    const-string/jumbo v0, "0000-00-00T00:00:00"

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    const-string/jumbo v0, "0000-00-00T00:00:00.000"

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 40
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 51
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-eq v0, v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 72
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 73
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .prologue
    const/4 v4, 0x0

    .line 84
    array-length v0, p2

    .line 85
    .local v0, "destLen":I
    add-int v2, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x0

    .line 89
    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 95
    const/4 v2, 0x1

    return v2

    .line 86
    .end local v1    # "i":I
    :cond_0
    return v4

    .line 90
    .restart local v1    # "i":I
    :cond_1
    aget-char v2, p2, v1

    add-int v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    return v4
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v0, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 609
    if-ne p0, v3, :cond_2

    .line 612
    :cond_0
    if-ge p1, v2, :cond_3

    .line 613
    :cond_1
    return v1

    .line 609
    :cond_2
    if-eq p0, v4, :cond_0

    .line 610
    return v1

    .line 612
    :cond_3
    if-gt p1, v0, :cond_1

    .line 615
    if-ge p2, v2, :cond_5

    .line 616
    :cond_4
    return v1

    .line 615
    :cond_5
    if-gt p2, v0, :cond_4

    .line 618
    if-ge p3, v2, :cond_7

    .line 619
    :cond_6
    return v1

    .line 618
    :cond_7
    if-gt p3, v0, :cond_6

    .line 622
    if-eq p4, v2, :cond_8

    .line 626
    if-eq p4, v3, :cond_e

    .line 631
    return v1

    .line 623
    :cond_8
    if-ge p5, v3, :cond_a

    .line 624
    :cond_9
    return v1

    .line 623
    :cond_a
    if-gt p5, v0, :cond_9

    .line 634
    :cond_b
    if-eq p6, v2, :cond_f

    .line 638
    if-ne p6, v3, :cond_13

    .line 639
    :cond_c
    if-ge p7, v2, :cond_14

    .line 640
    :cond_d
    return v1

    .line 627
    :cond_e
    if-eq p5, v2, :cond_b

    if-eq p5, v3, :cond_b

    if-eq p5, v4, :cond_b

    .line 628
    return v1

    .line 635
    :cond_f
    if-ge p7, v3, :cond_11

    .line 636
    :cond_10
    return v1

    .line 635
    :cond_11
    if-gt p7, v0, :cond_10

    .line 650
    :cond_12
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 638
    :cond_13
    if-eq p6, v4, :cond_c

    const/16 v0, 0x33

    .line 642
    if-eq p6, v0, :cond_15

    .line 647
    return v1

    .line 639
    :cond_14
    if-gt p7, v0, :cond_d

    goto :goto_0

    .line 643
    :cond_15
    if-eq p7, v2, :cond_12

    if-eq p7, v3, :cond_12

    .line 644
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 555
    if-eq p1, v2, :cond_0

    const/16 v0, 0x31

    .line 559
    if-eq p1, v0, :cond_4

    const/16 v0, 0x32

    .line 563
    if-eq p1, v0, :cond_7

    .line 568
    return v1

    .line 556
    :cond_0
    if-ge p2, v2, :cond_2

    .line 557
    :cond_1
    return v1

    .line 556
    :cond_2
    if-gt p2, v3, :cond_1

    .line 571
    :goto_0
    if-ge p3, v2, :cond_a

    .line 575
    :cond_3
    if-eq p3, v5, :cond_f

    .line 580
    return v1

    .line 560
    :cond_4
    if-ge p2, v2, :cond_6

    .line 561
    :cond_5
    return v1

    .line 560
    :cond_6
    if-gt p2, v3, :cond_5

    goto :goto_0

    .line 564
    :cond_7
    if-ge p2, v2, :cond_9

    .line 565
    :cond_8
    return v1

    :cond_9
    const/16 v0, 0x34

    .line 564
    if-gt p2, v0, :cond_8

    goto :goto_0

    .line 571
    :cond_a
    if-gt p3, v4, :cond_3

    .line 572
    if-ge p4, v2, :cond_c

    .line 573
    :cond_b
    return v1

    .line 572
    :cond_c
    if-gt p4, v3, :cond_b

    .line 583
    :cond_d
    if-ge p5, v2, :cond_10

    .line 587
    :cond_e
    if-eq p5, v5, :cond_14

    .line 592
    return v1

    .line 576
    :cond_f
    if-eq p4, v2, :cond_d

    .line 577
    return v1

    .line 583
    :cond_10
    if-gt p5, v4, :cond_e

    .line 584
    if-ge p6, v2, :cond_12

    .line 585
    :cond_11
    return v1

    .line 584
    :cond_12
    if-gt p6, v3, :cond_11

    .line 595
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_14
    if-eq p6, v2, :cond_13

    .line 589
    return v1
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 599
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 600
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 601
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 602
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 603
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 604
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 605
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 606
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
    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1328
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 58
    :cond_0
    const/16 v0, 0x1a

    return v0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 81
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1335
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    return-object v0

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method public final next()C
    .locals 3

    .prologue
    .line 65
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 66
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    int-to-char v2, v1

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 66
    return v1

    :cond_0
    const/16 v1, 0x1a

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v0, v2

    .line 159
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .local v1, "sp":I
    const/16 v2, 0x4c

    .line 160
    if-ne v0, v2, :cond_1

    .line 161
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 165
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/16 v2, 0x53

    .line 160
    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-eq v0, v2, :cond_0

    goto :goto_0
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x2c

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1136
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1138
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v4, v5, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1143
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v5, p1

    add-int v1, v4, v5

    .line 1145
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .local v0, "ch":C
    const/16 v4, 0x74

    .line 1148
    if-eq v0, v4, :cond_1

    const/16 v4, 0x66

    .line 1165
    if-eq v0, v4, :cond_5

    .line 1187
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1188
    return v6

    .end local v0    # "ch":C
    .end local v2    # "index":I
    :cond_0
    const/4 v4, -0x2

    .line 1139
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1140
    return v6

    .line 1149
    .restart local v0    # "ch":C
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_2

    .line 1153
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_3

    .line 1157
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_4

    .line 1162
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1163
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1164
    const/4 v3, 0x1

    .line 1191
    .local v3, "value":Z
    :goto_0
    if-eq v0, v9, :cond_a

    const/16 v4, 0x7d

    .line 1195
    if-eq v0, v4, :cond_b

    .line 1214
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1215
    return v6

    .line 1150
    .end local v3    # "value":Z
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1151
    return v6

    .line 1154
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1155
    return v6

    .line 1158
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1159
    return v6

    .line 1166
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_6

    .line 1170
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_7

    .line 1174
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_8

    .line 1178
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_9

    .line 1183
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1184
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1185
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1167
    .end local v3    # "value":Z
    :cond_6
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1168
    return v6

    .line 1171
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1172
    return v6

    .line 1175
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_8
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1176
    return v6

    .line 1179
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1180
    return v6

    .line 1192
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v3    # "value":Z
    :cond_a
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v4, 0x3

    .line 1193
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1194
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1218
    :goto_1
    return v3

    .line 1196
    :cond_b
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1197
    if-eq v0, v9, :cond_c

    const/16 v4, 0x5d

    .line 1200
    if-eq v0, v4, :cond_d

    const/16 v4, 0x7d

    .line 1203
    if-eq v0, v4, :cond_e

    const/16 v4, 0x1a

    .line 1206
    if-eq v0, v4, :cond_f

    .line 1209
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1210
    return v6

    .line 1198
    :cond_c
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1199
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_2
    const/4 v4, 0x4

    .line 1212
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_1

    :cond_d
    const/16 v4, 0xf

    .line 1201
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1202
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_e
    const/16 v4, 0xd

    .line 1204
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1205
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_f
    const/16 v4, 0x14

    .line 1207
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2
.end method

.method public scanFieldInt([C)I
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v13, 0x10

    const/16 v12, 0x7d

    const/16 v11, 0x2c

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 659
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 660
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 661
    .local v5, "startPos":I
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    int-to-char v4, v7

    .line 663
    .local v4, "startChar":C
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 668
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v7, v8

    .line 670
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 672
    .local v0, "ch":C
    const/4 v3, 0x0

    .local v3, "negative":Z
    const/16 v7, 0x2d

    .line 673
    if-eq v0, v7, :cond_2

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_0
    const/16 v7, 0x30

    .line 679
    if-ge v0, v7, :cond_3

    .line 702
    :cond_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 703
    return v9

    .end local v0    # "ch":C
    .end local v1    # "index":I
    .end local v3    # "negative":Z
    :cond_1
    const/4 v7, -0x2

    .line 664
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 665
    return v9

    .line 674
    .restart local v0    # "ch":C
    .restart local v2    # "index":I
    .restart local v3    # "negative":Z
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 675
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v7, 0x39

    .line 679
    if-gt v0, v7, :cond_0

    .line 680
    add-int/lit8 v6, v0, -0x30

    .line 682
    .local v6, "value":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    const/16 v7, 0x30

    .line 683
    if-ge v0, v7, :cond_6

    :cond_4
    const/16 v7, 0x2e

    .line 685
    if-eq v0, v7, :cond_7

    .line 693
    if-ltz v6, :cond_8

    .line 698
    if-ne v0, v11, :cond_9

    .line 699
    :cond_5
    add-int/lit8 v7, v2, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 706
    :goto_2
    if-eq v0, v11, :cond_a

    .line 713
    if-eq v0, v12, :cond_c

    .line 735
    :goto_3
    if-nez v3, :cond_11

    .end local v6    # "value":I
    :goto_4
    return v6

    .restart local v6    # "value":I
    :cond_6
    const/16 v7, 0x39

    .line 683
    if-gt v0, v7, :cond_4

    .line 684
    mul-int/lit8 v7, v6, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v6, v7, v8

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 686
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 687
    return v9

    .line 694
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 695
    return v9

    .line 698
    :cond_9
    if-eq v0, v12, :cond_5

    goto :goto_2

    .line 707
    :cond_a
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v7, 0x3

    .line 708
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 709
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 710
    if-nez v3, :cond_b

    .end local v6    # "value":I
    :goto_5
    return v6

    .restart local v6    # "value":I
    :cond_b
    neg-int v6, v6

    goto :goto_5

    .line 714
    :cond_c
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 715
    if-eq v0, v11, :cond_d

    const/16 v7, 0x5d

    .line 718
    if-eq v0, v7, :cond_e

    .line 721
    if-eq v0, v12, :cond_f

    const/16 v7, 0x1a

    .line 724
    if-eq v0, v7, :cond_10

    .line 727
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 728
    int-to-char v7, v4

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 729
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 730
    return v9

    .line 716
    :cond_d
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 717
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_6
    const/4 v7, 0x4

    .line 732
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_3

    :cond_e
    const/16 v7, 0xf

    .line 719
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 720
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_f
    const/16 v7, 0xd

    .line 722
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 723
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_10
    const/16 v7, 0x14

    .line 725
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_6

    .line 735
    :cond_11
    neg-int v6, v6

    goto/16 :goto_4
.end method

.method public scanFieldLong([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v8, 0x0

    .line 1053
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1054
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1055
    .local v5, "startPos":I
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    int-to-char v4, v8

    .line 1057
    .local v4, "startChar":C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v8, v9, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1062
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, p1

    add-int v1, v8, v9

    .line 1064
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 1066
    .local v0, "ch":C
    const/4 v3, 0x0

    .local v3, "negative":Z
    const/16 v8, 0x2d

    .line 1067
    if-eq v0, v8, :cond_2

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_0
    const/16 v8, 0x30

    .line 1073
    if-ge v0, v8, :cond_3

    .line 1096
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1097
    int-to-char v8, v4

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v8, -0x1

    .line 1098
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1099
    return-wide v8

    .end local v0    # "ch":C
    .end local v1    # "index":I
    .end local v3    # "negative":Z
    :cond_1
    const/4 v8, -0x2

    .line 1058
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1059
    return-wide v8

    .line 1068
    .restart local v0    # "ch":C
    .restart local v2    # "index":I
    .restart local v3    # "negative":Z
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 1069
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0x39

    .line 1073
    if-gt v0, v8, :cond_0

    .line 1074
    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    .line 1076
    .local v6, "value":J
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    const/16 v8, 0x30

    .line 1077
    if-ge v0, v8, :cond_6

    :cond_4
    const/16 v8, 0x2e

    .line 1079
    if-eq v0, v8, :cond_7

    const/16 v8, 0x2c

    .line 1083
    if-ne v0, v8, :cond_8

    .line 1084
    :cond_5
    add-int/lit8 v8, v2, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_2
    const-wide/16 v8, 0x0

    .line 1089
    cmp-long v8, v6, v8

    if-ltz v8, :cond_9

    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_a

    .line 1090
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    int-to-char v8, v4

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v8, -0x1

    .line 1092
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1093
    return-wide v8

    :cond_6
    const/16 v8, 0x39

    .line 1077
    if-gt v0, v8, :cond_4

    const-wide/16 v8, 0xa

    .line 1078
    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_7
    const/4 v8, -0x1

    .line 1080
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1081
    return-wide v8

    :cond_8
    const/16 v8, 0x7d

    .line 1083
    if-eq v0, v8, :cond_5

    goto :goto_2

    .line 1089
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    const/16 v8, 0x2c

    .line 1102
    if-eq v0, v8, :cond_b

    const/16 v8, 0x7d

    .line 1107
    if-eq v0, v8, :cond_d

    const/4 v8, -0x1

    .line 1128
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1129
    return-wide v8

    .line 1103
    :cond_b
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v8, 0x3

    .line 1104
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v8, 0x10

    .line 1105
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1106
    if-nez v3, :cond_c

    .end local v6    # "value":J
    :goto_4
    return-wide v6

    .restart local v6    # "value":J
    :cond_c
    neg-long v6, v6

    goto :goto_4

    .line 1108
    :cond_d
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    const/16 v8, 0x2c

    .line 1109
    if-eq v0, v8, :cond_e

    const/16 v8, 0x5d

    .line 1112
    if-eq v0, v8, :cond_f

    const/16 v8, 0x7d

    .line 1115
    if-eq v0, v8, :cond_10

    const/16 v8, 0x1a

    .line 1118
    if-eq v0, v8, :cond_11

    .line 1121
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1122
    int-to-char v8, v4

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v8, -0x1

    .line 1123
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v8, 0x0

    .line 1124
    return-wide v8

    :cond_e
    const/16 v8, 0x10

    .line 1110
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1111
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_5
    const/4 v8, 0x4

    .line 1126
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1132
    if-nez v3, :cond_12

    .end local v6    # "value":J
    :goto_6
    return-wide v6

    .restart local v6    # "value":J
    :cond_f
    const/16 v8, 0xf

    .line 1113
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1114
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_10
    const/16 v8, 0xd

    .line 1116
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1117
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_11
    const/16 v8, 0x14

    .line 1119
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_5

    .line 1132
    :cond_12
    neg-long v6, v6

    goto :goto_6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 16
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v14, 0x0

    .line 739
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 740
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 741
    .local v11, "startPos":I
    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    int-to-char v9, v14

    .line 743
    .local v9, "startChar":C
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 748
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v6, v14, v15

    .line 750
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .local v1, "ch":C
    const/16 v14, 0x22

    .line 751
    if-ne v1, v14, :cond_2

    .line 759
    move v10, v7

    .line 760
    .local v10, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .local v4, "endIndex":I
    const/4 v14, -0x1

    .line 761
    if-eq v4, v14, :cond_3

    .line 765
    sub-int v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    .line 766
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 788
    :goto_0
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/16 v14, 0x2c

    .line 790
    if-ne v1, v14, :cond_8

    .line 791
    :cond_0
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 792
    int-to-char v14, v1

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 793
    move-object v12, v13

    .local v12, "strVal":Ljava/lang/String;
    const/16 v14, 0x2c

    .line 801
    if-eq v1, v14, :cond_9

    const/16 v14, 0x7d

    .line 805
    if-eq v1, v14, :cond_a

    const/4 v14, -0x1

    .line 826
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .end local v1    # "ch":C
    .end local v4    # "endIndex":I
    .end local v7    # "index":I
    .end local v10    # "startIndex":I
    .end local v12    # "strVal":Ljava/lang/String;
    .end local v13    # "stringVal":Ljava/lang/String;
    :cond_1
    const/4 v14, -0x2

    .line 744
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .restart local v1    # "ch":C
    .restart local v7    # "index":I
    :cond_2
    const/4 v14, -0x1

    .line 752
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 762
    .restart local v4    # "endIndex":I
    .restart local v10    # "startIndex":I
    :cond_3
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .restart local v13    # "stringVal":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v8, 0x0

    .line 769
    .local v8, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_2
    if-gez v5, :cond_6

    .line 776
    :cond_5
    rem-int/lit8 v14, v8, 0x2

    if-eqz v14, :cond_7

    .line 779
    add-int/lit8 v14, v4, 0x1

    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    goto :goto_1

    .line 770
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_5

    .line 771
    add-int/lit8 v8, v8, 0x1

    .line 769
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 782
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    sub-int v3, v4, v14

    .line 783
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 785
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_8
    const/16 v14, 0x7d

    .line 790
    if-eq v1, v14, :cond_0

    const/4 v14, -0x1

    .line 795
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 802
    .restart local v12    # "strVal":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v14, 0x3

    .line 803
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 804
    return-object v12

    .line 806
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/16 v14, 0x2c

    .line 807
    if-eq v1, v14, :cond_b

    const/16 v14, 0x5d

    .line 810
    if-eq v1, v14, :cond_c

    const/16 v14, 0x7d

    .line 813
    if-eq v1, v14, :cond_d

    const/16 v14, 0x1a

    .line 816
    if-eq v1, v14, :cond_e

    .line 819
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 820
    int-to-char v14, v9

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v14, -0x1

    .line 821
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_b
    const/16 v14, 0x10

    .line 808
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 809
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_3
    const/4 v14, 0x4

    .line 824
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 831
    return-object v12

    :cond_c
    const/16 v14, 0xf

    .line 811
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 812
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_d
    const/16 v14, 0xd

    .line 814
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 815
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    :cond_e
    const/16 v14, 0x14

    .line 817
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 16
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 903
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-eqz v14, :cond_0

    const-class v14, Ljava/util/HashSet;

    .line 912
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_1

    const-class v14, Ljava/util/ArrayList;

    .line 914
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 918
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .local v9, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v7, v14, v15

    .line 926
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .local v1, "ch":C
    const/16 v14, 0x5b

    .line 928
    if-eq v1, v14, :cond_3

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v15, "ull"

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_11

    const/4 v14, -0x1

    .line 999
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 1000
    return-object v14

    .end local v1    # "ch":C
    .end local v8    # "index":I
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    const/4 v14, -0x2

    .line 906
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 907
    return-object v14

    .line 913
    :cond_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 915
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 921
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 920
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 929
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "ch":C
    .restart local v8    # "index":I
    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    :goto_1
    const/16 v14, 0x22

    .line 932
    if-eq v1, v14, :cond_6

    const/16 v14, 0x6e

    .line 966
    if-eq v1, v14, :cond_c

    :cond_4
    const/16 v14, 0x5d

    .line 970
    if-eq v1, v14, :cond_d

    :cond_5
    const/4 v14, -0x1

    .line 974
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 975
    return-object v14

    .line 933
    :cond_6
    move v12, v8

    .line 934
    .local v12, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    .local v5, "endIndex":I
    const/4 v14, -0x1

    .line 935
    if-eq v5, v14, :cond_7

    .line 939
    sub-int v14, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    .line 940
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 962
    :goto_2
    add-int/lit8 v7, v5, 0x1

    .line 963
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .line 965
    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v5    # "endIndex":I
    .end local v12    # "startIndex":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :goto_3
    const/16 v14, 0x2c

    .line 978
    if-eq v1, v14, :cond_f

    const/16 v14, 0x5d

    .line 983
    if-eq v1, v14, :cond_10

    const/4 v14, -0x1

    .line 991
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 992
    return-object v14

    .line 936
    .restart local v5    # "endIndex":I
    .restart local v12    # "startIndex":I
    :cond_7
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .restart local v13    # "stringVal":Ljava/lang/String;
    :cond_8
    :goto_4
    const/4 v10, 0x0

    .line 943
    .local v10, "slashCount":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_5
    if-gez v6, :cond_a

    .line 950
    :cond_9
    rem-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_b

    .line 953
    add-int/lit8 v14, v5, 0x1

    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    goto :goto_4

    .line 944
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_9

    .line 945
    add-int/lit8 v10, v10, 0x1

    .line 943
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 956
    :cond_b
    sub-int v3, v5, v12

    .line 957
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 959
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 966
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    .end local v12    # "startIndex":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v15, "ull"

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 967
    add-int/lit8 v7, v8, 0x3

    .line 968
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/4 v14, 0x0

    .line 969
    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 970
    :cond_d
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 971
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .line 1003
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v14, 0x2c

    .line 1004
    if-eq v1, v14, :cond_12

    const/16 v14, 0x7d

    .line 1008
    if-eq v1, v14, :cond_13

    const/4 v14, -0x1

    .line 1045
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 1046
    return-object v14

    .line 979
    .end local v7    # "index":I
    .restart local v8    # "index":I
    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_f
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v8, v7

    .line 980
    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto/16 :goto_1

    .line 984
    :cond_10
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .line 985
    :goto_7
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 986
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_7

    .line 995
    .end local v7    # "index":I
    .restart local v8    # "index":I
    :cond_11
    add-int/lit8 v7, v8, 0x3

    .line 996
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/4 v9, 0x0

    .local v9, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move v7, v8

    .line 997
    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_6

    .line 1005
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v14, 0x3

    .line 1006
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1007
    return-object v9

    .line 1009
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    :cond_14
    const/16 v14, 0x2c

    .line 1011
    if-eq v1, v14, :cond_15

    const/16 v14, 0x5d

    .line 1015
    if-eq v1, v14, :cond_16

    const/16 v14, 0x7d

    .line 1019
    if-eq v1, v14, :cond_17

    const/16 v14, 0x1a

    .line 1023
    if-eq v1, v14, :cond_18

    .line 1028
    const/4 v11, 0x0

    .line 1029
    .local v11, "space":Z
    :goto_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-nez v14, :cond_19

    .line 1034
    if-nez v11, :cond_14

    const/4 v14, -0x1

    .line 1038
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v14, 0x0

    .line 1039
    return-object v14

    .end local v11    # "space":Z
    :cond_15
    const/16 v14, 0x10

    .line 1012
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1013
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_9
    const/4 v14, 0x4

    .line 1043
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1049
    return-object v9

    :cond_16
    const/16 v14, 0xf

    .line 1016
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1017
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_17
    const/16 v14, 0xd

    .line 1020
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1021
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_18
    const/16 v14, 0x14

    .line 1024
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1025
    int-to-char v14, v1

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    .line 1030
    .restart local v11    # "space":Z
    :cond_19
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .line 1031
    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1032
    const/4 v11, 0x1

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto/16 :goto_8
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 12
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x22

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 835
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 837
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v6, v7, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 842
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v7, p1

    add-int v2, v6, v7

    .line 844
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 845
    .local v0, "ch":C
    if-ne v0, v10, :cond_1

    .line 851
    move v4, v3

    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "hash":I
    move v2, v3

    .line 854
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 855
    if-eq v0, v10, :cond_2

    .line 863
    mul-int/lit8 v6, v1, 0x1f

    add-int v1, v6, v0

    const/16 v6, 0x5c

    .line 865
    if-eq v0, v6, :cond_3

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .end local v0    # "ch":C
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "start":I
    :cond_0
    const/4 v6, -0x2

    .line 838
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 839
    return-object v8

    .line 846
    .restart local v0    # "ch":C
    .restart local v3    # "index":I
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 847
    return-object v8

    .line 856
    .restart local v1    # "hash":I
    .restart local v4    # "start":I
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 857
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 859
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    sub-int v7, v3, v4

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v6, v4, v7, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "strVal":Ljava/lang/String;
    if-eq v0, v11, :cond_4

    const/16 v6, 0x7d

    .line 875
    if-eq v0, v6, :cond_5

    .line 894
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 895
    return-object v8

    .line 866
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_3
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 867
    return-object v8

    .line 872
    .restart local v5    # "strVal":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v6, 0x3

    .line 873
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 874
    return-object v5

    .line 876
    :cond_5
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 877
    if-eq v0, v11, :cond_6

    const/16 v6, 0x5d

    .line 880
    if-eq v0, v6, :cond_7

    const/16 v6, 0x7d

    .line 883
    if-eq v0, v6, :cond_8

    const/16 v6, 0x1a

    .line 886
    if-eq v0, v6, :cond_9

    .line 889
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 890
    return-object v8

    :cond_6
    const/16 v6, 0x10

    .line 878
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 879
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_1
    const/4 v6, 0x4

    .line 892
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 898
    return-object v5

    :cond_7
    const/16 v6, 0xf

    .line 881
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 882
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_8
    const/16 v6, 0xd

    .line 884
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 885
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_1

    :cond_9
    const/16 v6, 0x14

    .line 887
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_1
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 68
    .param p1, "strict"    # Z

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    sub-int v56, v12, v19

    .line 179
    .local v56, "rest":I
    if-eqz p1, :cond_2

    :cond_0
    const/16 v12, 0x8

    .line 215
    move/from16 v0, v56

    if-ne v0, v12, :cond_7

    .line 216
    :cond_1
    if-nez p1, :cond_f

    .line 220
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v4, v12

    .line 221
    .local v4, "y0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v5, v12

    .line 222
    .local v5, "y1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v6, v12

    .line 223
    .local v6, "y2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v7, v12

    .line 224
    .local v7, "y3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v8, v12

    .line 225
    .local v8, "M0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v9, v12

    .line 226
    .local v9, "M1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v10, v12

    .line 227
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v11, v12

    .line 229
    .local v11, "d1":C
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 233
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v12, 0x8

    .line 236
    move/from16 v0, v56

    if-ne v0, v12, :cond_11

    const/16 v46, 0x0

    .local v46, "hour":I
    const/16 v52, 0x0

    .local v52, "minute":I
    const/16 v57, 0x0

    .local v57, "seconds":I
    const/16 v48, 0x0

    .line 277
    .local v48, "millis":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    move/from16 v0, v19

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v52

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    move/from16 v0, v19

    move/from16 v1, v57

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    .line 282
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 283
    const/4 v12, 0x1

    return v12

    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v46    # "hour":I
    .end local v48    # "millis":I
    .end local v52    # "minute":I
    .end local v57    # "seconds":I
    :cond_2
    const/16 v12, 0xd

    .line 179
    move/from16 v0, v56

    if-le v0, v12, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v32, v0

    .line 181
    .local v32, "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v33, v0

    .line 182
    .local v33, "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v34, v0

    .line 183
    .local v34, "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v35, v0

    .line 184
    .local v35, "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v36, v0

    .line 185
    .local v36, "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v37, v0

    .line 187
    .local v37, "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v56

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v42, v0

    .line 188
    .local v42, "c_r0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v56

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v43, v0

    .local v43, "c_r1":C
    const/16 v12, 0x2f

    .line 189
    move/from16 v0, v32

    if-ne v0, v12, :cond_0

    const/16 v12, 0x44

    move/from16 v0, v33

    if-ne v0, v12, :cond_0

    const/16 v12, 0x61

    move/from16 v0, v34

    if-ne v0, v12, :cond_0

    const/16 v12, 0x74

    move/from16 v0, v35

    if-ne v0, v12, :cond_0

    const/16 v12, 0x65

    move/from16 v0, v36

    if-ne v0, v12, :cond_0

    const/16 v12, 0x28

    move/from16 v0, v37

    if-ne v0, v12, :cond_0

    const/16 v12, 0x2f

    move/from16 v0, v42

    if-ne v0, v12, :cond_0

    const/16 v12, 0x29

    move/from16 v0, v43

    if-ne v0, v12, :cond_0

    const/16 v55, -0x1

    .local v55, "plusIndex":I
    const/16 v47, 0x6

    .line 192
    .local v47, "i":I
    :goto_1
    move/from16 v0, v47

    move/from16 v1, v56

    if-lt v0, v1, :cond_4

    :cond_3
    const/4 v12, -0x1

    .line 200
    move/from16 v0, v55

    if-eq v0, v12, :cond_6

    .line 203
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v54, v12, 0x6

    .line 204
    .local v54, "offset":I
    sub-int v12, v55, v54

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v53

    .line 205
    .local v53, "numberText":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    .line 207
    .local v50, "millis":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v50

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v12, 0x5

    .line 210
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 211
    const/4 v12, 0x1

    return v12

    .line 193
    .end local v50    # "millis":J
    .end local v53    # "numberText":Ljava/lang/String;
    .end local v54    # "offset":I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v47

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v31, v0

    .local v31, "c":C
    const/16 v12, 0x2b

    .line 194
    move/from16 v0, v31

    if-eq v0, v12, :cond_5

    const/16 v12, 0x30

    .line 196
    move/from16 v0, v31

    if-lt v0, v12, :cond_3

    const/16 v12, 0x39

    move/from16 v0, v31

    if-gt v0, v12, :cond_3

    .line 192
    :goto_2
    add-int/lit8 v47, v47, 0x1

    goto :goto_1

    .line 195
    :cond_5
    move/from16 v55, v47

    goto :goto_2

    .line 201
    .end local v31    # "c":C
    :cond_6
    const/4 v12, 0x0

    return v12

    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v34    # "c2":C
    .end local v35    # "c3":C
    .end local v36    # "c4":C
    .end local v37    # "c5":C
    .end local v42    # "c_r0":C
    .end local v43    # "c_r1":C
    .end local v47    # "i":I
    .end local v55    # "plusIndex":I
    :cond_7
    const/16 v12, 0xe

    .line 215
    move/from16 v0, v56

    if-eq v0, v12, :cond_1

    const/16 v12, 0x11

    move/from16 v0, v56

    if-eq v0, v12, :cond_1

    const/16 v12, 0x9

    .line 286
    move/from16 v0, v56

    if-lt v0, v12, :cond_1a

    .line 290
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v32, v0

    .line 291
    .restart local v32    # "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v33, v0

    .line 292
    .restart local v33    # "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v34, v0

    .line 293
    .restart local v34    # "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v35, v0

    .line 294
    .restart local v35    # "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v36, v0

    .line 295
    .restart local v36    # "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v37, v0

    .line 296
    .restart local v37    # "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v38, v0

    .line 297
    .local v38, "c6":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v39, v0

    .line 298
    .local v39, "c7":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v40, v0

    .line 299
    .local v40, "c8":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v41, v0

    .local v41, "c9":C
    const/16 v12, 0x2d

    .line 302
    move/from16 v0, v36

    if-eq v0, v12, :cond_1b

    :cond_8
    const/16 v12, 0x2f

    move/from16 v0, v36

    if-eq v0, v12, :cond_1d

    :goto_3
    const/16 v12, 0x2e

    .line 313
    move/from16 v0, v34

    if-eq v0, v12, :cond_1e

    :cond_9
    const/16 v12, 0x2d

    move/from16 v0, v34

    if-eq v0, v12, :cond_20

    :goto_4
    const/16 v12, 0x5e74

    .line 325
    move/from16 v0, v36

    if-ne v0, v12, :cond_21

    .line 326
    :cond_a
    move/from16 v0, v32

    int-to-char v4, v0

    .line 327
    .restart local v4    # "y0":C
    move/from16 v0, v33

    int-to-char v5, v0

    .line 328
    .restart local v5    # "y1":C
    move/from16 v0, v34

    int-to-char v6, v0

    .line 329
    .restart local v6    # "y2":C
    move/from16 v0, v35

    int-to-char v7, v0

    .restart local v7    # "y3":C
    const/16 v12, 0x6708

    .line 331
    move/from16 v0, v39

    if-ne v0, v12, :cond_22

    .line 332
    :cond_b
    move/from16 v0, v37

    int-to-char v8, v0

    .line 333
    .restart local v8    # "M0":C
    move/from16 v0, v38

    int-to-char v9, v0

    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    .line 334
    move/from16 v0, v41

    if-ne v0, v12, :cond_25

    .line 335
    :cond_c
    const/16 v10, 0x30

    .line 336
    .local v10, "d0":C
    move/from16 v0, v40

    int-to-char v11, v0

    .line 363
    .end local v8    # "M0":C
    .end local v10    # "d0":C
    .restart local v11    # "d1":C
    :goto_5
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v19, p0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    .line 367
    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 369
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v58, v0

    .local v58, "t":C
    const/16 v12, 0x54

    .line 370
    move/from16 v0, v58

    if-ne v0, v12, :cond_2d

    .line 371
    :cond_d
    sget v12, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v56

    if-lt v0, v12, :cond_30

    .line 402
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-ne v12, v0, :cond_37

    .line 405
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-ne v12, v0, :cond_38

    .line 409
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v13, v12

    .line 410
    .local v13, "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v14, v12

    .line 411
    .local v14, "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v15, v12

    .line 412
    .local v15, "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v16, v0

    .line 413
    .local v16, "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v17, v0

    .line 414
    .local v17, "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v18, v0

    .local v18, "s1":C
    move-object/from16 v12, p0

    .line 416
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-eqz v12, :cond_39

    move-object/from16 v12, p0

    .line 420
    invoke-virtual/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 422
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v44, v0

    .local v44, "dot":C
    const/16 v12, 0x2e

    .line 423
    move/from16 v0, v44

    if-eq v0, v12, :cond_3a

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 430
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v12, 0x5

    .line 432
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v12, 0x5a

    .line 434
    move/from16 v0, v44

    if-eq v0, v12, :cond_3d

    .line 444
    :cond_e
    :goto_6
    const/4 v12, 0x1

    return v12

    .line 217
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v9    # "M1":C
    .end local v11    # "d1":C
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v34    # "c2":C
    .end local v35    # "c3":C
    .end local v36    # "c4":C
    .end local v37    # "c5":C
    .end local v38    # "c6":C
    .end local v39    # "c7":C
    .end local v40    # "c8":C
    .end local v41    # "c9":C
    .end local v44    # "dot":C
    .end local v58    # "t":C
    :cond_f
    const/4 v12, 0x0

    return v12

    .line 230
    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .local v10, "d0":C
    .restart local v11    # "d1":C
    :cond_10
    const/4 v12, 0x0

    return v12

    .line 237
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v13, v12

    .line 238
    .restart local v13    # "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v14, v12

    .line 239
    .restart local v14    # "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v15, v12

    .line 240
    .restart local v15    # "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v16, v0

    .line 241
    .restart local v16    # "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v17, v0

    .line 242
    .restart local v17    # "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v18, v0

    .restart local v18    # "s1":C
    move-object/from16 v12, p0

    .line 244
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-eqz v12, :cond_12

    const/16 v12, 0x11

    .line 248
    move/from16 v0, v56

    if-eq v0, v12, :cond_13

    const/16 v48, 0x0

    .line 267
    .restart local v48    # "millis":I
    :goto_7
    add-int/lit8 v12, v13, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v14, -0x30

    add-int v46, v12, v19

    .line 268
    .restart local v46    # "hour":I
    add-int/lit8 v12, v15, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v16, -0x30

    add-int v52, v12, v19

    .line 269
    .restart local v52    # "minute":I
    add-int/lit8 v12, v17, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v18, -0x30

    add-int v57, v12, v19

    .restart local v57    # "seconds":I
    goto/16 :goto_0

    .line 245
    .end local v46    # "hour":I
    .end local v48    # "millis":I
    .end local v52    # "minute":I
    .end local v57    # "seconds":I
    :cond_12
    const/4 v12, 0x0

    return v12

    .line 249
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v28, v0

    .line 250
    .local v28, "S0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v29, v0

    .line 251
    .local v29, "S1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v30, v0

    .local v30, "S2":C
    const/16 v12, 0x30

    .line 252
    move/from16 v0, v28

    if-ge v0, v12, :cond_15

    .line 253
    :cond_14
    const/4 v12, 0x0

    return v12

    :cond_15
    const/16 v12, 0x39

    .line 252
    move/from16 v0, v28

    if-gt v0, v12, :cond_14

    const/16 v12, 0x30

    .line 255
    move/from16 v0, v29

    if-ge v0, v12, :cond_17

    .line 256
    :cond_16
    const/4 v12, 0x0

    return v12

    :cond_17
    const/16 v12, 0x39

    .line 255
    move/from16 v0, v29

    if-gt v0, v12, :cond_16

    const/16 v12, 0x30

    .line 258
    move/from16 v0, v30

    if-ge v0, v12, :cond_19

    .line 259
    :cond_18
    const/4 v12, 0x0

    return v12

    :cond_19
    const/16 v12, 0x39

    .line 258
    move/from16 v0, v30

    if-gt v0, v12, :cond_18

    .line 262
    add-int/lit8 v12, v28, -0x30

    mul-int/lit8 v12, v12, 0x64

    add-int/lit8 v19, v29, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v12, v12, v19

    add-int/lit8 v19, v30, -0x30

    add-int v48, v12, v19

    .restart local v48    # "millis":I
    goto/16 :goto_7

    .line 287
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v28    # "S0":C
    .end local v29    # "S1":C
    .end local v30    # "S2":C
    .end local v48    # "millis":I
    :cond_1a
    const/4 v12, 0x0

    return v12

    .restart local v32    # "c0":C
    .restart local v33    # "c1":C
    .restart local v34    # "c2":C
    .restart local v35    # "c3":C
    .restart local v36    # "c4":C
    .restart local v37    # "c5":C
    .restart local v38    # "c6":C
    .restart local v39    # "c7":C
    .restart local v40    # "c8":C
    .restart local v41    # "c9":C
    :cond_1b
    const/16 v12, 0x2d

    .line 302
    move/from16 v0, v39

    if-ne v0, v12, :cond_8

    .line 305
    :cond_1c
    move/from16 v0, v32

    int-to-char v4, v0

    .line 306
    .restart local v4    # "y0":C
    move/from16 v0, v33

    int-to-char v5, v0

    .line 307
    .restart local v5    # "y1":C
    move/from16 v0, v34

    int-to-char v6, v0

    .line 308
    .restart local v6    # "y2":C
    move/from16 v0, v35

    int-to-char v7, v0

    .line 309
    .restart local v7    # "y3":C
    move/from16 v0, v37

    int-to-char v8, v0

    .line 310
    .restart local v8    # "M0":C
    move/from16 v0, v38

    int-to-char v9, v0

    .line 311
    .restart local v9    # "M1":C
    move/from16 v0, v40

    int-to-char v10, v0

    .line 312
    .restart local v10    # "d0":C
    move/from16 v0, v41

    int-to-char v11, v0

    .restart local v11    # "d1":C
    goto/16 :goto_5

    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1d
    const/16 v12, 0x2f

    .line 302
    move/from16 v0, v39

    if-eq v0, v12, :cond_1c

    goto/16 :goto_3

    :cond_1e
    const/16 v12, 0x2e

    .line 313
    move/from16 v0, v37

    if-ne v0, v12, :cond_9

    .line 316
    :cond_1f
    move/from16 v0, v32

    int-to-char v10, v0

    .line 317
    .restart local v10    # "d0":C
    move/from16 v0, v33

    int-to-char v11, v0

    .line 318
    .restart local v11    # "d1":C
    move/from16 v0, v35

    int-to-char v8, v0

    .line 319
    .restart local v8    # "M0":C
    move/from16 v0, v36

    int-to-char v9, v0

    .line 320
    .restart local v9    # "M1":C
    move/from16 v0, v38

    int-to-char v4, v0

    .line 321
    .restart local v4    # "y0":C
    move/from16 v0, v39

    int-to-char v5, v0

    .line 322
    .restart local v5    # "y1":C
    move/from16 v0, v40

    int-to-char v6, v0

    .line 323
    .restart local v6    # "y2":C
    move/from16 v0, v41

    int-to-char v7, v0

    .restart local v7    # "y3":C
    goto/16 :goto_5

    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_20
    const/16 v12, 0x2d

    .line 313
    move/from16 v0, v37

    if-eq v0, v12, :cond_1f

    goto/16 :goto_4

    :cond_21
    const v12, 0xb144

    .line 325
    move/from16 v0, v36

    if-eq v0, v12, :cond_a

    .line 359
    const/4 v12, 0x0

    return v12

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    :cond_22
    const v12, 0xc6d4

    .line 331
    move/from16 v0, v39

    if-eq v0, v12, :cond_b

    const/16 v12, 0x6708

    .line 343
    move/from16 v0, v38

    if-ne v0, v12, :cond_28

    .line 344
    :cond_23
    const/16 v8, 0x30

    .line 345
    .local v8, "M0":C
    move/from16 v0, v37

    int-to-char v9, v0

    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    .line 346
    move/from16 v0, v40

    if-ne v0, v12, :cond_29

    .line 347
    :cond_24
    const/16 v10, 0x30

    .line 348
    .local v10, "d0":C
    move/from16 v0, v39

    int-to-char v11, v0

    .restart local v11    # "d1":C
    goto/16 :goto_5

    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .local v8, "M0":C
    :cond_25
    const v12, 0xc77c

    .line 334
    move/from16 v0, v41

    if-eq v0, v12, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x65e5

    move/from16 v0, v19

    if-ne v12, v0, :cond_27

    .line 338
    :cond_26
    move/from16 v0, v40

    int-to-char v10, v0

    .line 339
    .local v10, "d0":C
    move/from16 v0, v41

    int-to-char v11, v0

    .restart local v11    # "d1":C
    goto/16 :goto_5

    .line 337
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_27
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const v19, 0xc77c

    move/from16 v0, v19

    if-eq v12, v0, :cond_26

    .line 341
    const/4 v12, 0x0

    return v12

    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_28
    const v12, 0xc6d4

    .line 343
    move/from16 v0, v38

    if-eq v0, v12, :cond_23

    .line 356
    const/4 v12, 0x0

    return v12

    .local v8, "M0":C
    .restart local v9    # "M1":C
    :cond_29
    const v12, 0xc77c

    .line 346
    move/from16 v0, v40

    if-eq v0, v12, :cond_24

    const/16 v12, 0x65e5

    .line 349
    move/from16 v0, v41

    if-ne v0, v12, :cond_2b

    .line 350
    :cond_2a
    move/from16 v0, v39

    int-to-char v10, v0

    .line 351
    .restart local v10    # "d0":C
    move/from16 v0, v40

    int-to-char v11, v0

    .restart local v11    # "d1":C
    goto/16 :goto_5

    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2b
    const v12, 0xc77c

    .line 349
    move/from16 v0, v41

    if-eq v0, v12, :cond_2a

    .line 353
    const/4 v12, 0x0

    return v12

    .line 364
    .end local v8    # "M0":C
    .restart local v11    # "d1":C
    :cond_2c
    const/4 v12, 0x0

    return v12

    .restart local v58    # "t":C
    :cond_2d
    const/16 v12, 0x20

    .line 370
    move/from16 v0, v58

    if-eq v0, v12, :cond_2f

    :goto_8
    const/16 v12, 0x22

    .line 374
    move/from16 v0, v58

    if-ne v0, v12, :cond_31

    .line 375
    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 380
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v12, 0x5

    .line 382
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 383
    const/4 v12, 0x1

    return v12

    .line 370
    :cond_2f
    if-eqz p1, :cond_d

    goto :goto_8

    .line 372
    :cond_30
    const/4 v12, 0x0

    return v12

    :cond_31
    const/16 v12, 0x1a

    .line 374
    move/from16 v0, v58

    if-eq v0, v12, :cond_2e

    const/16 v12, 0x65e5

    move/from16 v0, v58

    if-eq v0, v12, :cond_2e

    const v12, 0xc77c

    move/from16 v0, v58

    if-eq v0, v12, :cond_2e

    const/16 v12, 0x2b

    .line 384
    move/from16 v0, v58

    if-ne v0, v12, :cond_33

    .line 385
    :cond_32
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/16 v19, 0x10

    move/from16 v0, v19

    if-eq v12, v0, :cond_34

    .line 397
    const/4 v12, 0x0

    return v12

    :cond_33
    const/16 v12, 0x2d

    .line 384
    move/from16 v0, v58

    if-eq v0, v12, :cond_32

    .line 399
    const/4 v12, 0x0

    return v12

    .line 386
    :cond_34
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_36

    .line 389
    :cond_35
    const/4 v12, 0x0

    return v12

    .line 386
    :cond_36
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v12, v0, :cond_35

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v12, v0, :cond_35

    .line 392
    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    const/16 v25, 0x30

    move-object/from16 v19, p0

    invoke-virtual/range {v19 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 394
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 395
    const/4 v12, 0x1

    return v12

    .line 403
    :cond_37
    const/4 v12, 0x0

    return v12

    .line 406
    :cond_38
    const/4 v12, 0x0

    return v12

    .line 417
    .restart local v13    # "h0":C
    .restart local v14    # "h1":C
    .restart local v15    # "m0":C
    .restart local v16    # "m1":C
    .restart local v17    # "s0":C
    .restart local v18    # "s1":C
    :cond_39
    const/4 v12, 0x0

    return v12

    .line 424
    .restart local v44    # "dot":C
    :cond_3a
    sget v12, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v56

    if-lt v0, v12, :cond_3c

    .line 447
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v28, v0

    .restart local v28    # "S0":C
    const/16 v12, 0x30

    .line 448
    move/from16 v0, v28

    if-ge v0, v12, :cond_3e

    .line 449
    :cond_3b
    const/4 v12, 0x0

    return v12

    .line 425
    .end local v28    # "S0":C
    :cond_3c
    const/4 v12, 0x0

    return v12

    .line 436
    :cond_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    .line 437
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v66

    .line 438
    .local v66, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v66

    array-length v12, v0

    if-lez v12, :cond_e

    const/4 v12, 0x0

    .line 439
    aget-object v12, v66, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v64

    .line 440
    .local v64, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v64

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_6

    .end local v64    # "timeZone":Ljava/util/TimeZone;
    .end local v66    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v28    # "S0":C
    :cond_3e
    const/16 v12, 0x39

    .line 448
    move/from16 v0, v28

    if-gt v0, v12, :cond_3b

    .line 451
    add-int/lit8 v48, v28, -0x30

    .restart local v48    # "millis":I
    const/16 v49, 0x1

    .line 455
    .local v49, "millisLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v29, v0

    .restart local v29    # "S1":C
    const/16 v12, 0x30

    .line 456
    move/from16 v0, v29

    if-ge v0, v12, :cond_43

    :cond_3f
    :goto_9
    const/4 v12, 0x2

    .line 462
    move/from16 v0, v49

    if-eq v0, v12, :cond_44

    .line 470
    :cond_40
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v67, 0x0

    .line 473
    .local v67, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v65, v0

    .local v65, "timeZoneFlag":C
    const/16 v12, 0x2b

    .line 474
    move/from16 v0, v65

    if-ne v0, v12, :cond_45

    .line 475
    :cond_41
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v59, v0

    .local v59, "t0":C
    const/16 v12, 0x30

    .line 476
    move/from16 v0, v59

    if-ge v0, v12, :cond_48

    .line 477
    :cond_42
    const/4 v12, 0x0

    return v12

    .end local v59    # "t0":C
    .end local v65    # "timeZoneFlag":C
    .end local v67    # "timzeZoneLength":I
    :cond_43
    const/16 v12, 0x39

    .line 456
    move/from16 v0, v29

    if-gt v0, v12, :cond_3f

    .line 457
    mul-int/lit8 v12, v48, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v48, v12, v19

    const/16 v49, 0x2

    .line 458
    goto :goto_9

    .line 463
    :cond_44
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v30, v0

    .restart local v30    # "S2":C
    const/16 v12, 0x30

    .line 464
    move/from16 v0, v30

    if-lt v0, v12, :cond_40

    const/16 v12, 0x39

    move/from16 v0, v30

    if-gt v0, v12, :cond_40

    .line 465
    mul-int/lit8 v12, v48, 0xa

    add-int/lit8 v19, v30, -0x30

    add-int v48, v12, v19

    const/16 v49, 0x3

    .line 466
    goto :goto_a

    .end local v30    # "S2":C
    .restart local v65    # "timeZoneFlag":C
    .restart local v67    # "timzeZoneLength":I
    :cond_45
    const/16 v12, 0x2d

    .line 474
    move/from16 v0, v65

    if-eq v0, v12, :cond_41

    const/16 v12, 0x5a

    .line 509
    move/from16 v0, v65

    if-eq v0, v12, :cond_50

    .line 520
    :cond_46
    :goto_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0x14

    add-int v19, v19, v67

    add-int v12, v12, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v45, v0

    .local v45, "end":C
    const/16 v12, 0x1a

    .line 521
    move/from16 v0, v45

    if-ne v0, v12, :cond_51

    .line 524
    :cond_47
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0x14

    add-int v19, v19, v67

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v12, 0x5

    .line 526
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 527
    const/4 v12, 0x1

    return v12

    .end local v45    # "end":C
    .restart local v59    # "t0":C
    :cond_48
    const/16 v12, 0x31

    .line 476
    move/from16 v0, v59

    if-gt v0, v12, :cond_42

    .line 480
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v60, v0

    .local v60, "t1":C
    const/16 v12, 0x30

    .line 481
    move/from16 v0, v60

    if-ge v0, v12, :cond_4a

    .line 482
    :cond_49
    const/4 v12, 0x0

    return v12

    :cond_4a
    const/16 v12, 0x39

    .line 481
    move/from16 v0, v60

    if-gt v0, v12, :cond_49

    .line 485
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v61, v0

    .local v61, "t2":C
    const/16 v12, 0x3a

    .line 486
    move/from16 v0, v61

    if-eq v0, v12, :cond_4b

    const/16 v12, 0x30

    .line 497
    move/from16 v0, v61

    if-eq v0, v12, :cond_4e

    const/16 v67, 0x3

    .line 507
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v65

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    goto/16 :goto_b

    .line 487
    :cond_4b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v62, v0

    .local v62, "t3":C
    const/16 v12, 0x30

    .line 488
    move/from16 v0, v62

    if-ne v0, v12, :cond_4c

    .line 492
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v63, v0

    .local v63, "t4":C
    const/16 v12, 0x30

    .line 493
    move/from16 v0, v63

    if-ne v0, v12, :cond_4d

    const/16 v67, 0x6

    .line 496
    goto :goto_c

    .line 489
    .end local v63    # "t4":C
    :cond_4c
    const/4 v12, 0x0

    return v12

    .line 494
    .restart local v63    # "t4":C
    :cond_4d
    const/4 v12, 0x0

    return v12

    .line 498
    .end local v62    # "t3":C
    .end local v63    # "t4":C
    :cond_4e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    move/from16 v62, v0

    .restart local v62    # "t3":C
    const/16 v12, 0x30

    .line 499
    move/from16 v0, v62

    if-ne v0, v12, :cond_4f

    const/16 v67, 0x5

    .line 502
    goto :goto_c

    .line 500
    :cond_4f
    const/4 v12, 0x0

    return v12

    .end local v59    # "t0":C
    .end local v60    # "t1":C
    .end local v61    # "t2":C
    .end local v62    # "t3":C
    :cond_50
    const/16 v67, 0x1

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_46

    const/4 v12, 0x0

    .line 512
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v66

    .line 513
    .restart local v66    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v66

    array-length v12, v0

    if-lez v12, :cond_46

    const/4 v12, 0x0

    .line 514
    aget-object v12, v66, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v64

    .line 515
    .restart local v64    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v64

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_b

    .end local v64    # "timeZone":Ljava/util/TimeZone;
    .end local v66    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v45    # "end":C
    :cond_51
    const/16 v12, 0x22

    .line 521
    move/from16 v0, v45

    if-eq v0, v12, :cond_47

    .line 522
    const/4 v12, 0x0

    return v12
.end method

.method public final scanInt(C)I
    .locals 11
    .param p1, "expectNext"    # C

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1222
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1224
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1225
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "chLocal":C
    const/16 v6, 0x2d

    .line 1227
    if-eq v0, v6, :cond_1

    move v1, v5

    .line 1228
    .local v1, "negative":Z
    :goto_0
    if-nez v1, :cond_2

    move v2, v3

    .line 1233
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 1251
    :cond_0
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1252
    return v5

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/4 v1, 0x1

    .line 1227
    goto :goto_0

    .line 1229
    .restart local v1    # "negative":Z
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    goto :goto_1

    .line 1233
    :cond_3
    if-gt v0, v10, :cond_0

    .line 1234
    add-int/lit8 v4, v0, -0x30

    .line 1236
    .local v4, "value":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 1237
    if-ge v0, v9, :cond_5

    :cond_4
    const/16 v6, 0x2e

    .line 1239
    if-eq v0, v6, :cond_6

    .line 1246
    if-ltz v4, :cond_7

    .line 1256
    :goto_3
    if-eq v0, p1, :cond_8

    .line 1263
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1267
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1268
    if-nez v1, :cond_b

    .end local v4    # "value":I
    :goto_4
    return v4

    .line 1237
    .restart local v4    # "value":I
    :cond_5
    if-gt v0, v10, :cond_4

    .line 1238
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1240
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1241
    return v5

    .line 1247
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1248
    return v5

    .line 1257
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1258
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v5, 0x3

    .line 1259
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v5, 0x10

    .line 1260
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1261
    if-nez v1, :cond_9

    .end local v4    # "value":I
    :goto_5
    return v4

    .restart local v4    # "value":I
    :cond_9
    neg-int v4, v4

    goto :goto_5

    .line 1264
    :cond_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    int-to-char v0, v5

    move v3, v2

    .line 1265
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    .line 1268
    :cond_b
    neg-int v4, v4

    goto :goto_4
.end method

.method public scanLong(C)J
    .locals 10
    .param p1, "expectNextChar"    # C

    .prologue
    const/4 v6, 0x0

    .line 1274
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1276
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1277
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "chLocal":C
    const/16 v6, 0x2d

    .line 1279
    if-eq v0, v6, :cond_1

    const/4 v1, 0x0

    .line 1280
    .local v1, "negative":Z
    :goto_0
    if-nez v1, :cond_2

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    const/16 v6, 0x30

    .line 1285
    if-ge v0, v6, :cond_3

    :cond_0
    const/4 v6, -0x1

    .line 1303
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v6, 0x0

    .line 1304
    return-wide v6

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/4 v1, 0x1

    .line 1279
    goto :goto_0

    .line 1281
    .restart local v1    # "negative":Z
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    goto :goto_1

    :cond_3
    const/16 v6, 0x39

    .line 1285
    if-gt v0, v6, :cond_0

    .line 1286
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 1288
    .local v4, "value":J
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    const/16 v6, 0x30

    .line 1289
    if-ge v0, v6, :cond_5

    :cond_4
    const/16 v6, 0x2e

    .line 1291
    if-eq v0, v6, :cond_6

    const-wide/16 v6, 0x0

    .line 1298
    cmp-long v6, v4, v6

    if-ltz v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_9

    const/4 v6, -0x1

    .line 1299
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v6, 0x0

    .line 1300
    return-wide v6

    :cond_5
    const/16 v6, 0x39

    .line 1289
    if-gt v0, v6, :cond_4

    const-wide/16 v6, 0xa

    .line 1290
    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    const/4 v6, -0x1

    .line 1292
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v6, 0x0

    .line 1293
    return-wide v6

    .line 1298
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 1316
    :cond_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    move v3, v2

    .line 1308
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    if-eq v0, p1, :cond_a

    .line 1315
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, -0x1

    .line 1320
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1321
    return-wide v4

    .line 1309
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1310
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v6, 0x3

    .line 1311
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v6, 0x10

    .line 1312
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1313
    if-nez v1, :cond_b

    .end local v4    # "value":J
    :goto_4
    return-wide v4

    .restart local v4    # "value":J
    :cond_b
    neg-long v4, v4

    goto :goto_4
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    .line 531
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 532
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 533
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    .line 534
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 535
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 536
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 537
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 6
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .prologue
    const/4 v5, 0x0

    .line 540
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .local v2, "timeZoneOffset":I
    const/16 v3, 0x2d

    .line 541
    if-eq p1, v3, :cond_1

    .line 545
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 552
    :cond_0
    :goto_1
    return-void

    .line 542
    :cond_1
    neg-int v2, v2

    goto :goto_0

    .line 546
    :cond_2
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 548
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 549
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 136
    new-array v0, p2, [C

    .line 137
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 138
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 133
    .end local v0    # "chars":[C
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v1, :cond_1

    .line 150
    :cond_0
    new-array v0, p2, [C

    .line 151
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    return-object v0

    .line 146
    .end local v0    # "chars":[C
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object v1
.end method
