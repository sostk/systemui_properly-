.class public Lcom/meizu/common/widget/WeekdayPicker;
.super Landroid/widget/LinearLayout;
.source "WeekdayPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;,
        Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;
    }
.end annotation


# static fields
.field static final DIFF_FRIDAY:I = 0x3

.field static final DIFF_MONDAY:I = 0x0

.field static final DIFF_SATURDAY:I = 0x2

.field static final DIFF_SUNDAY:I = 0x1

.field static final DIFF_THURSDAY:I = 0x4

.field static final DIFF_TUESDAY:I = 0x6

.field static final DIFF_WEDNESDAY:I = 0x5

.field static final FIXED_DIFF_NORMAL_DAY:I = 0x0

.field static final FIXED_WEEK_START_NORMAL_DAY:Ljava/lang/String; = "-1"

.field public static final FRIDAY:I = 0x10

.field static final HEIGHT_DELAY:I = 0x20

.field static final IMG_SELECTED_TAG:Ljava/lang/String; = "selected"

.field static final IMG_UNSELECTED_TAG:Ljava/lang/String; = "unselected"

.field public static final MONDAY:I = 0x1

.field public static final NO_DAY:I = 0x0

.field static final PADDING_SIZE:I = 0xc

.field public static final SATURDAY:I = 0x20

.field static final SQUARE_WIDTH:I = 0x40

.field public static final SUNDAY:I = 0x40

.field public static final THURSDAY:I = 0x8

.field static final TOTAL_ITEM_COUNT:I = 0x7

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field static final WEEK_START_FRIDAY:Ljava/lang/String; = "6"

.field static final WEEK_START_MONDAY:Ljava/lang/String; = "2"

.field static final WEEK_START_NORMAL:Ljava/lang/String; = "-1"

.field static final WEEK_START_NULL:Ljava/lang/String; = "-2"

.field static final WEEK_START_SATURDAY:Ljava/lang/String; = "7"

.field static final WEEK_START_SUNDAY:Ljava/lang/String; = "1"

.field static final WEEK_START_THURSDAY:Ljava/lang/String; = "5"

.field static final WEEK_START_TUESDAY:Ljava/lang/String; = "3"

.field static final WEEK_START_WEDNESDAY:Ljava/lang/String; = "4"


# instance fields
.field private mBackgrouds:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDiffWeekStart:I

.field private mHeightDelay:I

.field private mLastChangedIndex:I

.field private mLastLastChangedIndex:I

.field private mOutSide:Z

.field private mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

.field private mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

.field private mSquareWidth:I

