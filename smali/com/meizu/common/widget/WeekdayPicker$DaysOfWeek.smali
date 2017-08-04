.class final Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;
.super Ljava/lang/Object;
.source "WeekdayPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/WeekdayPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x7

    .line 448
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    aput v4, v0, v2

    aput v5, v0, v3

    aput v6, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v5

    const/4 v1, 0x7

    aput v1, v0, v6

    const/4 v1, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->DAY_MAP:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 463
    return-void
.end method

.method private isSet(I)Z
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 517
    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int v3, v1, p1

    and-int/2addr v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 546
    new-array v1, v3, [Z

    .local v1, "ret":[Z
    const/4 v0, 0x0

    .line 547
    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 550
    return-object v1

    .line 548
    :cond_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    return v0
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 527
    if-nez p2, :cond_0

    .line 530
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 532
    :goto_0
    return-void

    .line 528
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    .prologue
    .line 535
    iget v0, p1, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 536
    return-void
.end method

.method public setDays(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 467
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    const/4 v9, 0x1

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v6, "ret":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    if-eqz v7, :cond_0

    .line 477
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_2

    .line 482
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_3

    .line 487
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v8, 0x60

    if-eq v7, v8, :cond_4

    const/4 v1, 0x0

    .line 492
    .local v1, "dayCount":I
    iget v3, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 493
    .local v3, "days":I
    :goto_0
    if-gtz v3, :cond_5

    .line 498
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 499
    .local v4, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    .local v2, "dayList":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v7, 0x7

    .line 501
    if-lt v5, v7, :cond_7

    .line 513
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 473
    .end local v1    # "dayCount":I
    .end local v2    # "dayList":[Ljava/lang/String;
    .end local v3    # "days":I
    .end local v4    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v5    # "i":I
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v7, ""

    :goto_2
    return-object v7

    :cond_1
    sget v7, Lcom/meizu/common/R$string;->mc_never:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 478
    :cond_2
    sget v7, Lcom/meizu/common/R$string;->mc_every_day:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 483
    :cond_3
    sget v7, Lcom/meizu/common/R$string;->mc_working_day:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 488
    :cond_4
    sget v7, Lcom/meizu/common/R$string;->mc_weekend:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 494
    .restart local v1    # "dayCount":I
    .restart local v3    # "days":I
    :cond_5
    and-int/lit8 v7, v3, 0x1

    if-eq v7, v9, :cond_6

    .line 495
    :goto_3
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 502
    .restart local v2    # "dayList":[Ljava/lang/String;
    .restart local v4    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v5    # "i":I
    :cond_7
    iget v7, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int v8, v9, v5

    and-int/2addr v7, v8

    if-nez v7, :cond_9

    .line 501
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 503
    :cond_9
    sget-object v7, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->DAY_MAP:[I

    aget v7, v7, v5

    aget-object v0, v2, v7

    .line 504
    .local v0, "day":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "zh"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 508
    :cond_a
    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v1, v1, -0x1

    .line 510
    if-lez v1, :cond_8

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 504
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 505
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
