.class Lcom/meizu/common/util/LunarCalendar$DateParser;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/LunarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateParser"
.end annotation


# static fields
.field static final FORAMTS:[Ljava/lang/String;

.field static final PATTERN_DAY:Ljava/lang/String; = "((0)?[1-9]|(1|2)[0-9]|30|31)"

.field static final PATTERN_MONTH:Ljava/lang/String; = "((0)?[1-9]|1[012])"

.field static final PATTERN_TYPE_DD_MM_YYYY:I = 0x1

.field static final PATTERN_TYPE_MM_DD_YYYY:I = 0x3

.field static final PATTERN_TYPE_YYYY_DD_MM:I = 0x2

.field static final PATTERN_TYPE_YYYY_MM_DD:I = 0x0

.field static final PATTERN_YEAR:Ljava/lang/String; = "(19|20)[0-9]{2}"

.field static final SEPARATOR:[Ljava/lang/String;


# instance fields
.field private mCurrentSeparator:Ljava/lang/String;

.field private mDateString:Ljava/lang/String;

.field private mFormatOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "-"

    aput-object v1, v0, v2

    const-string/jumbo v1, "/"

    aput-object v1, v0, v3

    const-string/jumbo v1, "."

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/common/util/LunarCalendar$DateParser;->SEPARATOR:[Ljava/lang/String;

    const/4 v0, 0x4

    .line 389
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "(19|20)[0-9]{2}S((0)?[1-9]|1[012])S((0)?[1-9]|(1|2)[0-9]|30|31)"

    aput-object v1, v0, v2

    const-string/jumbo v1, "((0)?[1-9]|(1|2)[0-9]|30|31)S((0)?[1-9]|1[012])S(19|20)[0-9]{2}"

    aput-object v1, v0, v3

    const-string/jumbo v1, "(19|20)[0-9]{2}S((0)?[1-9]|(1|2)[0-9]|30|31)S((0)?[1-9]|1[012])"

    aput-object v1, v0, v4

    const-string/jumbo v1, "((0)?[1-9]|1[012])S((0)?[1-9]|(1|2)[0-9]|30|31)S(19|20)[0-9]{2}"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/common/util/LunarCalendar$DateParser;->FORAMTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 402
    iput v0, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mFormatOrder:I

    .line 407
    iput-object p1, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mDateString:Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Lcom/meizu/common/util/LunarCalendar$DateParser;->recognitionFormat()V

    .line 409
    return-void
.end method


# virtual methods
.method getDate()[I
    .locals 7

    .prologue
    .line 412
    iget-object v5, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mDateString:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mCurrentSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "year":I
    const/4 v2, 0x1

    .local v2, "month":I
    const/4 v0, 0x2

    .line 414
    .local v0, "day":I
    iget v5, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mFormatOrder:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    const/4 v5, 0x3

    .line 436
    new-array v1, v5, [I

    .local v1, "lunarDate":[I
    const/4 v5, 0x0

    .line 437
    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x1

    .line 438
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x2

    .line 439
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    .line 441
    return-object v1

    .end local v1    # "lunarDate":[I
    :pswitch_0
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    .line 418
    goto :goto_0

    :pswitch_1
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 423
    goto :goto_0

    :pswitch_2
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 428
    goto :goto_0

    :pswitch_3
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 433
    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method recognitionFormat()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 446
    .local v8, "separator":Ljava/lang/String;
    sget-object v0, Lcom/meizu/common/util/LunarCalendar$DateParser;->SEPARATOR:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .end local v8    # "separator":Ljava/lang/String;
    .local v3, "i$":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 452
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "."

    .line 456
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 459
    :goto_1
    iput-object v8, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mCurrentSeparator:Ljava/lang/String;

    .line 461
    iput v11, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mFormatOrder:I

    const/4 v2, 0x0

    .line 464
    .local v2, "i":I
    :goto_2
    sget-object v9, Lcom/meizu/common/util/LunarCalendar$DateParser;->FORAMTS:[Ljava/lang/String;

    array-length v9, v9

    if-lt v2, v9, :cond_4

    .line 474
    :goto_3
    iget v9, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mFormatOrder:I

    if-eq v9, v11, :cond_6

    .line 477
    return-void

    .line 446
    .end local v2    # "i":I
    :cond_0
    aget-object v7, v0, v3

    .line 447
    .local v7, "sep":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mDateString:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 446
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    :cond_1
    move-object v8, v7

    .local v8, "separator":Ljava/lang/String;
    goto :goto_4

    .line 453
    .end local v7    # "sep":Ljava/lang/String;
    .end local v8    # "separator":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Date separator must in \'.\' or \'/\' or \'-\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    const-string/jumbo v8, "\\."

    .line 457
    .restart local v8    # "separator":Ljava/lang/String;
    goto :goto_1

    .line 465
    .end local v8    # "separator":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_4
    sget-object v9, Lcom/meizu/common/util/LunarCalendar$DateParser;->FORAMTS:[Ljava/lang/String;

    aget-object v9, v9, v2

    const-string/jumbo v10, "S"

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 467
    .local v6, "pattern":Ljava/util/regex/Pattern;
    iget-object v9, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mDateString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 468
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_5

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 469
    :cond_5
    iput v2, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mFormatOrder:I

    goto :goto_3

    .line 475
    .end local v1    # "format":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported date format for string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/common/util/LunarCalendar$DateParser;->mDateString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", only support yyyyMMdd/ddMMyyyy/yyyyddMM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