.field private mTexts:[Landroid/widget/TextView;

.field private mWeekStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string/jumbo v0, "-1"

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 81
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string/jumbo v0, "-1"

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 87
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    const-string/jumbo v0, "-1"

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 93
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 95
    return-void
.end method

.method private currentTouchIndex(F)I
    .locals 8
    .param p1, "currentX"    # F

    .prologue
    const/4 v7, 0x7

    const/4 v6, -0x1

    .line 261
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getWidth()I

    move-result v2

    .line 262
    .local v2, "layoutWidth":I
    div-int/lit8 v4, v2, 0x7

    int-to-float v0, v4

    .line 263
    .local v0, "eachWidth":F
    iget v4, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .line 265
    .local v3, "squarePadding":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    div-float v4, p1, v0

    float-to-int v1, v4

    .line 270
    .local v1, "inPlace":I
    if-ge v1, v7, :cond_2

    .line 273
    iget v4, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    sub-int/2addr v1, v4

    .line 274
    if-ltz v1, :cond_3

    .line 279
    :goto_1
    rem-float v4, p1, v0

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_4

    rem-float v4, p1, v0

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    .line 280
    return v1

    .line 265
    .end local v1    # "inPlace":I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 266
    int-to-float v4, v2

    sub-float p1, v4, p1

    goto :goto_0

    .line 271
    .restart local v1    # "inPlace":I
    :cond_2
    return v6

    .line 275
    :cond_3
    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 283
    :cond_4
    return v6
.end method

.method private initView()V
    .locals 12

    .prologue
    .line 98
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$dimen;->mc_chooser_item_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 99
    iget v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    const/4 v9, 0x7

    .line 101
    new-array v9, v9, [Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    const/4 v9, 0x7

    .line 102
    new-array v9, v9, [Landroid/widget/TextView;

    iput-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    const/4 v9, 0x7

    .line 104
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_monday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_tuesday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_wednesday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_thursday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_friday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x5

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_saturday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$string;->mc_sunday:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .local v1, "daysOfWeekStr":[Ljava/lang/String;
    const-string/jumbo v9, "-2"

    .line 112
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "-1"

    .line 115
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :goto_0
    const-string/jumbo v9, "1"

    .line 120
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "2"

    .line 122
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "3"

    .line 124
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "4"

    .line 126
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "5"

    .line 128
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "6"

    .line 130
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "7"

    .line 132
    iget-object v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 136
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x3f800000    # 1.0f

    .line 137
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v9, 0x11

    .line 138
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-eqz v9, :cond_9

    .line 144
    :goto_2
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v9}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v6

    .local v6, "setArray":[Z
    const/4 v3, 0x0

    .local v3, "hasAddIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v9, 0x7

    .line 148
    if-lt v4, v9, :cond_a

    .line 190
    return-void

    .line 113
    .end local v3    # "hasAddIndex":I
    .end local v4    # "i":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "setArray":[Z
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 114
    .local v2, "firstDayOfWeek":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    goto :goto_0

    .line 116
    .end local v2    # "firstDayOfWeek":I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 117
    .restart local v2    # "firstDayOfWeek":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "firstDayOfWeek":I
    :cond_2
    const/4 v9, 0x1

    .line 121
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 123
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_4
    const/4 v9, 0x6

    .line 125
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_5
    const/4 v9, 0x5

    .line 127
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_6
    const/4 v9, 0x4

    .line 129
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_7
    const/4 v9, 0x3

    .line 131
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    :cond_8
    const/4 v9, 0x2

    .line 133
    iput v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto :goto_1

    .line 141
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    new-instance v9, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;-><init>(I)V

    iput-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    goto :goto_2

    .line 149
    .restart local v3    # "hasAddIndex":I
    .restart local v4    # "i":I
    .restart local v6    # "setArray":[Z
    :cond_a
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$layout;->mc_weekday_picker_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 150
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v9, Lcom/meizu/common/R$id;->mc_chooser_text:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 153
    .local v7, "text":Landroid/widget/TextView;
    aget-object v9, v1, v4

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v9, Lcom/meizu/common/R$id;->mc_background_img:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, "backImg":Landroid/widget/ImageView;
    if-nez v6, :cond_b

    const-string/jumbo v9, "unselected"

    .line 175
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 176
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_4
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aput-object v0, v9, v4

    .line 181
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aput-object v7, v9, v4

    .line 183
    iget v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    add-int/2addr v9, v4

    const/4 v10, 0x7

    if-ge v9, v10, :cond_f

    .line 187
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/WeekdayPicker;->addView(Landroid/view/View;)V

    .line 148
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 157
    :cond_b
    aget-boolean v9, v6, v4

    if-nez v9, :cond_c

    const-string/jumbo v9, "unselected"

    .line 165
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_e

    .line 170
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off_disable:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected_disable:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_c
    const-string/jumbo v9, "selected"

    .line 158
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_d

    .line 162
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on_disable:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_6
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 160
    :cond_d
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    .line 167
    :cond_e
    sget v9, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 184
    :cond_f
    invoke-virtual {p0, v8, v3}, Lcom/meizu/common/widget/WeekdayPicker;->addView(Landroid/view/View;I)V

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private onBackgoundSelected(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "isMove"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    return-void

    .line 287
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-eqz v0, :cond_0

    .line 291
    if-nez p2, :cond_3

    .line 306
    :cond_2
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 307
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    const-string/jumbo v0, "selected"

    .line 308
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const-string/jumbo v1, "selected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1, v4}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    .line 319
    :goto_1
    return-void

    .line 291
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "selected"

    .line 294
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    const-string/jumbo v1, "selected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {v0, v1, v4}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto/16 :goto_0

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    const-string/jumbo v1, "unselected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto/16 :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const-string/jumbo v1, "unselected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto/16 :goto_1
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 417
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-nez v2, :cond_1

    .line 418
    :cond_0
    return-void

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v2}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    .local v1, "setArray":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    .line 422
    if-lt v0, v2, :cond_2

    .line 433
    return-void

    .line 423
    :cond_2
    aget-boolean v2, v1, v0

    if-nez v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const-string/jumbo v3, "unselected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 429
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const-string/jumbo v3, "selected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getSelectedArray()[Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDays()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/WeekdayPicker;

    .line 564
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x7

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    .local v3, "insideX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 203
    .local v4, "insideY":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 205
    .local v5, "parent":Landroid/view/ViewParent;
    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return v7

    .line 197
    .end local v0    # "action":I
    .end local v3    # "insideX":F
    .end local v4    # "insideY":F
    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v6, v7

    :goto_1
    return v6

    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isLongClickable()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 207
    .restart local v0    # "action":I
    .restart local v3    # "insideX":F
    .restart local v4    # "insideY":F
    .restart local v5    # "parent":Landroid/view/ViewParent;
    :pswitch_0
    if-nez v5, :cond_4

    .line 210
    :goto_2
    iput-boolean v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 211
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result v1

    .line 212
    .local v1, "currentIndex":I
    if-ltz v1, :cond_0

    if-ge v1, v11, :cond_0

    .line 213
    invoke-direct {p0, v1, v6}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    goto :goto_0

    .line 208
    .end local v1    # "currentIndex":I
    :cond_4
    invoke-interface {v5, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 217
    :pswitch_1
    iget-boolean v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    if-nez v8, :cond_6

    .line 223
    iget v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_8

    move v8, v7

    :goto_3
    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_9

    move v8, v7

    :goto_4
    if-nez v8, :cond_5

    iget v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_a

    move v8, v7

    :goto_5
    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_d

    .line 225
    :cond_5
    iput v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 226
    iput v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 227
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-nez v8, :cond_b

    .line 230
    :goto_6
    iput-boolean v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 231
    if-nez v5, :cond_c

    .line 234
    :goto_7
    return v7

    .line 218
    :cond_6
    if-nez v5, :cond_7

    .line 221
    :goto_8
    return v7

    .line 219
    :cond_7
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8

    :cond_8
    move v8, v6

    .line 223
    goto :goto_3

    :cond_9
    move v8, v6

    goto :goto_4

    :cond_a
    move v8, v6

    goto :goto_5

    .line 228
    :cond_b
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    iget-object v9, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v9}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    goto :goto_6

    .line 232
    :cond_c
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_7

    .line 236
    :cond_d
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result v2

    .line 237
    .local v2, "currentIndexMove":I
    if-ltz v2, :cond_0

    if-ge v2, v11, :cond_0

    .line 238
    iget v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    if-eq v2, v6, :cond_0

    .line 239
    invoke-direct {p0, v2, v7}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    goto/16 :goto_0

    .line 245
    .end local v2    # "currentIndexMove":I
    :pswitch_2
    iput-boolean v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 246
    if-nez v5, :cond_e

    .line 249
    :goto_9
    iput v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 250
    iput v10, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 251
    iget-object v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v8}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    goto/16 :goto_0

    .line 247
    :cond_e
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_9

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetView()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->removeAllViews()V

    .line 326
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 327
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->removeAllViews()V

    .line 558
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 559
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDay"    # I

    .prologue
    const/4 v0, 0x1

    .line 360
    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 364
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->resetView()V

    .line 366
    return-void

    :cond_1
    const/4 v0, 0x7

    .line 360
    if-gt p1, v0, :cond_0

    goto :goto_0
.end method

.method public setOnSelectChangedListener(Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 348
    return-void
.end method

.method public setSelectedDays(I)V
    .locals 1
    .param p1, "days"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->setDays(I)V

    .line 394
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->updateView()V

    .line 395
    return-void
.end method
