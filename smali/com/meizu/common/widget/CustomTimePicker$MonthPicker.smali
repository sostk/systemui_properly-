.class Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthPicker"
.end annotation


# instance fields
.field private endDate:[I

.field private endIndex:I

.field private endLunarDate:[I

.field private leapMonthIn1stYear:I

.field private leapMonthIn2ndYear:I

.field private lunarMonthsIn1stYear:I

.field private lunarMonthsIn2ndYear:I

.field private mMonths:[Ljava/lang/String;

.field private picker:Lcom/meizu/common/widget/ScrollTextView;

.field private startDate:[I

.field private startIndex:I

.field private startLunarDate:[I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 2
    .param p2, "picker"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    const/4 v1, 0x4

    .line 760
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    .line 747
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    .line 748
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 749
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 761
    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    .line 762
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    .line 763
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->calculateValidDateField()V

    .line 764
    return-void
.end method

.method private calculateValidDateField()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 942
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 943
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v6

    .line 944
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 945
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v7

    .line 946
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aput v6, v1, v8

    .line 948
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    add-int/lit8 v1, v1, 0x1

    :goto_0
    aput v1, v2, v6

    .line 949
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    :goto_1
    aput v1, v2, v5

    .line 950
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v4, v4, v5

    invoke-static {v2, v3, v4, v6}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    aput v2, v1, v7

    .line 951
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aput v6, v1, v8

    .line 953
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 956
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 959
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-eq v1, v2, :cond_4

    .line 966
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    rsub-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 967
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 968
    .local v0, "leapMonth":I
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    .line 969
    if-nez v0, :cond_5

    .line 976
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 977
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 978
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    .line 979
    if-nez v0, :cond_8

    .line 986
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 987
    return-void

    .line 948
    .end local v0    # "leapMonth":I
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 949
    goto/16 :goto_1

    .line 960
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 961
    iput v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 962
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 963
    return-void

    .line 970
    .restart local v0    # "leapMonth":I
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-ge v1, v0, :cond_7

    .line 972
    :cond_6
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    goto :goto_2

    .line 970
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v8

    if-ne v1, v5, :cond_6

    goto :goto_2

    .line 980
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-le v1, v0, :cond_a

    .line 982
    :cond_9
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    goto :goto_3

    .line 980
    :cond_a
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v8

    if-eq v1, v5, :cond_9

    goto :goto_3
.end method

.method private getLunarMonths(II)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v4, 0x0

    .line 1117
    rem-int/lit8 p1, p1, 0xd

    .line 1118
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 1119
    .local v1, "leapMonth":I
    if-eqz v1, :cond_2

    const/16 v3, 0xd

    .line 1124
    if-ge p1, v3, :cond_3

    .line 1129
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1130
    .local v2, "mouths":[Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "leap":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1139
    :cond_1
    aget-object v3, v2, p1

    return-object v3

    .end local v0    # "leap":Ljava/lang/String;
    .end local v2    # "mouths":[Ljava/lang/String;
    :cond_2
    const/16 v3, 0xc

    .line 1120
    if-lt p1, v3, :cond_0

    .line 1121
    return-object v4

    .line 1125
    :cond_3
    return-object v4

    .line 1132
    .restart local v0    # "leap":Ljava/lang/String;
    .restart local v2    # "mouths":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v1, -0x1

    if-le p1, v3, :cond_1

    .line 1133
    if-eq p1, v1, :cond_5

    .line 1136
    add-int/lit8 v3, p1, -0x1

    aget-object v3, v2, v3

    return-object v3

    .line 1134
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 1085
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1086
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1090
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1091
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2602(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1092
    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_4

    .line 1103
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1108
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2502(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_0

    .line 1110
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1093
    .restart local v1    # "i":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1092
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 1104
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1105
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 991
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_9

    :cond_0
    const-string/jumbo v2, ""

    .line 1018
    return-object v2

    .line 992
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 994
    if-gez p1, :cond_3

    :cond_2
    const-string/jumbo v2, ""

    .line 996
    return-object v2

    .line 994
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_2

    .line 1000
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-ge p1, v2, :cond_5

    .line 1004
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, -0x1

    add-int/2addr p1, v2

    .line 1005
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-nez v2, :cond_6

    .line 1011
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v2, v4

    .line 1014
    .local v1, "year":I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getLunarMonths(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1001
    .end local v1    # "year":I
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    sub-int/2addr p1, v2

    .line 1002
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v2, v4

    .restart local v1    # "year":I
    goto :goto_1

    .line 1006
    .end local v1    # "year":I
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v2, v3, :cond_8

    .line 1007
    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1006
    :cond_8
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ge p1, v2, :cond_7

    goto :goto_0

    .line 1016
    :cond_9
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xb

    if-gt p1, v2, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0xc

    .line 1022
    .local v0, "m":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    return-object v2
.end method

.method public getMonth([I)I
    .locals 5
    .param p1, "data"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getCurrentItem()I

    move-result v0

    .line 779
    .local v0, "id":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    rsub-int/lit8 v1, v1, 0xc

    if-gt v0, v1, :cond_c

    .line 822
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 823
    if-nez p1, :cond_d

    .line 830
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-ge v0, v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 796
    if-nez p1, :cond_6

    .line 800
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-nez v1, :cond_7

    .line 810
    aput v3, p1, v4

    goto :goto_0

    .line 781
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 782
    if-nez p1, :cond_4

    .line 785
    :goto_2
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_5

    .line 788
    :cond_3
    aput v3, p1, v4

    .line 791
    :goto_3
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v1, :cond_0

    .line 792
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 783
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v3

    aput v1, p1, v3

    goto :goto_2

    .line 785
    :cond_5
    if-eqz p1, :cond_3

    .line 786
    aput v4, p1, v4

    goto :goto_3

    .line 797
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    aput v1, p1, v3

    goto :goto_1

    .line 801
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-eq v1, v4, :cond_a

    .line 803
    :cond_8
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    rsub-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_b

    .line 807
    :cond_9
    aput v3, p1, v4

    goto :goto_0

    .line 801
    :cond_a
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, v1, :cond_8

    .line 802
    aput v4, p1, v4

    goto :goto_0

    .line 803
    :cond_b
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v1, :cond_9

    .line 804
    aput v4, p1, v4

    .line 805
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 816
    :cond_c
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    rsub-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    .line 817
    if-eqz p1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v3

    aput v1, p1, v3

    .line 819
    aput v3, p1, v4

    goto :goto_0

    .line 824
    :cond_d
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    aput v1, p1, v3

    .line 825
    aput v3, p1, v4

    goto :goto_0
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1028
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1030
    .local v1, "maxdays":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p3, v2

    .line 1032
    .local v0, "id":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1039
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    rsub-int/lit8 v2, v2, 0xc

    if-gt v0, v2, :cond_4

    .line 1042
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v6

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1046
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1064
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    rsub-int/lit8 v2, v2, 0xc

    if-gt v0, v2, :cond_7

    .line 1067
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    add-int/2addr v0, v2

    .line 1070
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1074
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 1081
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    .line 1082
    return-void

    .line 1033
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-ge v0, v2, :cond_3

    .line 1036
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v3, v3, v6

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1034
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v3, v3, v6

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1040
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v6

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1047
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-ge v0, v2, :cond_6

    .line 1054
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v7

    add-int/2addr v0, v2

    .line 1056
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v7

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v7, :cond_0

    .line 1057
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v2, :cond_0

    .line 1058
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1048
    :cond_6
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 1050
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v2, :cond_0

    .line 1051
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 1065
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    rsub-int/lit8 v2, v2, 0xc

    sub-int/2addr v0, v2

    goto/16 :goto_1

    .line 1074
    :cond_8
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1078
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    goto/16 :goto_2
.end method

.method public refreshCountAndCurrent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCountAndCurrent(II)V

    .line 920
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 933
    iput p6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    .line 934
    div-int/lit8 v0, p5, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v0, v0, p7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    .line 936
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    div-int/lit8 v1, p5, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p4, v1

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 939
    return-void
.end method

.method public setDayPickerValidField(I)V
    .locals 8
    .param p1, "day"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 877
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    .line 878
    .local v0, "maxdays":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 891
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    if-eq v1, v2, :cond_7

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 897
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    if-eq v1, v2, :cond_8

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    .line 905
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 906
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 907
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidEnd()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 908
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidStart()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 910
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 911
    return-void

    .line 879
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    if-eq v1, v2, :cond_5

    .line 882
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 885
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v5

    if-eq v1, v2, :cond_6

    .line 888
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1

    .line 879
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_3

    .line 880
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto :goto_2

    .line 885
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_4

    .line 886
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1

    .line 891
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_0

    .line 892
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto/16 :goto_0

    .line 897
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_1

    .line 898
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1
.end method

.method public setMonth(IIIZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isleapmonth"    # Z

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 834
    if-ltz p2, :cond_1

    .line 837
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, p4}, Lcom/meizu/common/widget/CustomTimePicker;->access$1702(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    .line 838
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 862
    if-le p2, v3, :cond_c

    .line 873
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    .line 874
    return-void

    .line 835
    :cond_1
    return-void

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    if-eq p1, v0, :cond_4

    .line 851
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 852
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-nez v0, :cond_9

    .line 858
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_0

    .line 840
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-nez v0, :cond_6

    .line 848
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_0

    .line 841
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-eq v0, v2, :cond_5

    .line 842
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le p2, v0, :cond_8

    .line 844
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 842
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, p2, :cond_5

    if-nez p4, :cond_7

    goto :goto_2

    .line 853
    :cond_9
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le p2, v0, :cond_b

    .line 855
    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 853
    :cond_b
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-ne v0, p2, :cond_3

    if-nez p4, :cond_a

    goto :goto_1

    .line 863
    :cond_c
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v1

    if-eq p1, v0, :cond_e

    .line 866
    :cond_d
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    if-gt p2, v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    sub-int/2addr v0, p2

    rsub-int/lit8 p2, v0, 0xb

    .line 868
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_0

    .line 863
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v2

    if-lt p2, v0, :cond_d

    const/16 v0, 0xb

    .line 864
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 865
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto/16 :goto_0
.end method

.method public setSelectItemHeight(I)V
    .locals 2
    .param p1, "selectHeight"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 768
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 928
    return-void
.end method

.method public setTextSize(II)V
    .locals 3
    .param p1, "selectedSize"    # I
    .param p2, "normalSize"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 924
    return-void
.end method
