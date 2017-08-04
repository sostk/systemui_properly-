.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    const/16 v1, 0x67

    .line 3013
    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    .line 3016
    if-le v0, v1, :cond_0

    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    .line 3020
    if-le v0, v1, :cond_1

    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    .line 3023
    if-le v0, v1, :cond_2

    .line 3026
    return-void

    .line 3017
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 3016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3021
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 3020
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3024
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 3023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "features"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 76
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 79
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 83
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 86
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 92
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 94
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-eqz v0, :cond_1

    .line 97
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, ""

    .line 89
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    .line 95
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_1
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x20

    .line 3007
    if-le p0, v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    goto :goto_0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2590
    new-array v4, p1, [C

    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .line 2592
    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 2671
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 2593
    :cond_0
    aget-char v5, p0, v1

    int-to-char v0, v5

    .local v0, "ch":C
    const/16 v5, 0x5c

    .line 2595
    if-ne v0, v5, :cond_1

    .line 2599
    add-int/lit8 v1, v1, 0x1

    aget-char v5, p0, v1

    int-to-char v0, v5

    .line 2601
    packed-switch v0, :pswitch_data_0

    .line 2668
    :pswitch_0
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2596
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    int-to-char v5, v0

    aput-char v5, v4, v3

    .line 2592
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 2603
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 2606
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 2609
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 2612
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 2615
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 2618
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 2621
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 2624
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 2627
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 2630
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 2633
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 2636
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 2640
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 2643
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 2646
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 2649
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 2652
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 2655
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto :goto_1

    .line 2658
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 2661
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :pswitch_14
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    int-to-char v7, v7

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    int-to-char v7, v7

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    int-to-char v7, v7

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    int-to-char v7, v7

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 2601
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2710
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2711
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2714
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v0, v2

    .local v0, "chLocal":C
    const/16 v2, 0x27

    .line 2716
    if-eq v0, v2, :cond_7

    const/16 v2, 0x1a

    .line 2720
    if-eq v0, v2, :cond_0

    const/16 v2, 0x5c

    .line 2728
    if-eq v0, v2, :cond_2

    .line 2814
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v2, :cond_5

    .line 2819
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-eq v2, v3, :cond_6

    .line 2822
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v4, v0

    aput-char v4, v2, v3

    goto :goto_0

    .line 2721
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2725
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2722
    :cond_1
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2729
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v2, :cond_3

    .line 2743
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v0, v2

    .line 2745
    packed-switch v0, :pswitch_data_0

    .line 2808
    :pswitch_0
    int-to-char v2, v0

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2809
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2730
    :cond_3
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2732
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-gt v2, v3, :cond_4

    .line 2739
    :goto_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    goto :goto_1

    .line 2733
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    .line 2734
    .local v1, "newsbuf":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2735
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 2747
    .end local v1    # "newsbuf":[C
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2750
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2753
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2756
    :pswitch_4
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2759
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2762
    :pswitch_6
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2765
    :pswitch_7
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2768
    :pswitch_8
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2771
    :pswitch_9
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2774
    :pswitch_a
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2777
    :pswitch_b
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2780
    :pswitch_c
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2784
    :pswitch_d
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2787
    :pswitch_e
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2790
    :pswitch_f
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2793
    :pswitch_10
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2796
    :pswitch_11
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2799
    :pswitch_12
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2802
    :pswitch_13
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x10

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2805
    :pswitch_14
    new-instance v2, Ljava/lang/String;

    new-array v3, v7, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2815
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 2820
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2826
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2827
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2828
    return-void

    .line 2745
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1069
    return-void

    .line 1066
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 510
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 512
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    .line 513
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 5
    .param p1, "decimal"    # Z

    .prologue
    .line 2981
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v0, v2

    .local v0, "chLocal":C
    const/16 v2, 0x46

    .line 2983
    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    .line 2987
    if-eq v0, v2, :cond_1

    .line 2991
    if-nez p1, :cond_2

    .line 2994
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 2984
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 2988
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 2992
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2994
    :catch_0
    move-exception v1

    .line 2997
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 3002
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 534
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 801
    return-object v0
.end method

.method public final intValue()I
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 1009
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_1

    :goto_0
    const/4 v7, 0x0

    .line 1014
    .local v7, "result":I
    const/4 v6, 0x0

    .line 1015
    .local v6, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v8, v10

    .line 1019
    .local v5, "max":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v10, 0x2d

    if-eq v8, v10, :cond_2

    const v4, -0x7fffffff

    .local v4, "limit":I
    move v3, v2

    .line 1027
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_3

    .line 1031
    :goto_2
    if-lt v3, v5, :cond_4

    move v2, v3

    .line 1051
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    if-nez v6, :cond_8

    .line 1058
    neg-int v8, v7

    return v8

    .line 1010
    .end local v2    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "max":I
    .end local v6    # "negative":Z
    .end local v7    # "result":I
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    .line 1020
    .restart local v2    # "i":I
    .restart local v5    # "max":I
    .restart local v6    # "negative":Z
    .restart local v7    # "result":I
    :cond_2
    const/4 v6, 0x1

    const/high16 v4, -0x80000000

    .line 1022
    .restart local v4    # "limit":I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1028
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    add-int/lit8 v1, v8, -0x30

    .line 1029
    .local v1, "digit":I
    neg-int v7, v1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 1033
    .end local v1    # "digit":I
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .local v0, "chLocal":C
    const/16 v8, 0x4c

    .line 1035
    if-eq v0, v8, :cond_0

    const/16 v8, 0x53

    if-eq v0, v8, :cond_0

    const/16 v8, 0x42

    if-eq v0, v8, :cond_0

    .line 1039
    add-int/lit8 v1, v0, -0x30

    .line 1041
    .restart local v1    # "digit":I
    int-to-long v10, v7

    const-wide/32 v12, -0xccccccc

    cmp-long v8, v10, v12

    if-ltz v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_6

    .line 1042
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    move v8, v9

    .line 1041
    goto :goto_3

    .line 1044
    :cond_6
    mul-int/lit8 v7, v7, 0xa

    .line 1045
    add-int v8, v4, v1

    if-lt v7, v8, :cond_7

    .line 1048
    sub-int/2addr v7, v1

    move v3, v2

    .line 1049
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 1046
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1052
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    :cond_8
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v8, v8, 0x1

    if-gt v2, v8, :cond_9

    .line 1055
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1053
    :cond_9
    return v7
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 410
    .local v8, "result":J
    const/4 v6, 0x0

    .line 411
    .local v6, "negative":Z
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 414
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v1, "i":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v3, v10, v11

    .line 419
    .local v3, "max":I
    const/16 v7, 0x20

    .line 421
    .local v7, "type":C
    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 438
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .local v4, "limit":J
    move v2, v1

    .line 446
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_3

    .line 450
    :goto_3
    if-lt v2, v3, :cond_4

    .line 463
    if-nez v6, :cond_9

    .line 481
    neg-long v8, v8

    const-wide/32 v10, 0x7fffffff

    .line 482
    cmp-long v10, v8, v10

    if-lez v10, :cond_10

    const/4 v10, 0x1

    :goto_4
    if-nez v10, :cond_0

    const/16 v10, 0x4c

    if-ne v7, v10, :cond_11

    .line 493
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    return-object v10

    .end local v2    # "i":I
    .end local v3    # "max":I
    .end local v4    # "limit":J
    .end local v7    # "type":C
    :cond_1
    const/4 v10, 0x0

    .line 412
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    .line 423
    .restart local v1    # "i":I
    .restart local v3    # "max":I
    .restart local v7    # "type":C
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 424
    const/16 v7, 0x4c

    goto :goto_1

    .line 427
    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    .line 428
    const/16 v7, 0x53

    goto :goto_1

    .line 431
    :sswitch_2
    add-int/lit8 v3, v3, -0x1

    .line 432
    const/16 v7, 0x42

    goto :goto_1

    .line 439
    :cond_2
    const/4 v6, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    .line 441
    .restart local v4    # "limit":J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 447
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    add-int/lit8 v0, v10, -0x30

    .line 448
    .local v0, "digit":I
    neg-int v10, v0

    int-to-long v8, v10

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 452
    .end local v0    # "digit":I
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    add-int/lit8 v0, v10, -0x30

    .restart local v0    # "digit":I
    const-wide v10, -0xcccccccccccccccL

    .line 453
    cmp-long v10, v8, v10

    if-ltz v10, :cond_5

    const/4 v10, 0x1

    :goto_5
    if-nez v10, :cond_6

    .line 454
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v10

    .line 453
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v10, 0xa

    .line 456
    mul-long/2addr v8, v10

    .line 457
    int-to-long v10, v0

    add-long/2addr v10, v4

    cmp-long v10, v8, v10

    if-ltz v10, :cond_7

    const/4 v10, 0x1

    :goto_6
    if-nez v10, :cond_8

    .line 458
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v10

    .line 457
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 460
    :cond_8
    int-to-long v10, v0

    sub-long/2addr v8, v10

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 464
    .end local v0    # "digit":I
    :cond_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v10, v10, 0x1

    if-gt v2, v10, :cond_a

    .line 478
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    const-wide/32 v10, -0x80000000

    .line 465
    cmp-long v10, v8, v10

    if-gez v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    if-nez v10, :cond_b

    const/16 v10, 0x4c

    if-ne v7, v10, :cond_d

    .line 476
    :cond_b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    return-object v10

    .line 465
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    const/16 v10, 0x53

    .line 466
    if-eq v7, v10, :cond_e

    const/16 v10, 0x42

    .line 470
    if-eq v7, v10, :cond_f

    .line 474
    long-to-int v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    return-object v10

    .line 467
    :cond_e
    long-to-int v10, v8

    int-to-short v10, v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    return-object v10

    .line 471
    :cond_f
    long-to-int v10, v8

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    return-object v10

    .line 482
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v10, 0x53

    .line 483
    if-eq v7, v10, :cond_12

    const/16 v10, 0x42

    .line 487
    if-eq v7, v10, :cond_13

    .line 491
    long-to-int v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    return-object v10

    .line 484
    :cond_12
    long-to-int v10, v8

    int-to-short v10, v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    return-object v10

    .line 488
    :cond_13
    long-to-int v10, v8

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    return-object v10

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2678
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v0, v2

    .local v0, "chLocal":C
    const/16 v2, 0x1a

    .line 2679
    if-eq v0, v2, :cond_1

    .line 2683
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2684
    :cond_0
    return v3

    .line 2688
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 522
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEnabled(II)Z
    .locals 2
    .param p1, "features"    # I
    .param p2, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 526
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    and-int v1, p1, p2

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 518
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1072
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1076
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 1073
    :cond_1
    return v0

    .line 1076
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    .line 1077
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    .line 1078
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    .line 1079
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 51
    return-void
.end method

.method public final longValue()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 2928
    .local v8, "result":J
    const/4 v7, 0x0

    .line 2932
    .local v7, "negative":Z
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 2936
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v6, v10, v11

    .line 2938
    .local v6, "max":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .local v4, "limit":J
    move v3, v2

    .line 2946
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-lt v3, v6, :cond_3

    .line 2950
    :goto_2
    if-lt v3, v6, :cond_4

    move v2, v3

    .line 2969
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    if-nez v7, :cond_9

    .line 2976
    neg-long v10, v8

    return-wide v10

    .end local v2    # "i":I
    .end local v4    # "limit":J
    .end local v6    # "max":I
    :cond_1
    const/4 v10, 0x0

    .line 2933
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    .line 2939
    .restart local v2    # "i":I
    .restart local v6    # "max":I
    :cond_2
    const/4 v7, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    .line 2941
    .restart local v4    # "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 2947
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    add-int/lit8 v1, v10, -0x30

    .line 2948
    .local v1, "digit":I
    neg-int v10, v1

    int-to-long v8, v10

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 2952
    .end local v1    # "digit":I
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .local v0, "chLocal":C
    const/16 v10, 0x4c

    .line 2954
    if-eq v0, v10, :cond_0

    const/16 v10, 0x53

    if-eq v0, v10, :cond_0

    const/16 v10, 0x42

    if-eq v0, v10, :cond_0

    .line 2958
    add-int/lit8 v1, v0, -0x30

    .restart local v1    # "digit":I
    const-wide v10, -0xcccccccccccccccL

    .line 2959
    cmp-long v10, v8, v10

    if-ltz v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_6

    .line 2960
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2959
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0xa

    .line 2962
    mul-long/2addr v8, v10

    .line 2963
    int-to-long v10, v1

    add-long/2addr v10, v4

    cmp-long v10, v8, v10

    if-ltz v10, :cond_7

    const/4 v10, 0x1

    :goto_4
    if-nez v10, :cond_8

    .line 2964
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2963
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 2966
    :cond_8
    int-to-long v10, v1

    sub-long/2addr v8, v10

    move v3, v2

    .line 2967
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 2970
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v10, v10, 0x1

    if-gt v2, v10, :cond_a

    .line 2973
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2971
    :cond_a
    return-wide v8
.end method

.method public final matchField([C)Z
    .locals 3
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v2, 0x5b

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1140
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1142
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    .line 1145
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_3

    .line 1148
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1156
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1136
    :cond_1
    return v1

    .line 1143
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 1144
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1146
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 1147
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1148
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1149
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1150
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x15

    .line 1151
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 359
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_2

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 367
    :goto_1
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 362
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 112
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 115
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 117
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 122
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    .line 127
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    .line 133
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_5

    .line 138
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6

    .line 143
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_a

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 124
    return-void

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 129
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 130
    return-void

    .line 133
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 135
    return-void

    .line 139
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 140
    return-void

    .line 145
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    .line 149
    return-void

    .line 146
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 159
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    .line 160
    return-void

    .line 162
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    .line 163
    return-void

    .line 165
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    .line 166
    return-void

    .line 171
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 172
    return-void

    .line 174
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 175
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 176
    return-void

    .line 178
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 179
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 180
    return-void

    .line 182
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 183
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 184
    return-void

    .line 186
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 187
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 188
    return-void

    .line 190
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 191
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 192
    return-void

    .line 194
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 195
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 196
    return-void

    .line 198
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 199
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 200
    return-void

    .line 203
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eq v0, v2, :cond_9

    .line 207
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 208
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 218
    :goto_1
    return-void

    .line 204
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "illegal.char"

    const/4 v1, 0x1

    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x4e -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 228
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 348
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 230
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_2

    .line 235
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 236
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 238
    return-void

    .line 231
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 233
    return-void

    .line 242
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    .line 248
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    .line 254
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    .line 260
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    .line 261
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 262
    return-void

    :cond_3
    const/16 v0, 0x10

    .line 243
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 245
    return-void

    .line 249
    :cond_4
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 251
    return-void

    :cond_5
    const/16 v0, 0xf

    .line 255
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 257
    return-void

    .line 266
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_7

    .line 272
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    .line 278
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_9

    .line 284
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 285
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 287
    return-void

    .line 266
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 267
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 269
    return-void

    .line 273
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 275
    return-void

    .line 279
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 281
    return-void

    .line 292
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_b

    .line 298
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_c

    .line 304
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_d

    .line 310
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 311
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 313
    return-void

    .line 293
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 295
    return-void

    .line 298
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 299
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 301
    return-void

    .line 305
    :cond_d
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 307
    return-void

    .line 317
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_e

    .line 323
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 324
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 325
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 326
    return-void

    .line 318
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 320
    return-void

    .line 330
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_f

    .line 336
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    .line 337
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 338
    return-void

    :cond_f
    const/16 v0, 0xf

    .line 331
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 333
    return-void

    .line 342
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    .line 343
    return-void

    .line 348
    :cond_10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 356
    return-void

    .line 228
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    const/4 v0, 0x0

    .line 374
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 377
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, p1, :cond_1

    .line 383
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 379
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 380
    return-void

    .line 383
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 388
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 370
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 371
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .prologue
    .line 498
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 499
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    const/4 v3, 0x0

    .line 2834
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 2839
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 2840
    return-void

    .line 2835
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 2836
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2837
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_0
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 797
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 798
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9
    .param p1, "expectNext"    # C

    .prologue
    const/16 v8, 0x65

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1812
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1815
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x1

    .local v1, "offset":I
    add-int/lit8 v4, v4, 0x0

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1817
    .local v0, "chLocal":C
    const/4 v3, 0x0

    .local v3, "value":Z
    const/16 v4, 0x74

    .line 1818
    if-eq v0, v4, :cond_0

    const/16 v4, 0x66

    .line 1829
    if-eq v0, v4, :cond_3

    const/16 v4, 0x31

    .line 1841
    if-eq v0, v4, :cond_6

    const/16 v4, 0x30

    .line 1844
    if-eq v0, v4, :cond_7

    move v2, v1

    .line 1850
    .end local v1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-eq v0, p1, :cond_8

    .line 1856
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1860
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1861
    return v3

    .line 1819
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    .line 1826
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1827
    return v6

    .line 1819
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1820
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    .line 1821
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_1

    .line 1822
    add-int/lit8 v1, v1, 0x3

    .line 1823
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1824
    const/4 v3, 0x1

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 1830
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_5

    .line 1838
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1839
    return v6

    .line 1830
    :cond_5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1831
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    .line 1832
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x3

    .line 1833
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    .line 1834
    add-int/lit8 v1, v1, 0x4

    .line 1835
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1836
    const/4 v3, 0x0

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 1842
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_6
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1843
    const/4 v3, 0x1

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 1845
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_7
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1846
    const/4 v3, 0x0

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 1851
    :cond_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1852
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v4, 0x3

    .line 1853
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1854
    return v3

    .line 1857
    :cond_9
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    move v2, v1

    .line 1858
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0
.end method

.method public final scanDouble(C)D
    .locals 14
    .param p1, "seperator"    # C

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, -0x1

    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x0

    .line 2285
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2288
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    .local v2, "offset":I
    add-int/lit8 v8, v8, 0x0

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2291
    .local v0, "chLocal":C
    if-ge v0, v9, :cond_1

    .line 2323
    :cond_0
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2324
    return-wide v12

    .line 2291
    :cond_1
    if-gt v0, v10, :cond_0

    .line 2293
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2294
    if-ge v0, v9, :cond_3

    :cond_2
    const/16 v8, 0x2e

    .line 2301
    if-eq v0, v8, :cond_4

    move v2, v3

    .line 2318
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2319
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 2320
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2321
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 2327
    .local v6, "value":D
    if-eq v0, p1, :cond_9

    .line 2334
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2335
    return-wide v6

    .line 2294
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    .restart local v3    # "offset":I
    :cond_3
    if-gt v0, v10, :cond_2

    move v2, v3

    .line 2295
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2302
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2303
    if-ge v0, v9, :cond_6

    .line 2313
    :cond_5
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2314
    return-wide v12

    .line 2303
    :cond_6
    if-gt v0, v10, :cond_5

    .line 2305
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2306
    if-ge v0, v9, :cond_8

    :cond_7
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    if-gt v0, v10, :cond_7

    move v2, v3

    .line 2307
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2328
    .restart local v1    # "count":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_9
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2329
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v8, 0x3

    .line 2330
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v8, 0x10

    .line 2331
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2332
    return-wide v6
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1412
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1416
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1

    .line 1414
    :cond_0
    return-object v1
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 2515
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 2518
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2520
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 2523
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2525
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_3

    .line 2528
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2530
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_4

    .line 2533
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2535
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    .line 2538
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2540
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v0, 0x7

    .line 2542
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2546
    return-void

    .line 2516
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2521
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2526
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2531
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2536
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2540
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 2544
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1919
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1921
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1926
    array-length v1, p1

    .line 1927
    .local v1, "offset":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .local v0, "chLocal":C
    const/16 v4, 0x74

    .line 1930
    if-eq v0, v4, :cond_1

    const/16 v4, 0x66

    .line 1945
    if-eq v0, v4, :cond_5

    .line 1965
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1966
    return v6

    .end local v0    # "chLocal":C
    .end local v2    # "offset":I
    :cond_0
    const/4 v4, -0x2

    .line 1922
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1923
    return v6

    .line 1931
    .restart local v0    # "chLocal":C
    .restart local v2    # "offset":I
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_2

    .line 1935
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_3

    .line 1939
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    .line 1944
    const/4 v3, 0x1

    .line 1969
    .local v3, "value":Z
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1970
    if-eq v0, v10, :cond_a

    const/16 v4, 0x7d

    .line 1979
    if-eq v0, v4, :cond_b

    .line 2003
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2004
    return v6

    .line 1932
    .end local v2    # "offset":I
    .end local v3    # "value":Z
    .restart local v1    # "offset":I
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1933
    return v6

    .line 1936
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1937
    return v6

    .line 1940
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1941
    return v6

    .line 1946
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_6

    .line 1950
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_7

    .line 1954
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_8

    .line 1958
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_9

    .line 1963
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    .line 1947
    .end local v3    # "value":Z
    :cond_6
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1948
    return v6

    .line 1951
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1952
    return v6

    .line 1955
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1956
    return v6

    .line 1959
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1960
    return v6

    .line 1971
    .restart local v3    # "value":Z
    :cond_a
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1972
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v4, 0x3

    .line 1973
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1974
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1976
    return v3

    .line 1980
    :cond_b
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v0, v4

    .line 1981
    if-eq v0, v10, :cond_c

    const/16 v4, 0x5d

    .line 1985
    if-eq v0, v4, :cond_d

    const/16 v4, 0x7d

    .line 1989
    if-eq v0, v4, :cond_e

    .line 1993
    if-eq v0, v9, :cond_f

    .line 1998
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1999
    return v6

    .line 1982
    :cond_c
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1983
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1984
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 v4, 0x4

    .line 2001
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2007
    return v3

    :cond_d
    const/16 v4, 0xf

    .line 1986
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1987
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1988
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_e
    const/16 v4, 0xd

    .line 1990
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1991
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1992
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_f
    const/16 v4, 0x14

    .line 1994
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1995
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1996
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1
.end method

.method public final scanFieldDouble([C)D
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v8, 0x0

    const/4 v13, -0x1

    const/16 v12, 0x39

    const/16 v9, 0x30

    const-wide/16 v10, 0x0

    .line 2340
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2342
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2347
    array-length v2, p1

    .line 2348
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2351
    .local v0, "chLocal":C
    if-ge v0, v9, :cond_2

    .line 2397
    :cond_0
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2398
    return-wide v10

    .end local v0    # "chLocal":C
    .end local v3    # "offset":I
    :cond_1
    const/4 v8, -0x2

    .line 2343
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2344
    return-wide v10

    .line 2351
    .restart local v0    # "chLocal":C
    .restart local v3    # "offset":I
    :cond_2
    if-gt v0, v12, :cond_0

    move v2, v3

    .line 2353
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2354
    if-ge v0, v9, :cond_8

    :cond_3
    const/16 v8, 0x2e

    .line 2361
    if-eq v0, v8, :cond_9

    :cond_4
    const/16 v8, 0x65

    .line 2378
    if-ne v0, v8, :cond_c

    .line 2379
    :cond_5
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    const/16 v8, 0x2b

    .line 2380
    if-ne v0, v8, :cond_d

    .line 2381
    :cond_6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2384
    :goto_1
    if-ge v0, v9, :cond_e

    :cond_7
    move v2, v3

    .line 2392
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, p1

    add-int v4, v8, v9

    .line 2393
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 2394
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2395
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .local v6, "value":D
    const/16 v8, 0x2c

    .line 2401
    if-eq v0, v8, :cond_f

    const/16 v8, 0x7d

    .line 2409
    if-eq v0, v8, :cond_10

    .line 2433
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2434
    return-wide v10

    .line 2354
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    .restart local v3    # "offset":I
    :cond_8
    if-gt v0, v12, :cond_3

    move v2, v3

    .line 2355
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2362
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2363
    if-ge v0, v9, :cond_b

    .line 2373
    :cond_a
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2374
    return-wide v10

    .line 2363
    :cond_b
    if-gt v0, v12, :cond_a

    .line 2365
    :goto_3
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    .line 2366
    if-lt v0, v9, :cond_4

    if-gt v0, v12, :cond_4

    move v2, v3

    .line 2367
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_c
    const/16 v8, 0x45

    .line 2378
    if-eq v0, v8, :cond_5

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    :cond_d
    const/16 v8, 0x2d

    .line 2380
    if-eq v0, v8, :cond_6

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 2384
    :cond_e
    if-gt v0, v12, :cond_7

    .line 2385
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 2402
    .end local v3    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "offset":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_f
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2403
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v8, 0x3

    .line 2404
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v8, 0x10

    .line 2405
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2406
    return-wide v6

    .line 2410
    :cond_10
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v0, v8

    const/16 v8, 0x2c

    .line 2411
    if-eq v0, v8, :cond_11

    const/16 v8, 0x5d

    .line 2415
    if-eq v0, v8, :cond_12

    const/16 v8, 0x7d

    .line 2419
    if-eq v0, v8, :cond_13

    const/16 v8, 0x1a

    .line 2423
    if-eq v0, v8, :cond_14

    .line 2428
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2429
    return-wide v10

    :cond_11
    const/16 v8, 0x10

    .line 2412
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2413
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2414
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_4
    const/4 v8, 0x4

    .line 2431
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2437
    return-wide v6

    :cond_12
    const/16 v8, 0xf

    .line 2416
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2417
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2418
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_13
    const/16 v8, 0xd

    .line 2420
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2421
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2422
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    int-to-char v8, v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_14
    const/16 v8, 0x14

    .line 2424
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2425
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2426
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4
.end method

.method public final scanFieldFloat([C)F
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x39

    const/16 v8, 0x30

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2143
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2145
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2150
    array-length v2, p1

    .line 2151
    .local v2, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2154
    .local v0, "chLocal":C
    if-ge v0, v8, :cond_2

    .line 2186
    :cond_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2187
    return v9

    .end local v0    # "chLocal":C
    .end local v3    # "offset":I
    :cond_1
    const/4 v7, -0x2

    .line 2146
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2147
    return v9

    .line 2154
    .restart local v0    # "chLocal":C
    .restart local v3    # "offset":I
    :cond_2
    if-gt v0, v11, :cond_0

    move v2, v3

    .line 2156
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2157
    if-ge v0, v8, :cond_4

    :cond_3
    const/16 v7, 0x2e

    .line 2164
    if-eq v0, v7, :cond_5

    move v2, v3

    .line 2181
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int v4, v7, v8

    .line 2182
    .local v4, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v4

    add-int/lit8 v1, v7, -0x1

    .line 2183
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2184
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .local v6, "value":F
    const/16 v7, 0x2c

    .line 2190
    if-eq v0, v7, :cond_a

    const/16 v7, 0x7d

    .line 2198
    if-eq v0, v7, :cond_b

    .line 2222
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2223
    return v9

    .line 2157
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":F
    .restart local v3    # "offset":I
    :cond_4
    if-gt v0, v11, :cond_3

    move v2, v3

    .line 2158
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2165
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2166
    if-ge v0, v8, :cond_7

    .line 2176
    :cond_6
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2177
    return v9

    .line 2166
    :cond_7
    if-gt v0, v11, :cond_6

    .line 2168
    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2169
    if-ge v0, v8, :cond_9

    :cond_8
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    if-gt v0, v11, :cond_8

    move v2, v3

    .line 2170
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2191
    .restart local v1    # "count":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":F
    :cond_a
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2192
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v7, 0x3

    .line 2193
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v7, 0x10

    .line 2194
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2195
    return v6

    .line 2199
    :cond_b
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    const/16 v7, 0x2c

    .line 2200
    if-eq v0, v7, :cond_c

    const/16 v7, 0x5d

    .line 2204
    if-eq v0, v7, :cond_d

    const/16 v7, 0x7d

    .line 2208
    if-eq v0, v7, :cond_e

    const/16 v7, 0x1a

    .line 2212
    if-eq v0, v7, :cond_f

    .line 2217
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2218
    return v9

    :cond_c
    const/16 v7, 0x10

    .line 2201
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2202
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2203
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_3
    const/4 v7, 0x4

    .line 2220
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2226
    return v6

    :cond_d
    const/16 v7, 0xf

    .line 2205
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2206
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2207
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_e
    const/16 v7, 0xd

    .line 2209
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2210
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2211
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2213
    :cond_f
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v7, 0x14

    .line 2214
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2215
    const/16 v7, 0x1a

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3
.end method

.method public scanFieldInt([C)I
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x1a

    const/16 v9, 0x10

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1729
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1731
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1736
    array-length v2, p1

    .line 1737
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "chLocal":C
    const/16 v6, 0x2d

    .line 1739
    if-eq v0, v6, :cond_2

    move v1, v5

    .line 1740
    .local v1, "negative":Z
    :goto_0
    if-nez v1, :cond_3

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    const/16 v6, 0x30

    .line 1745
    if-ge v0, v6, :cond_4

    .line 1768
    :cond_0
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1769
    return v5

    .end local v0    # "chLocal":C
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    :cond_1
    const/4 v6, -0x2

    .line 1732
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1733
    return v5

    .restart local v0    # "chLocal":C
    .restart local v3    # "offset":I
    :cond_2
    const/4 v1, 0x1

    .line 1739
    goto :goto_0

    .line 1741
    .restart local v1    # "negative":Z
    :cond_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    goto :goto_1

    :cond_4
    const/16 v6, 0x39

    .line 1745
    if-gt v0, v6, :cond_0

    .line 1746
    add-int/lit8 v4, v0, -0x30

    .line 1748
    .local v4, "value":I
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    const/16 v6, 0x30

    .line 1749
    if-ge v0, v6, :cond_8

    :cond_5
    const/16 v6, 0x2e

    .line 1751
    if-eq v0, v6, :cond_9

    .line 1758
    if-gez v4, :cond_a

    :cond_6
    const/high16 v6, -0x80000000

    .line 1760
    if-eq v4, v6, :cond_b

    .line 1763
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1764
    return v5

    :cond_8
    const/16 v6, 0x39

    .line 1749
    if-gt v0, v6, :cond_5

    .line 1750
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1752
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1753
    return v5

    .line 1758
    :cond_a
    array-length v6, p1

    add-int/lit8 v6, v6, 0xe

    if-gt v3, v6, :cond_6

    .line 1772
    :goto_3
    if-eq v0, v11, :cond_c

    const/16 v6, 0x7d

    .line 1780
    if-eq v0, v6, :cond_e

    .line 1804
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1805
    return v5

    :cond_b
    const/16 v6, 0x11

    .line 1760
    if-ne v3, v6, :cond_7

    if-eqz v1, :cond_7

    goto :goto_3

    .line 1773
    :cond_c
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1774
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v5, 0x3

    .line 1775
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1776
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1777
    if-nez v1, :cond_d

    .end local v4    # "value":I
    :goto_4
    return v4

    .restart local v4    # "value":I
    :cond_d
    neg-int v4, v4

    goto :goto_4

    .line 1781
    :cond_e
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 1782
    if-eq v0, v11, :cond_f

    const/16 v6, 0x5d

    .line 1786
    if-eq v0, v6, :cond_10

    const/16 v6, 0x7d

    .line 1790
    if-eq v0, v6, :cond_11

    .line 1794
    if-eq v0, v10, :cond_12

    .line 1799
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1800
    return v5

    .line 1783
    :cond_f
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1784
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1785
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_5
    const/4 v5, 0x4

    .line 1802
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1808
    if-nez v1, :cond_13

    .end local v4    # "value":I
    :goto_6
    return v4

    .restart local v4    # "value":I
    :cond_10
    const/16 v5, 0xf

    .line 1787
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1788
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1789
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_11
    const/16 v5, 0xd

    .line 1791
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1792
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1793
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_12
    const/16 v5, 0x14

    .line 1795
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1796
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1797
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    .line 1808
    :cond_13
    neg-int v4, v4

    goto :goto_6
.end method

.method public scanFieldLong([C)J
    .locals 10
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v6, 0x0

    .line 2011
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2013
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2018
    array-length v2, p1

    .line 2019
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 2021
    .local v0, "chLocal":C
    const/4 v1, 0x0

    .local v1, "negative":Z
    const/16 v6, 0x2d

    .line 2022
    if-eq v0, v6, :cond_2

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    const/16 v6, 0x30

    .line 2028
    if-ge v0, v6, :cond_3

    :cond_0
    const/4 v6, -0x1

    .line 2046
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2047
    return-wide v6

    .end local v0    # "chLocal":C
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    :cond_1
    const/4 v6, -0x2

    .line 2014
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2015
    return-wide v6

    .line 2023
    .restart local v0    # "chLocal":C
    .restart local v1    # "negative":Z
    .restart local v3    # "offset":I
    :cond_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 2024
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v6, 0x39

    .line 2028
    if-gt v0, v6, :cond_0

    .line 2029
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 2031
    .local v4, "value":J
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    const/16 v6, 0x30

    .line 2032
    if-ge v0, v6, :cond_5

    :cond_4
    const/16 v6, 0x2e

    .line 2034
    if-eq v0, v6, :cond_6

    const-wide/16 v6, 0x0

    .line 2041
    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_8

    const/16 v6, 0x15

    if-gt v3, v6, :cond_8

    const/16 v6, 0x2c

    .line 2050
    if-eq v0, v6, :cond_9

    const/16 v6, 0x7d

    .line 2058
    if-eq v0, v6, :cond_b

    const/4 v6, -0x1

    .line 2082
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2083
    return-wide v6

    :cond_5
    const/16 v6, 0x39

    .line 2032
    if-gt v0, v6, :cond_4

    const-wide/16 v6, 0xa

    .line 2033
    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    const/4 v6, -0x1

    .line 2035
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2036
    return-wide v6

    .line 2041
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, -0x1

    .line 2042
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2043
    return-wide v6

    .line 2051
    :cond_9
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2052
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v6, 0x3

    .line 2053
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2054
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2055
    if-nez v1, :cond_a

    .end local v4    # "value":J
    :goto_3
    return-wide v4

    .restart local v4    # "value":J
    :cond_a
    neg-long v4, v4

    goto :goto_3

    .line 2059
    :cond_b
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    const/16 v6, 0x2c

    .line 2060
    if-eq v0, v6, :cond_c

    const/16 v6, 0x5d

    .line 2064
    if-eq v0, v6, :cond_d

    const/16 v6, 0x7d

    .line 2068
    if-eq v0, v6, :cond_e

    const/16 v6, 0x1a

    .line 2072
    if-eq v0, v6, :cond_f

    const/4 v6, -0x1

    .line 2077
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2078
    return-wide v6

    :cond_c
    const/16 v6, 0x10

    .line 2061
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2062
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2063
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_4
    const/4 v6, 0x4

    .line 2080
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2086
    if-nez v1, :cond_10

    .end local v4    # "value":J
    :goto_5
    return-wide v4

    .restart local v4    # "value":J
    :cond_d
    const/16 v6, 0xf

    .line 2065
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2066
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2067
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_e
    const/16 v6, 0xd

    .line 2069
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2070
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2071
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_f
    const/16 v6, 0x14

    .line 2073
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2074
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v2, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    const/16 v6, 0x1a

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2086
    :cond_10
    neg-long v4, v4

    goto :goto_5
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v12, 0x0

    .line 1164
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1173
    array-length v5, p1

    .line 1174
    .local v5, "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    .local v0, "chLocal":C
    const/16 v12, 0x22

    .line 1176
    if-ne v0, v12, :cond_1

    .line 1184
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    .line 1185
    .local v8, "startIndex":I
    const/16 v12, 0x22

    invoke-virtual {p0, v12, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .local v3, "endIndex":I
    const/4 v12, -0x1

    .line 1186
    if-eq v3, v12, :cond_2

    .line 1190
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    .line 1191
    .local v9, "startIndex2":I
    sub-int v12, v3, v9

    invoke-virtual {p0, v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    .line 1192
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 1214
    :goto_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v12, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int v5, v6, v12

    .line 1215
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    .line 1216
    move-object v10, v11

    .local v10, "strVal":Ljava/lang/String;
    const/16 v12, 0x2c

    .line 1219
    if-eq v0, v12, :cond_7

    const/16 v12, 0x7d

    .line 1226
    if-eq v0, v12, :cond_8

    const/4 v12, -0x1

    .line 1250
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .end local v0    # "chLocal":C
    .end local v3    # "endIndex":I
    .end local v6    # "offset":I
    .end local v8    # "startIndex":I
    .end local v9    # "startIndex2":I
    .end local v10    # "strVal":Ljava/lang/String;
    .end local v11    # "stringVal":Ljava/lang/String;
    :cond_0
    const/4 v12, -0x2

    .line 1167
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .restart local v0    # "chLocal":C
    .restart local v6    # "offset":I
    :cond_1
    const/4 v12, -0x1

    .line 1177
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1179
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 1187
    .restart local v3    # "endIndex":I
    .restart local v8    # "startIndex":I
    :cond_2
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "unclosed str"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .restart local v9    # "startIndex2":I
    .restart local v11    # "stringVal":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 1195
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-gez v4, :cond_5

    .line 1202
    :cond_4
    rem-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_6

    .line 1205
    add-int/lit8 v12, v3, 0x1

    const/16 v13, 0x22

    invoke-virtual {p0, v13, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    goto :goto_1

    .line 1196
    :cond_5
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_4

    .line 1197
    add-int/lit8 v7, v7, 0x1

    .line 1195
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1208
    :cond_6
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v2, v3, v12

    .line 1209
    .local v2, "chars_len":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1211
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1220
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .restart local v10    # "strVal":Ljava/lang/String;
    :cond_7
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v6

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1221
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v12, 0x3

    .line 1222
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1223
    return-object v10

    .line 1227
    :cond_8
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v0, v12

    const/16 v12, 0x2c

    .line 1228
    if-eq v0, v12, :cond_9

    const/16 v12, 0x5d

    .line 1232
    if-eq v0, v12, :cond_a

    const/16 v12, 0x7d

    .line 1236
    if-eq v0, v12, :cond_b

    const/16 v12, 0x1a

    .line 1240
    if-eq v0, v12, :cond_c

    const/4 v12, -0x1

    .line 1245
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_9
    const/16 v12, 0x10

    .line 1229
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1230
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1231
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_3
    const/4 v12, 0x4

    .line 1248
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1254
    return-object v10

    :cond_a
    const/16 v12, 0xf

    .line 1233
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1234
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1235
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_b
    const/16 v12, 0xd

    .line 1237
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1238
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1239
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    int-to-char v12, v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_c
    const/16 v12, 0x14

    .line 1241
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1242
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1243
    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

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

    .line 1493
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v14

    if-eqz v14, :cond_2

    const-class v14, Ljava/util/HashSet;

    .line 1502
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_3

    const-class v14, Ljava/util/ArrayList;

    .line 1504
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1508
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    .local v7, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v0, p1

    array-length v8, v0

    .line 1517
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .local v1, "chLocal":C
    const/16 v14, 0x5b

    .line 1519
    if-ne v1, v14, :cond_5

    .line 1524
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_1
    const/16 v14, 0x22

    .line 1528
    if-eq v1, v14, :cond_6

    const/16 v14, 0x6e

    .line 1563
    if-eq v1, v14, :cond_c

    :cond_0
    const/16 v14, 0x5d

    .line 1570
    if-eq v1, v14, :cond_d

    .line 1574
    :cond_1
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "illega str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v1    # "chLocal":C
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v9    # "offset":I
    :cond_2
    const/4 v14, -0x2

    .line 1496
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x0

    .line 1497
    return-object v14

    .line 1503
    :cond_3
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 1505
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 1511
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 1510
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "chLocal":C
    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v9    # "offset":I
    :cond_5
    const/4 v14, -0x1

    .line 1520
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x0

    .line 1521
    return-object v14

    .line 1529
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v11, v14, v9

    .line 1530
    .local v11, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .local v5, "endIndex":I
    const/4 v14, -0x1

    .line 1531
    if-eq v5, v14, :cond_7

    .line 1535
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v12, v14, v9

    .line 1536
    .local v12, "startIndex2":I
    sub-int v14, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v13

    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    .line 1537
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 1559
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    sub-int v14, v5, v14

    add-int/lit8 v14, v14, 0x1

    add-int v8, v9, v14

    .line 1560
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    .line 1562
    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v5    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "startIndex2":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :goto_3
    const/16 v14, 0x2c

    .line 1577
    if-eq v1, v14, :cond_e

    const/16 v14, 0x5d

    .line 1582
    if-eq v1, v14, :cond_f

    const/4 v14, -0x1

    .line 1587
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x0

    .line 1588
    return-object v14

    .line 1532
    .restart local v5    # "endIndex":I
    .restart local v11    # "startIndex":I
    :cond_7
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .restart local v12    # "startIndex2":I
    .restart local v13    # "stringVal":Ljava/lang/String;
    :cond_8
    :goto_4
    const/4 v10, 0x0

    .line 1540
    .local v10, "slashCount":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_5
    if-gez v6, :cond_a

    .line 1547
    :cond_9
    rem-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_b

    .line 1550
    add-int/lit8 v14, v5, 0x1

    const/16 v15, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    goto :goto_4

    .line 1541
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_9

    .line 1542
    add-int/lit8 v10, v10, 0x1

    .line 1540
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1553
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    sub-int v3, v5, v14

    .line 1554
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1556
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 1563
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    .end local v11    # "startIndex":I
    .end local v12    # "startIndex2":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    .line 1564
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x75

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x1

    .line 1565
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x2

    .line 1566
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_0

    .line 1567
    add-int/lit8 v8, v9, 0x3

    .line 1568
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/4 v14, 0x0

    .line 1569
    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1570
    :cond_d
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 1571
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    const/16 v14, 0x2c

    .line 1591
    if-eq v1, v14, :cond_10

    const/16 v14, 0x7d

    .line 1598
    if-eq v1, v14, :cond_11

    const/4 v14, -0x1

    .line 1622
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x0

    .line 1623
    return-object v14

    .line 1578
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v9, v8

    .line 1579
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_1

    .line 1583
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    move v9, v8

    .line 1584
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_6

    .line 1592
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1593
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v14, 0x3

    .line 1594
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1595
    return-object v7

    .line 1599
    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v1, v14

    const/16 v14, 0x2c

    .line 1600
    if-eq v1, v14, :cond_12

    const/16 v14, 0x5d

    .line 1604
    if-eq v1, v14, :cond_13

    const/16 v14, 0x7d

    .line 1608
    if-eq v1, v14, :cond_14

    const/16 v14, 0x1a

    .line 1612
    if-eq v1, v14, :cond_15

    const/4 v14, -0x1

    .line 1617
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v14, 0x0

    .line 1618
    return-object v14

    :cond_12
    const/16 v14, 0x10

    .line 1601
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1602
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_7
    const/4 v14, 0x4

    .line 1620
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1626
    return-object v7

    :cond_13
    const/16 v14, 0xf

    .line 1605
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1606
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1607
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_14
    const/16 v14, 0xd

    .line 1609
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1610
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1611
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    int-to-char v14, v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 1613
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v14, 0x14

    .line 1614
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1615
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 12
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v8, 0x22

    const/16 v11, 0x1a

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1337
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1339
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1344
    array-length v3, p1

    .line 1345
    .local v3, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 1347
    .local v0, "chLocal":C
    if-ne v0, v8, :cond_1

    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1355
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 1356
    if-eq v0, v8, :cond_2

    .line 1364
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    const/16 v7, 0x5c

    .line 1366
    if-eq v0, v7, :cond_3

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .end local v0    # "chLocal":C
    .end local v1    # "hash":I
    .end local v3    # "offset":I
    :cond_0
    const/4 v7, -0x2

    .line 1340
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1341
    return-object v9

    .line 1348
    .restart local v0    # "chLocal":C
    .restart local v4    # "offset":I
    :cond_1
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1349
    return-object v9

    .line 1357
    .restart local v1    # "hash":I
    :cond_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x1

    .line 1358
    .local v5, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 1359
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1360
    .local v6, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    const/16 v7, 0x2c

    .line 1372
    if-eq v0, v7, :cond_4

    const/16 v7, 0x7d

    .line 1379
    if-eq v0, v7, :cond_5

    .line 1403
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1404
    return-object v9

    .line 1367
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_3
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1368
    return-object v9

    .line 1373
    .end local v4    # "offset":I
    .restart local v2    # "len":I
    .restart local v3    # "offset":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1374
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v7, 0x3

    .line 1375
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1376
    return-object v6

    .line 1380
    :cond_5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    const/16 v7, 0x2c

    .line 1381
    if-eq v0, v7, :cond_6

    const/16 v7, 0x5d

    .line 1385
    if-eq v0, v7, :cond_7

    const/16 v7, 0x7d

    .line 1389
    if-eq v0, v7, :cond_8

    .line 1393
    if-eq v0, v11, :cond_9

    .line 1398
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1399
    return-object v9

    :cond_6
    const/16 v7, 0x10

    .line 1382
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1383
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1384
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 v7, 0x4

    .line 1401
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1407
    return-object v6

    :cond_7
    const/16 v7, 0xf

    .line 1386
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1387
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1388
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_8
    const/16 v7, 0xd

    .line 1390
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1391
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1392
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_9
    const/16 v7, 0x14

    .line 1394
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1395
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1396
    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1
.end method

.method public final scanFloat(C)F
    .locals 12
    .param p1, "seperator"    # C

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, 0x0

    .line 2230
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2233
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    .local v2, "offset":I
    add-int/lit8 v7, v7, 0x0

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2236
    .local v0, "chLocal":C
    if-ge v0, v8, :cond_1

    .line 2268
    :cond_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2269
    return v11

    .line 2236
    :cond_1
    if-gt v0, v9, :cond_0

    .line 2238
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2239
    if-ge v0, v8, :cond_3

    :cond_2
    const/16 v7, 0x2e

    .line 2246
    if-eq v0, v7, :cond_4

    move v2, v3

    .line 2263
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2264
    .local v4, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v4

    add-int/lit8 v1, v7, -0x1

    .line 2265
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2266
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 2272
    .local v6, "value":F
    if-eq v0, p1, :cond_9

    .line 2279
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2280
    return v6

    .line 2239
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":F
    .restart local v3    # "offset":I
    :cond_3
    if-gt v0, v9, :cond_2

    move v2, v3

    .line 2240
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2247
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2248
    if-ge v0, v8, :cond_6

    .line 2258
    :cond_5
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2259
    return v11

    .line 2248
    :cond_6
    if-gt v0, v9, :cond_5

    .line 2250
    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 2251
    if-ge v0, v8, :cond_8

    :cond_7
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    if-gt v0, v9, :cond_7

    move v2, v3

    .line 2252
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2273
    .restart local v1    # "count":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":F
    :cond_9
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2274
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v7, 0x3

    .line 2275
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v7, 0x10

    .line 2276
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2277
    return v6
.end method

.method public final scanIdent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2549
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2550
    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2553
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2555
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2556
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2560
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .local v0, "ident":Ljava/lang/String;
    const-string/jumbo v1, "null"

    .line 2562
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "new"

    .line 2564
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "true"

    .line 2566
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "false"

    .line 2568
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "undefined"

    .line 2570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "Set"

    .line 2572
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "TreeSet"

    .line 2574
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x12

    .line 2577
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2579
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    .line 2563
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    .line 2565
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 2567
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    .line 2569
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x17

    .line 2571
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_6
    const/16 v1, 0x15

    .line 2573
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_7
    const/16 v1, 0x16

    .line 2575
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 11
    .param p1, "expectNext"    # C

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1867
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1870
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    .local v2, "offset":I
    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "chLocal":C
    const/16 v6, 0x2d

    .line 1872
    if-eq v0, v6, :cond_1

    move v1, v5

    .line 1873
    .local v1, "negative":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1878
    :goto_1
    if-ge v0, v9, :cond_3

    .line 1896
    :cond_0
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1897
    return v5

    .end local v1    # "negative":Z
    :cond_1
    const/4 v1, 0x1

    .line 1872
    goto :goto_0

    .line 1874
    .restart local v1    # "negative":Z
    :cond_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    goto :goto_1

    .line 1878
    :cond_3
    if-gt v0, v10, :cond_0

    .line 1879
    add-int/lit8 v4, v0, -0x30

    .line 1881
    .local v4, "value":I
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .line 1882
    if-ge v0, v9, :cond_5

    :cond_4
    const/16 v6, 0x2e

    .line 1884
    if-eq v0, v6, :cond_6

    .line 1891
    if-ltz v4, :cond_7

    .line 1901
    :goto_3
    if-eq v0, p1, :cond_8

    .line 1908
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1912
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1913
    if-nez v1, :cond_b

    .end local v4    # "value":I
    :goto_4
    return v4

    .line 1882
    .restart local v4    # "value":I
    :cond_5
    if-gt v0, v10, :cond_4

    .line 1883
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1885
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1886
    return v5

    .line 1892
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1893
    return v5

    .line 1902
    :cond_8
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1903
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v5, 0x3

    .line 1904
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0x10

    .line 1905
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1906
    if-nez v1, :cond_9

    .end local v4    # "value":I
    :goto_5
    return v4

    .restart local v4    # "value":I
    :cond_9
    neg-int v4, v4

    goto :goto_5

    .line 1909
    :cond_a
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    int-to-char v0, v5

    move v3, v2

    .line 1910
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    .line 1913
    :cond_b
    neg-int v4, v4

    goto :goto_4
.end method

.method public scanLong(C)J
    .locals 10
    .param p1, "expectNextChar"    # C

    .prologue
    const/4 v6, 0x0

    .line 2090
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2093
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    .local v2, "offset":I
    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "chLocal":C
    const/16 v6, 0x2d

    .line 2095
    if-eq v0, v6, :cond_1

    const/4 v1, 0x0

    .line 2096
    .local v1, "negative":Z
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    const/16 v6, 0x30

    .line 2101
    if-ge v0, v6, :cond_3

    :cond_0
    const/4 v6, -0x1

    .line 2119
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2120
    return-wide v6

    .end local v1    # "negative":Z
    :cond_1
    const/4 v1, 0x1

    .line 2095
    goto :goto_0

    .line 2097
    .restart local v1    # "negative":Z
    :cond_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    goto :goto_1

    :cond_3
    const/16 v6, 0x39

    .line 2101
    if-gt v0, v6, :cond_0

    .line 2102
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 2104
    .local v4, "value":J
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    const/16 v6, 0x30

    .line 2105
    if-ge v0, v6, :cond_5

    :cond_4
    const/16 v6, 0x2e

    .line 2107
    if-eq v0, v6, :cond_6

    const-wide/16 v6, 0x0

    .line 2114
    cmp-long v6, v4, v6

    if-ltz v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_9

    const/4 v6, -0x1

    .line 2115
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2116
    return-wide v6

    :cond_5
    const/16 v6, 0x39

    .line 2105
    if-gt v0, v6, :cond_4

    const-wide/16 v6, 0xa

    .line 2106
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

    .line 2108
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v6, 0x0

    .line 2109
    return-wide v6

    .line 2114
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 2132
    :cond_8
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    move v3, v2

    .line 2124
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    if-eq v0, p1, :cond_a

    .line 2131
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, -0x1

    .line 2136
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2137
    return-wide v4

    .line 2125
    :cond_a
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2126
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v6, 0x3

    .line 2127
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2128
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2129
    if-nez v1, :cond_b

    .end local v4    # "value":J
    :goto_4
    return-wide v4

    .restart local v4    # "value":J
    :cond_b
    neg-long v4, v4

    goto :goto_4
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 2470
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    .line 2473
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2475
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 2496
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7

    .line 2499
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2501
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_8

    .line 2504
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2506
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 2508
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2512
    return-void

    .line 2471
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2476
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2477
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4

    .line 2480
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2482
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_5

    .line 2485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2487
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 2489
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2493
    return-void

    .line 2478
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2483
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2487
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_3

    .line 2491
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2497
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2502
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2506
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_0

    .line 2510
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 2843
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2845
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v5, :cond_6

    .line 2851
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ge v1, v3, :cond_7

    .line 2859
    :cond_0
    const/4 v0, 0x0

    .line 2861
    .local v0, "isDouble":Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_8

    .line 2876
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_9

    .line 2879
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x53

    if-eq v1, v2, :cond_a

    .line 2882
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x42

    if-eq v1, v2, :cond_b

    .line 2885
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v7, :cond_c

    .line 2889
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_d

    .line 2893
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v1, v2, :cond_e

    .line 2894
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2895
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2897
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_f

    .line 2898
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2899
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2903
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ge v1, v3, :cond_10

    .line 2911
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_11

    .line 2912
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2913
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2916
    :goto_2
    const/4 v0, 0x1

    .line 2919
    :goto_3
    if-nez v0, :cond_12

    const/4 v1, 0x2

    .line 2922
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2924
    :goto_4
    return-void

    .line 2846
    .end local v0    # "isDouble":Z
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2847
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2851
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_0

    .line 2852
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2856
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2862
    .restart local v0    # "isDouble":Z
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2863
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2864
    const/4 v0, 0x1

    .line 2867
    :goto_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_1

    .line 2868
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2872
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    .line 2877
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2878
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 2880
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2881
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 2883
    :cond_b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2884
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 2886
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2888
    const/4 v0, 0x1

    goto :goto_3

    .line 2890
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2891
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2892
    const/4 v0, 0x1

    goto :goto_3

    .line 2893
    :cond_e
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x45

    if-eq v1, v2, :cond_2

    goto :goto_3

    .line 2897
    :cond_f
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v5, :cond_3

    goto/16 :goto_1

    .line 2903
    :cond_10
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_4

    .line 2904
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2908
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 2911
    :cond_11
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v7, :cond_5

    goto/16 :goto_2

    :cond_12
    const/4 v1, 0x3

    .line 2920
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_4
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 13
    .param p1, "expectNextChar"    # C

    .prologue
    const/4 v11, 0x0

    .line 1258
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1261
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v5, 0x1

    .local v5, "offset":I
    add-int/lit8 v11, v11, 0x0

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    int-to-char v0, v11

    .local v0, "chLocal":C
    const/16 v11, 0x6e

    .line 1263
    if-eq v0, v11, :cond_0

    const/16 v11, 0x22

    .line 1283
    if-ne v0, v11, :cond_4

    .line 1291
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v11, 0x1

    .line 1292
    .local v8, "startIndex":I
    const/16 v11, 0x22

    invoke-virtual {p0, v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .local v3, "endIndex":I
    const/4 v11, -0x1

    .line 1293
    if-eq v3, v11, :cond_5

    .line 1297
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    sub-int v12, v3, v8

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .local v10, "stringVal":Ljava/lang/String;
    const/16 v11, 0x5c

    .line 1298
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 1320
    :goto_0
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    sub-int v11, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v11, 0x1

    .line 1321
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    int-to-char v0, v11

    .line 1322
    move-object v9, v10

    .line 1325
    .local v9, "strVal":Ljava/lang/String;
    if-eq v0, p1, :cond_a

    const/4 v11, -0x1

    .line 1331
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1332
    return-object v9

    .line 1264
    .end local v3    # "endIndex":I
    .end local v6    # "offset":I
    .end local v8    # "startIndex":I
    .end local v9    # "strVal":Ljava/lang/String;
    .end local v10    # "stringVal":Ljava/lang/String;
    .restart local v5    # "offset":I
    :cond_0
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x75

    if-eq v11, v12, :cond_2

    :cond_1
    const/4 v11, -0x1

    .line 1268
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v11, 0x0

    .line 1269
    return-object v11

    .line 1264
    :cond_2
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_1

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_1

    .line 1265
    add-int/lit8 v5, v5, 0x3

    .line 1266
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    int-to-char v0, v11

    .line 1272
    if-eq v0, p1, :cond_3

    const/4 v11, -0x1

    .line 1278
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v11, 0x0

    .line 1279
    return-object v11

    .line 1273
    :cond_3
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1274
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    int-to-char v11, v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v11, 0x3

    .line 1275
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v11, 0x0

    .line 1276
    return-object v11

    :cond_4
    const/4 v11, -0x1

    .line 1284
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1294
    .restart local v3    # "endIndex":I
    .restart local v8    # "startIndex":I
    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "unclosed str"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .restart local v10    # "stringVal":Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 1301
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-gez v4, :cond_8

    .line 1308
    :cond_7
    rem-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_9

    .line 1311
    add-int/lit8 v11, v3, 0x1

    const/16 v12, 0x22

    invoke-virtual {p0, v12, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    goto :goto_1

    .line 1302
    :cond_8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_7

    .line 1303
    add-int/lit8 v7, v7, 0x1

    .line 1301
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1314
    :cond_9
    sub-int v2, v3, v8

    .line 1315
    .local v2, "chars_len":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1317
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 1326
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v5    # "offset":I
    .end local v7    # "slashCount":I
    .restart local v6    # "offset":I
    .restart local v9    # "strVal":Ljava/lang/String;
    :cond_a
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1327
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    int-to-char v11, v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v11, 0x3

    .line 1328
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1329
    return-object v9
.end method

.method public final scanString()V
    .locals 17

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 855
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 858
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    .local v1, "ch":C
    const/16 v13, 0x22

    .line 860
    if-eq v1, v13, :cond_8

    const/16 v13, 0x1a

    .line 864
    if-eq v1, v13, :cond_0

    const/16 v13, 0x5c

    .line 872
    if-eq v1, v13, :cond_2

    .line 972
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v13, :cond_6

    .line 977
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-eq v13, v14, :cond_7

    .line 980
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v15, v1

    aput-char v15, v13, v14

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 869
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 866
    :cond_1
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 873
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v13, :cond_3

    .line 891
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    .line 893
    packed-switch v1, :pswitch_data_0

    .line 966
    :pswitch_0
    int-to-char v13, v1

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 967
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 874
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 876
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 886
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    goto :goto_1

    .line 877
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 878
    .local v2, "newCapcity":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-gt v13, v2, :cond_5

    .line 881
    :goto_3
    new-array v3, v2, [C

    .line 882
    .local v3, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 879
    .end local v3    # "newsbuf":[C
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_3

    .line 895
    .end local v2    # "newCapcity":I
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 898
    :pswitch_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 901
    :pswitch_3
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 904
    :pswitch_4
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 907
    :pswitch_5
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 910
    :pswitch_6
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 913
    :pswitch_7
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 916
    :pswitch_8
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 919
    :pswitch_9
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 922
    :pswitch_a
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 925
    :pswitch_b
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 928
    :pswitch_c
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :pswitch_d
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 935
    :pswitch_e
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 938
    :pswitch_f
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 941
    :pswitch_10
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 944
    :pswitch_11
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 947
    :pswitch_12
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 950
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v9, v13

    .line 951
    .local v9, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v10, v13

    .line 953
    .local v10, "x2":C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 954
    .local v12, "x_val":I
    int-to-char v13, v12

    int-to-char v11, v13

    .line 955
    .local v11, "x_char":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 958
    .end local v9    # "x1":C
    .end local v10    # "x2":C
    .end local v11    # "x_char":C
    .end local v12    # "x_val":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v4, v13

    .line 959
    .local v4, "u1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v5, v13

    .line 960
    .local v5, "u2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v6, v13

    .line 961
    .local v6, "u3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v1, v13

    int-to-char v7, v13

    .line 962
    .local v7, "u4":C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    int-to-char v0, v4

    move/from16 v16, v0

    aput-char v16, v14, v15

    const/4 v15, 0x1

    int-to-char v0, v5

    move/from16 v16, v0

    aput-char v16, v14, v15

    const/4 v15, 0x2

    int-to-char v0, v6

    move/from16 v16, v0

    aput-char v16, v14, v15

    const/4 v15, 0x3

    int-to-char v0, v7

    move/from16 v16, v0

    aput-char v16, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 963
    .local v8, "val":I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 973
    .end local v4    # "u1":C
    .end local v5    # "u2":C
    .end local v6    # "u3":C
    .end local v7    # "u4":C
    .end local v8    # "val":I
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 978
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x4

    .line 984
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    int-to-char v13, v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 986
    return-void

    .line 893
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 12
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1630
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1633
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v5, 0x1

    .local v5, "offset":I
    add-int/lit8 v10, v10, 0x0

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .local v0, "chLocal":C
    const/16 v10, 0x6e

    .line 1635
    if-eq v0, v10, :cond_3

    :cond_0
    const/16 v10, 0x5b

    .line 1647
    if-ne v0, v10, :cond_4

    .line 1652
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_0
    const/16 v10, 0x6e

    .line 1655
    if-eq v0, v10, :cond_5

    :cond_1
    const/16 v10, 0x5d

    .line 1662
    if-eq v0, v10, :cond_6

    :cond_2
    const/16 v10, 0x22

    .line 1665
    if-ne v0, v10, :cond_7

    .line 1669
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v10, v6

    .line 1670
    .local v8, "startIndex":I
    const/16 v10, 0x22

    invoke-virtual {p0, v10, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .local v3, "endIndex":I
    const/4 v10, -0x1

    .line 1671
    if-eq v3, v10, :cond_8

    .line 1675
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v11, v3, v8

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    .local v9, "stringVal":Ljava/lang/String;
    const/16 v10, 0x5c

    .line 1676
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_9

    .line 1698
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int v5, v6, v10

    .line 1699
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .line 1700
    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v3    # "endIndex":I
    .end local v8    # "startIndex":I
    .end local v9    # "stringVal":Ljava/lang/String;
    :goto_2
    const/16 v10, 0x2c

    .line 1703
    if-eq v0, v10, :cond_d

    const/16 v10, 0x5d

    .line 1708
    if-eq v0, v10, :cond_e

    const/4 v10, -0x1

    .line 1713
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1714
    return-void

    .line 1635
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_3
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1636
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1637
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 1638
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 1639
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, p2, :cond_0

    .line 1641
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1642
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v10, v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v10, 0x5

    .line 1643
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1644
    return-void

    :cond_4
    const/4 v10, -0x1

    .line 1648
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1649
    return-void

    .line 1655
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    .line 1656
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_1

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    .line 1657
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_1

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x2

    .line 1658
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_1

    .line 1659
    add-int/lit8 v5, v6, 0x3

    .line 1660
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    const/4 v10, 0x0

    .line 1661
    invoke-interface {p1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1662
    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 1663
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    .line 1717
    :goto_3
    if-eq v0, p2, :cond_f

    const/4 v10, -0x1

    .line 1723
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1724
    return-void

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    const/4 v10, -0x1

    .line 1666
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1667
    return-void

    .line 1672
    .restart local v3    # "endIndex":I
    .restart local v8    # "startIndex":I
    :cond_8
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "unclosed str"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .restart local v9    # "stringVal":Ljava/lang/String;
    :cond_9
    :goto_4
    const/4 v7, 0x0

    .line 1679
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_5
    if-gez v4, :cond_b

    .line 1686
    :cond_a
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_c

    .line 1689
    add-int/lit8 v10, v3, 0x1

    const/16 v11, 0x22

    invoke-virtual {p0, v11, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    goto :goto_4

    .line 1680
    :cond_b
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_a

    .line 1681
    add-int/lit8 v7, v7, 0x1

    .line 1679
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1692
    :cond_c
    sub-int v2, v3, v8

    .line 1693
    .local v2, "chars_len":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    invoke-virtual {p0, v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1695
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1704
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v3    # "endIndex":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .end local v8    # "startIndex":I
    .end local v9    # "stringVal":Ljava/lang/String;
    :cond_d
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    move v6, v5

    .line 1705
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 1709
    :cond_e
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v0, v10

    goto :goto_3

    .line 1718
    :cond_f
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1719
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    int-to-char v10, v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v10, 0x3

    .line 1720
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1721
    return-void
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v3, 0x27

    const/16 v1, 0x22

    const/4 v2, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 582
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_0

    .line 586
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_1

    .line 594
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 600
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    .line 606
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    .line 611
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 615
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 587
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 588
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 596
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 597
    return-object v2

    .line 601
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 602
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 603
    return-object v2

    :cond_5
    const/16 v0, 0x14

    .line 607
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 608
    return-object v2

    .line 612
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 25
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .prologue
    const/4 v11, 0x0

    .line 625
    .local v11, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/16 v21, 0x0

    .line 626
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 627
    const/4 v10, 0x0

    .line 630
    .local v10, "hasSpecial":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    .line 632
    .local v9, "chLocal":C
    move/from16 v0, p2

    if-eq v9, v0, :cond_7

    const/16 v21, 0x1a

    .line 636
    move/from16 v0, v21

    if-eq v9, v0, :cond_0

    const/16 v21, 0x5c

    .line 640
    move/from16 v0, v21

    if-eq v9, v0, :cond_1

    .line 760
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 762
    if-eqz v10, :cond_5

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, v21, v22

    goto :goto_0

    .line 637
    :cond_0
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed.str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 641
    :cond_1
    if-eqz v10, :cond_2

    .line 659
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    .line 661
    packed-switch v9, :pswitch_data_0

    .line 754
    :pswitch_0
    int-to-char v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 755
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed.str.lit"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 642
    :cond_2
    const/4 v10, 0x1

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 656
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    goto :goto_1

    .line 645
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v12, v21, 0x2

    .line 646
    .local v12, "newCapcity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v12, :cond_4

    .line 649
    :goto_3
    new-array v13, v12, [C

    .line 650
    .local v13, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 647
    .end local v13    # "newsbuf":[C
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_3

    .line 663
    .end local v12    # "newCapcity":I
    :pswitch_1
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 664
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 667
    :pswitch_2
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 668
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 671
    :pswitch_3
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 672
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 675
    :pswitch_4
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 676
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 679
    :pswitch_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 680
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 683
    :pswitch_6
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 684
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 687
    :pswitch_7
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 688
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 691
    :pswitch_8
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 692
    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 695
    :pswitch_9
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x8

    .line 696
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 699
    :pswitch_a
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x9

    .line 700
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 703
    :pswitch_b
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xa

    .line 704
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 707
    :pswitch_c
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xb

    .line 708
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 712
    :pswitch_d
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xc

    .line 713
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 716
    :pswitch_e
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xd

    .line 717
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 720
    :pswitch_f
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x22

    .line 721
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 724
    :pswitch_10
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x27

    .line 725
    const/16 v21, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 728
    :pswitch_11
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x2f

    .line 729
    const/16 v21, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 732
    :pswitch_12
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x5c

    .line 733
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 736
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v17, v0

    .line 737
    .local v17, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v18, v0

    .line 739
    .local v18, "x2":C
    sget-object v21, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v21, v21, v17

    mul-int/lit8 v21, v21, 0x10

    sget-object v22, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v22, v22, v18

    add-int v20, v21, v22

    .line 740
    .local v20, "x_val":I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v19, v0

    .line 741
    .local v19, "x_char":C
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v19

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 745
    .end local v17    # "x1":C
    .end local v18    # "x2":C
    .end local v19    # "x_char":C
    .end local v20    # "x_val":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    move/from16 v0, v21

    int-to-char v5, v0

    .line 746
    .local v5, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    move/from16 v0, v21

    int-to-char v6, v0

    .line 747
    .local v6, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    move/from16 v0, v21

    int-to-char v7, v0

    .line 748
    .local v7, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v21

    move/from16 v0, v21

    int-to-char v9, v0

    move/from16 v0, v21

    int-to-char v8, v0

    .line 749
    .local v8, "c4":C
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-char v0, v5

    move/from16 v24, v0

    aput-char v24, v22, v23

    const/16 v23, 0x1

    int-to-char v0, v6

    move/from16 v24, v0

    aput-char v24, v22, v23

    const/16 v23, 0x2

    int-to-char v0, v7

    move/from16 v24, v0

    aput-char v24, v22, v23

    const/16 v23, 0x3

    int-to-char v0, v8

    move/from16 v24, v0

    aput-char v24, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 750
    .local v15, "val":I
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v15

    .line 751
    int-to-char v0, v15

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 763
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v15    # "val":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 768
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_7
    const/16 v21, 0x4

    .line 774
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 777
    if-eqz v10, :cond_8

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    :goto_4
    const/16 v21, 0x0

    .line 790
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 793
    return-object v16

    .line 780
    .end local v16    # "value":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v14, v21, 0x1

    .line 785
    .local v14, "offset":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_4

    .end local v14    # "offset":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    .line 781
    .restart local v14    # "offset":I
    goto :goto_5

    .line 661
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v10, 0x6c

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 805
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 806
    .local v4, "firstIdentifierFlags":[Z
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    int-to-char v2, v8

    .line 808
    .local v2, "first":C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v9, v4

    if-lt v8, v9, :cond_2

    :cond_0
    move v3, v7

    .line 809
    .local v3, "firstFlag":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 814
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 816
    .local v6, "identifierFlags":[Z
    move v5, v2

    .line 818
    .local v5, "hash":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 819
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 822
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    int-to-char v1, v7

    .line 824
    .local v1, "chLocal":C
    array-length v7, v6

    if-lt v1, v7, :cond_4

    .line 830
    :cond_1
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 832
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_1

    .line 808
    .end local v1    # "chLocal":C
    .end local v3    # "firstFlag":Z
    .end local v5    # "hash":I
    .end local v6    # "identifierFlags":[Z
    :cond_2
    aget-boolean v8, v4, v2

    if-nez v8, :cond_0

    goto :goto_0

    .line 810
    .restart local v3    # "firstFlag":Z
    :cond_3
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 811
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 825
    .restart local v1    # "chLocal":C
    .restart local v5    # "hash":I
    .restart local v6    # "identifierFlags":[Z
    :cond_4
    aget-boolean v7, v6, v1

    if-nez v7, :cond_1

    .line 836
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x12

    .line 837
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const v0, 0x33c587

    .line 840
    .local v0, "NULL_HASH":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    .line 847
    :cond_5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_6
    const v7, 0x33c587

    .line 840
    if-ne v5, v7, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x3

    .line 841
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    const/4 v7, 0x0

    .line 842
    return-object v7
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .prologue
    const/16 v8, 0x22

    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1420
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1423
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x1

    .local v3, "offset":I
    add-int/lit8 v7, v7, 0x0

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .local v0, "chLocal":C
    const/16 v7, 0x6e

    .line 1425
    if-eq v0, v7, :cond_0

    .line 1445
    if-ne v0, v8, :cond_4

    const/4 v1, 0x0

    .line 1454
    .local v1, "hash":I
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 1455
    if-eq v0, v8, :cond_5

    .line 1465
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    const/16 v7, 0x5c

    .line 1467
    if-eq v0, v7, :cond_6

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1426
    .end local v1    # "hash":I
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-eq v7, v8, :cond_2

    .line 1430
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1431
    return-object v10

    .line 1426
    :cond_2
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_1

    .line 1427
    add-int/lit8 v3, v3, 0x3

    .line 1428
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    .line 1434
    if-eq v0, p2, :cond_3

    .line 1440
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1441
    return-object v10

    .line 1435
    :cond_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1436
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1437
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1438
    return-object v10

    .line 1446
    :cond_4
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1447
    return-object v10

    .line 1458
    .end local v3    # "offset":I
    .restart local v1    # "hash":I
    .restart local v4    # "offset":I
    :cond_5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x0

    add-int/lit8 v5, v7, 0x1

    .line 1459
    .local v5, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 1460
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1461
    .local v6, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    move v4, v3

    .line 1474
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1480
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1485
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1486
    return-object v6

    .line 1468
    .end local v2    # "len":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    :cond_6
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1469
    return-object v10

    .line 1475
    .restart local v2    # "len":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_7
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1476
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1477
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1478
    return-object v6

    .line 1481
    :cond_8
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    int-to-char v0, v7

    move v4, v3

    .line 1482
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 2441
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1

    .line 2444
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2446
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    .line 2449
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2451
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    .line 2454
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2456
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 2459
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2461
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x6

    .line 2463
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2467
    return-void

    .line 2442
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2452
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2457
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2461
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 2465
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1085
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1087
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1091
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v4, v4

    add-int v0, v3, v4

    .line 1093
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "typeLength":I
    const/4 v1, 0x0

    .line 1094
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1099
    add-int/2addr v0, v2

    .line 1100
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_3

    .line 1104
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1106
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v7, :cond_4

    .line 1111
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v8, :cond_5

    .line 1130
    :goto_1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1131
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v3

    .end local v0    # "bpLocal":I
    .end local v1    # "i":I
    .end local v2    # "typeLength":I
    :cond_0
    const/4 v3, -0x2

    .line 1088
    return v3

    .line 1095
    .restart local v0    # "bpLocal":I
    .restart local v1    # "i":I
    .restart local v2    # "typeLength":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    :cond_2
    return v5

    .line 1101
    :cond_3
    return v5

    .line 1107
    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1108
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1109
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v3, 0x3

    .line 1110
    return v3

    .line 1112
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1113
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v7, :cond_6

    .line 1116
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_7

    .line 1119
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v8, :cond_8

    .line 1122
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_9

    .line 1125
    return v5

    .line 1114
    :cond_6
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1115
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_2
    const/4 v3, 0x4

    .line 1127
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1

    :cond_7
    const/16 v3, 0xf

    .line 1117
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1118
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_8
    const/16 v3, 0xd

    .line 1120
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1121
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_9
    const/16 v3, 0x14

    .line 1123
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1006
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 998
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 109
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 550
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 551
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_0

    .line 559
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    .line 575
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 554
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 556
    return-void

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 562
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_3

    .line 577
    return-void

    .line 563
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 564
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 565
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 567
    return-void
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 2693
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-le v0, v2, :cond_1

    .line 2707
    :cond_0
    return-void

    .line 2694
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 2695
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2694
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 2697
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_0

    .line 2698
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
