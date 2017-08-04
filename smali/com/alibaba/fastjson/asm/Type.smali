.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field protected final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x56050000

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "buf"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 116
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 117
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 118
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    .line 119
    return-void
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 8
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x4a

    const/16 v6, 0x44

    const/4 v3, 0x1

    .local v3, "n":I
    const/4 v0, 0x1

    .line 135
    .local v0, "c":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v2, v4

    .local v2, "car":C
    const/16 v4, 0x29

    .line 136
    if-eq v2, v4, :cond_1

    const/16 v4, 0x4c

    .line 139
    if-eq v2, v4, :cond_7

    .line 150
    if-ne v2, v6, :cond_6

    .line 151
    :cond_0
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .line 137
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v2, v4

    .line 138
    shl-int/lit8 v5, v3, 0x2

    const/16 v4, 0x56

    if-eq v2, v4, :cond_3

    if-ne v2, v6, :cond_4

    :cond_2
    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v5

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    if-eq v2, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 140
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    .line 142
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .line 150
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_6
    if-eq v2, v7, :cond_0

    .line 153
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_7
    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .locals 5
    .param p0, "buf"    # [C
    .param p1, "off"    # I

    .prologue
    const/16 v3, 0x3b

    .line 167
    aget-char v1, p0, p1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    .line 201
    .local v0, "len":I
    :goto_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-ne v1, v3, :cond_3

    .line 204
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 169
    .end local v0    # "len":I
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 171
    :pswitch_2
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 173
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 175
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 177
    :pswitch_5
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 179
    :pswitch_6
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 181
    :pswitch_7
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 183
    :pswitch_8
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    .line 185
    :pswitch_9
    sget-object v1, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v1

    :pswitch_a
    const/4 v0, 0x1

    .line 188
    .restart local v0    # "len":I
    :goto_1
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    .line 191
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_2

    .line 197
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 193
    :goto_2
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method getDescriptor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
