.class public Lcom/meizu/common/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePicker$SavedState;,
        Lcom/meizu/common/widget/DatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final NUMBER_OF_MONTHS:I = 0xc


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mDayUnit:Landroid/widget/TextView;

.field private mEndCal:Ljava/util/Calendar;

.field private mEndYear:I

.field mGregorianDays:[Ljava/lang/String;

.field private mIsAccessibilityEnable:Z

.field private mIsDrawLine:Z

.field mIsLayoutRtl:Z

.field private mLayoutResId:I

.field mLeap:Ljava/lang/String;

.field private mLeapUnit:Landroid/widget/TextView;

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mLunarMouths:[Ljava/lang/String;

.field mLunardays:[Ljava/lang/String;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mMonths:[Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mNumTpyeface:Landroid/graphics/Typeface;

.field private mNumberNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberSelectTextSize:I

.field private mOldMonth:I

.field private mOldYear:I

.field private mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

.field private mOneScreenCount:I

.field mOrder:Ljava/lang/String;

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private mSelectItemHeight:F

.field private mShortMonths:[Ljava/lang/String;

.field private mStartCal:Ljava/util/Calendar;

.field private mStartYear:I

.field private mWidthPadding:I

.field private mWordNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWordSelectTextSize:I

.field private mYear:I

.field private mYearOfMonths:I

.field private mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mYearUnit:Landroid/widget/TextView;

.field private mZhTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 437
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 444
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 105
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    const/4 v2, 0x5

    .line 113
    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 114
    sget v2, Lcom/meizu/common/R$layout;->mc_date_picker:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    const-string/jumbo v2, "sans-serif-medium"

    const/4 v3, 0x0

    .line 447
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v2, "DINPro-medium"

    const/4 v3, 0x0

    .line 448
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_one:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_two:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    .line 459
    sget-object v2, Lcom/meizu/common/R$styleable;->DatePicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 461
    .local v16, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcStartYear:I

    const/16 v3, 0x7b2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 464
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcEndYear:I

    const/16 v3, 0x7f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 465
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcInternalLayout:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 468
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcVisibleRow:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 471
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcSelectItemHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    .line 473
    sget v2, Lcom/meizu/common/R$styleable;->DatePicker_mcNormalItemHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    .line 474
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/meizu/common/widget/DatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 478
    sget v2, Lcom/meizu/common/R$id;->mc_leap:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    .line 479
    sget v2, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 484
    :goto_0
    sget v2, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 489
    :goto_1
    sget v2, Lcom/meizu/common/R$id;->mc_scroll3_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 495
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .local v19, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    .line 496
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    const/4 v2, 0x2

    .line 497
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    const/4 v2, 0x5

    .line 498
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v2, 0x0

    .line 499
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    const/4 v2, 0x5

    .line 501
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 503
    .local v6, "max":I
    sget v2, Lcom/meizu/common/R$id;->mc_column_parent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 505
    sget v2, Lcom/meizu/common/R$id;->mc_scroll2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 515
    sget v2, Lcom/meizu/common/R$id;->mc_scroll1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 521
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v8, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    const/16 v11, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 525
    sget v2, Lcom/meizu/common/R$id;->mc_scroll3:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 531
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 534
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 536
    .local v21, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-01-01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_3
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-12-31"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v25

    .line 551
    .local v25, "isZh":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-nez v25, :cond_6

    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-nez v25, :cond_7

    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-nez v25, :cond_8

    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->adjustLayout4FocusedPosition()V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v29

    .line 559
    .local v29, "textUnitPaddingTop":I
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 560
    .local v22, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v22 .. v22}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 561
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v20, v0

    .line 562
    .local v20, "defaultScaledDensity":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v27, v0

    .line 563
    .local v27, "nowScaledDensity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float v2, v2, v27

    sub-float v3, v27, v20

    mul-float/2addr v2, v3

    const v3, 0x3fa66666    # 1.3f

    div-float v28, v2, v3

    .line 564
    .local v28, "paddingTopOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v29

    int-to-float v4, v0

    sub-float v4, v4, v28

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v29

    int-to-float v4, v0

    sub-float v4, v4, v28

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v29

    int-to-float v4, v0

    sub-float v4, v4, v28

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    const/4 v2, 0x0

    .line 575
    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    const/4 v2, 0x0

    .line 576
    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_width_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    .line 578
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 580
    sget-object v2, Lcom/meizu/common/R$styleable;->MZTheme:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 581
    .local v18, "b":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 583
    .local v26, "lineColor":I
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_stroke_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setWillNotDraw(Z)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    const/16 v2, 0x64

    .line 592
    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    const/16 v24, 0x0

    .local v24, "i":I
    :goto_9
    const/16 v2, 0x64

    .line 593
    move/from16 v0, v24

    if-lt v0, v2, :cond_a

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "mx4pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_a
    const-string/jumbo v2, "accessibility"

    .line 639
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    .line 640
    .local v17, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v17, :cond_e

    .line 643
    :goto_b
    return-void

    .line 481
    .end local v6    # "max":I
    .end local v17    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v18    # "b":Landroid/content/res/TypedArray;
    .end local v19    # "cal":Ljava/util/Calendar;
    .end local v20    # "defaultScaledDensity":F
    .end local v21    # "df":Ljava/text/SimpleDateFormat;
    .end local v22    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v24    # "i":I
    .end local v25    # "isZh":Z
    .end local v26    # "lineColor":I
    .end local v27    # "nowScaledDensity":F
    .end local v28    # "paddingTopOffset":F
    .end local v29    # "textUnitPaddingTop":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 491
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 540
    .restart local v6    # "max":I
    .restart local v19    # "cal":Ljava/util/Calendar;
    .restart local v21    # "df":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v23

    .line 539
    .local v23, "e":Ljava/text/ParseException;
    invoke-virtual/range {v23 .. v23}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 546
    .end local v23    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v23

    .line 545
    .restart local v23    # "e":Ljava/text/ParseException;
    invoke-virtual/range {v23 .. v23}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_4

    .end local v23    # "e":Ljava/text/ParseException;
    .restart local v25    # "isZh":Z
    :cond_6
    const/4 v2, 0x0

    .line 551
    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 552
    goto/16 :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 553
    goto/16 :goto_7

    .line 572
    .restart local v20    # "defaultScaledDensity":F
    .restart local v22    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v27    # "nowScaledDensity":F
    .restart local v28    # "paddingTopOffset":F
    .restart local v29    # "textUnitPaddingTop":I
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setEnabled(Z)V

    goto/16 :goto_8

    .line 594
    .restart local v18    # "b":Landroid/content/res/TypedArray;
    .restart local v24    # "i":I
    .restart local v26    # "lineColor":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v24

    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v2

    if-nez v2, :cond_b

    :goto_c
    const/16 v2, 0x9

    .line 598
    move/from16 v0, v24

    if-le v0, v2, :cond_c

    .line 593
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 596
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v24

    goto :goto_c

    .line 599
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    aget-object v4, v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v24

    goto :goto_d

    .line 607
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$1;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$2;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/common/widget/DatePicker$3;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    goto/16 :goto_a

    .line 641
    .restart local v17    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    goto/16 :goto_b
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setDayRange(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setMonthRange(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setLeapUnitVisibility(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvents(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$612(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 2

    .prologue
    .line 1299
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 1300
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1304
    :goto_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 1305
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1309
    :goto_1
    sget v0, Lcom/meizu/common/R$id;->mc_scroll3_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 1310
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 1313
    :goto_2
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private getCurrentCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x5

    .line 1282
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1283
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 1284
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1285
    return-object v0
.end method

.method private getLunarMonths(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 920
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 921
    .local v0, "leapMonth":I
    if-eqz v0, :cond_2

    const/16 v1, 0xd

    .line 926
    if-ge p1, v1, :cond_3

    .line 931
    :cond_0
    if-nez v0, :cond_4

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    aget-object v1, v1, p1

    return-object v1

    :cond_2
    const/16 v1, 0xc

    .line 922
    if-lt p1, v1, :cond_0

    .line 923
    return-object v2

    .line 927
    :cond_3
    return-object v2

    .line 931
    :cond_4
    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_1

    .line 932
    if-eq p1, v0, :cond_5

    .line 935
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 933
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method private getMonthDays()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1258
    iget-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v6, :cond_0

    .line 1272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1273
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 1274
    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    .line 1275
    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1276
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    return v4

    .line 1259
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1260
    .local v3, "m":I
    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v6}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 1261
    .local v2, "leapMonth":I
    const/4 v1, 0x0

    .line 1262
    .local v1, "isLeapMonth":Z
    if-nez v2, :cond_3

    .line 1266
    .end local v1    # "isLeapMonth":Z
    :goto_0
    if-nez v2, :cond_5

    .line 1267
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1270
    :cond_2
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v4, v3, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v4

    return v4

    .line 1263
    .restart local v1    # "isLeapMonth":Z
    :cond_3
    if-eq v2, v3, :cond_4

    move v1, v4

    .local v1, "isLeapMonth":Z
    :goto_2
    goto :goto_0

    .local v1, "isLeapMonth":Z
    :cond_4
    move v1, v5

    goto :goto_2

    .line 1266
    .end local v1    # "isLeapMonth":Z
    :cond_5
    if-eqz v2, :cond_2

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-lt v4, v2, :cond_1

    goto :goto_1
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 865
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    return-object v2

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    return-object v2

    :cond_2
    const/16 v2, 0xc

    .line 870
    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 871
    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_4

    .line 881
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 889
    :cond_3
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    goto :goto_0

    .line 891
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 872
    .restart local v1    # "i":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 882
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 883
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v2, 0x9

    .line 884
    if-lt v1, v2, :cond_6

    .line 882
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 885
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 1365
    .local v0, "position":I
    packed-switch p1, :pswitch_data_0

    :cond_0
    const-string/jumbo v1, ""

    .line 1394
    return-object v1

    .line 1367
    :pswitch_0
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1370
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1371
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1377
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1372
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1375
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    goto :goto_0

    .line 1384
    :pswitch_2
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v0, v1, -0x1

    .line 1385
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v1, :cond_3

    .line 1388
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1386
    :cond_3
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getYearMonths()I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 1289
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v1, :cond_0

    .line 1292
    return v0

    .line 1290
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    :cond_1
    return v0
.end method

.method private isLeapMonth(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 898
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 902
    .local v0, "leapMonth":I
    if-eqz v0, :cond_3

    const/16 v1, 0xd

    .line 907
    if-ge p1, v1, :cond_4

    .line 911
    :cond_0
    if-nez v0, :cond_5

    .line 916
    :cond_1
    return v2

    .line 899
    .end local v0    # "leapMonth":I
    :cond_2
    return v2

    .restart local v0    # "leapMonth":I
    :cond_3
    const/16 v1, 0xc

    .line 903
    if-lt p1, v1, :cond_0

    .line 904
    return v2

    .line 908
    :cond_4
    return v2

    .line 911
    :cond_5
    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_1

    .line 912
    if-ne p1, v0, :cond_1

    .line 913
    const/4 v1, 0x1

    return v1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "[0-9]*"

    .line 1316
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1317
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private isZh()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1453
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1454
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    .line 1455
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    return v3

    .line 1456
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private refreshTextPreference()V
    .locals 3

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v0, :cond_1

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1469
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1470
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1471
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1473
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1474
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1475
    return-void

    .line 1462
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1464
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1465
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1466
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 22
    .param p1, "months"    # [Ljava/lang/String;

    .prologue
    const/16 v20, 0x0

    .line 676
    aget-object v20, p1, v20

    const-string/jumbo v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 682
    .local v11, "format":Ljava/text/DateFormat;
    :goto_0
    instance-of v0, v11, Ljava/text/SimpleDateFormat;

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 686
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 693
    .end local v11    # "format":Ljava/text/DateFormat;
    :goto_1
    sget v20, Lcom/meizu/common/R$id;->mc_column1Layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 694
    .local v13, "monthLayout":Landroid/widget/FrameLayout;
    sget v20, Lcom/meizu/common/R$id;->mc_column2Layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 695
    .local v3, "dayLayout":Landroid/widget/FrameLayout;
    sget v20, Lcom/meizu/common/R$id;->mc_column3Layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 697
    .local v17, "yearLayout":Landroid/widget/LinearLayout;
    sget v20, Lcom/meizu/common/R$id;->mc_divider_bar1:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 698
    .local v9, "divider1":Landroid/widget/ImageView;
    sget v20, Lcom/meizu/common/R$id;->mc_divider_bar2:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 699
    .local v10, "divider2":Landroid/widget/ImageView;
    sget v20, Lcom/meizu/common/R$id;->mc_column_parent:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 700
    .local v15, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 702
    const/16 v16, 0x0

    .line 703
    .local v16, "quoted":Z
    const/4 v4, 0x0

    .local v4, "didDay":Z
    const/4 v7, 0x0

    .local v7, "didMonth":Z
    const/4 v8, 0x0

    .local v8, "didYear":Z
    const/4 v5, 0x0

    .local v5, "didDiv1":Z
    const/4 v6, 0x0

    .line 705
    .local v6, "didDiv2":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "dd\u200f/MM\u200f/y"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_0
    const-string/jumbo v20, "yy/M/d"

    .line 706
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    :goto_2
    const/4 v12, 0x0

    .line 708
    .end local v16    # "quoted":Z
    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v12, v0, :cond_4

    .line 746
    if-eqz v7, :cond_11

    .line 749
    :goto_4
    if-eqz v4, :cond_12

    .line 752
    :goto_5
    if-eqz v8, :cond_13

    .line 757
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 765
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/meizu/common/widget/DatePicker$4;

    invoke-direct/range {v21 .. v22}, Lcom/meizu/common/widget/DatePicker$4;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual/range {v20 .. v21}, Lcom/meizu/common/widget/ScrollTextView;->post(Ljava/lang/Runnable;)Z

    .line 819
    return-void

    .line 677
    .end local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .end local v4    # "didDay":Z
    .end local v5    # "didDiv1":Z
    .end local v6    # "didDiv2":Z
    .end local v7    # "didMonth":Z
    .end local v8    # "didYear":Z
    .end local v9    # "divider1":Landroid/widget/ImageView;
    .end local v10    # "divider2":Landroid/widget/ImageView;
    .end local v12    # "i":I
    .end local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .end local v15    # "parent":Landroid/widget/LinearLayout;
    .end local v17    # "yearLayout":Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .restart local v11    # "format":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 683
    :cond_2
    check-cast v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "format":Ljava/text/DateFormat;
    invoke-virtual {v11}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    goto/16 :goto_1

    .line 705
    .restart local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "didDay":Z
    .restart local v5    # "didDiv1":Z
    .restart local v6    # "didDiv2":Z
    .restart local v7    # "didMonth":Z
    .restart local v8    # "didYear":Z
    .restart local v9    # "divider1":Landroid/widget/ImageView;
    .restart local v10    # "divider2":Landroid/widget/ImageView;
    .restart local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "parent":Landroid/widget/LinearLayout;
    .restart local v16    # "quoted":Z
    .restart local v17    # "yearLayout":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "d \u05d1MMM y"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    goto :goto_2

    .line 709
    .end local v16    # "quoted":Z
    .restart local v12    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    int-to-char v2, v0

    .local v2, "c":C
    const/16 v20, 0x27

    .line 711
    move/from16 v0, v20

    if-eq v2, v0, :cond_6

    .line 715
    :goto_8
    if-eqz v16, :cond_8

    .line 708
    :cond_5
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 712
    :cond_6
    if-eqz v16, :cond_7

    const/16 v16, 0x0

    .local v16, "quoted":Z
    :goto_a
    goto :goto_8

    .end local v16    # "quoted":Z
    :cond_7
    const/16 v16, 0x1

    goto :goto_a

    .line 716
    :cond_8
    const/4 v14, 0x0

    .local v14, "need_divider":Z
    const/16 v20, 0x64

    .line 717
    move/from16 v0, v20

    if-eq v2, v0, :cond_c

    :cond_9
    const/16 v20, 0x4d

    .line 721
    move/from16 v0, v20

    if-ne v2, v0, :cond_d

    :cond_a
    if-eqz v7, :cond_e

    :goto_b
    const/16 v20, 0x79

    .line 725
    move/from16 v0, v20

    if-eq v2, v0, :cond_f

    :cond_b
    :goto_c
    const/16 v20, 0x1

    .line 731
    move/from16 v0, v20

    if-ne v0, v14, :cond_5

    .line 732
    if-eqz v5, :cond_10

    .line 736
    if-nez v6, :cond_5

    .line 737
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    const/4 v6, 0x1

    goto :goto_9

    .line 717
    :cond_c
    if-nez v4, :cond_9

    .line 718
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    const/4 v4, 0x1

    .line 720
    const/4 v14, 0x1

    goto :goto_c

    :cond_d
    const/16 v20, 0x4c

    .line 721
    move/from16 v0, v20

    if-eq v2, v0, :cond_a

    goto :goto_b

    .line 722
    :cond_e
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 723
    const/4 v7, 0x1

    .line 724
    const/4 v14, 0x1

    goto :goto_c

    .line 725
    :cond_f
    if-nez v8, :cond_b

    .line 726
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 727
    const/4 v8, 0x1

    .line 728
    const/4 v14, 0x1

    goto :goto_c

    .line 733
    :cond_10
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 734
    const/4 v5, 0x1

    goto :goto_9

    .line 747
    .end local v2    # "c":C
    .end local v14    # "need_divider":Z
    :cond_11
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 750
    :cond_12
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 753
    :cond_13
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 758
    :cond_14
    sget v20, Lcom/meizu/common/R$id;->mc_column3Layout:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 759
    .local v18, "yearParent":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .local v19, "yearParentLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    .line 760
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/meizu/common/R$dimen;->mc_picker_year_no_zh_margin_left:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 762
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7
.end method

.method private sendAccessibilityEvents(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x4

    .line 1431
    iget-boolean v3, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-nez v3, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    const/4 v3, 0x1

    .line 1433
    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    .line 1438
    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    .line 1443
    if-ne p1, v3, :cond_0

    .line 1444
    sget v3, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1445
    .local v0, "dayLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {v0, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1434
    .end local v0    # "dayLayout":Landroid/view/View;
    :cond_2
    sget v3, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1435
    .local v2, "yearLayout":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1436
    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1439
    .end local v2    # "yearLayout":Landroid/view/View;
    :cond_3
    sget v3, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1440
    .local v1, "monthLayout":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1441
    invoke-virtual {v1, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setContentDescription()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 1398
    iget-boolean v7, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-eq v7, v10, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5e74\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .local v5, "tipYear":Ljava/lang/String;
    const-string/jumbo v4, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u6708\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .local v4, "tipMonth":Ljava/lang/String;
    const-string/jumbo v3, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1403
    .local v3, "tipDay":Ljava/lang/String;
    sget v7, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1404
    .local v6, "yearLayout":Landroid/view/View;
    sget v7, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1405
    .local v2, "monthLayout":Landroid/view/View;
    sget v7, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    .local v1, "dayLayout":Landroid/view/View;
    if-nez v1, :cond_3

    .line 1411
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u5eff\u5341"

    const-string/jumbo v9, "\u4e8c\u5341"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u5eff"

    const-string/jumbo v9, "\u4e8c\u5341"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "dateText":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_4

    .line 1419
    :goto_2
    if-nez v2, :cond_5

    .line 1423
    :goto_3
    if-eqz v1, :cond_0

    .line 1424
    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 1425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1408
    .end local v0    # "dateText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 1409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u5eff\u5341"

    const-string/jumbo v9, "\u4e8c\u5341"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u5eff"

    const-string/jumbo v9, "\u4e8c\u5341"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dateText":Ljava/lang/String;
    goto :goto_1

    .line 1416
    :cond_4
    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 1417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5e74\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1420
    :cond_5
    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 1421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u6708\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private setDayRange(I)V
    .locals 12
    .param p1, "month"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x5

    .line 343
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    if-nez v7, :cond_1

    .line 344
    :cond_0
    return-void

    .line 343
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v7, :cond_0

    .line 346
    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v7, v8, :cond_7

    .line 349
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 350
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getCurrentCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 351
    .local v1, "currentCalendar":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    .local v0, "count":I
    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v2, v7, -0x1

    .local v2, "currentItem":I
    const/4 v5, 0x0

    .line 353
    .local v5, "validStart":I
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 354
    .local v4, "validEnd":I
    const/4 v3, 0x1

    .line 359
    .local v3, "isCyclic":Z
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v7, v8, :cond_8

    .line 372
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v7, v8, :cond_b

    .line 385
    :cond_4
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v7, v8, :cond_e

    .line 428
    :cond_5
    :goto_0
    if-nez v3, :cond_18

    .line 431
    :cond_6
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v6, v3}, Lcom/meizu/common/widget/ScrollTextView;->setCyclic(Z)V

    .line 432
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v0, v2, v5, v7}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 433
    return-void

    .line 346
    .end local v0    # "count":I
    .end local v1    # "currentCalendar":Ljava/util/Calendar;
    .end local v2    # "currentItem":I
    .end local v3    # "isCyclic":Z
    .end local v4    # "validEnd":I
    .end local v5    # "validStart":I
    :cond_7
    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    if-ne v7, p1, :cond_2

    .line 347
    return-void

    .line 359
    .restart local v0    # "count":I
    .restart local v1    # "currentCalendar":Ljava/util/Calendar;
    .restart local v2    # "currentItem":I
    .restart local v3    # "isCyclic":Z
    .restart local v4    # "validEnd":I
    .restart local v5    # "validStart":I
    :cond_8
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v7, v8, :cond_3

    .line 361
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 362
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v7, v2, v7

    if-ltz v7, :cond_9

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v2, v6, 0x1

    .line 363
    :goto_1
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    const/4 v5, 0x0

    .line 365
    move v4, v0

    .line 366
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-eq v0, v6, :cond_a

    .line 369
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    move v2, v6

    .line 362
    goto :goto_1

    .line 367
    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    .line 372
    :cond_b
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v7, v8, :cond_4

    .line 374
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, p1, :cond_5

    .line 375
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 376
    :goto_2
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    .line 378
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 379
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-eq v0, v6, :cond_d

    .line 382
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 375
    :cond_c
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    goto :goto_2

    .line 380
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    :cond_e
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v7, v8, :cond_5

    .line 387
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-gt v7, p1, :cond_5

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-lt v7, p1, :cond_5

    .line 389
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, p1, :cond_10

    .line 402
    :cond_f
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v7, p1, :cond_13

    .line 413
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, p1, :cond_5

    .line 415
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v2, v6, :cond_16

    .line 416
    :goto_3
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    .line 418
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 419
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-eq v0, v6, :cond_17

    .line 422
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 389
    :cond_10
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, p1, :cond_f

    .line 392
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v7, v2, v7

    if-ltz v7, :cond_11

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v2, v6, 0x1

    .line 393
    :goto_4
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    const/4 v5, 0x0

    .line 395
    move v4, v0

    .line 396
    const/4 v3, 0x0

    .line 397
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-eq v0, v6, :cond_12

    .line 400
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    move v2, v6

    .line 392
    goto :goto_4

    .line 398
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 404
    :cond_13
    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v7, v2, v7

    if-ltz v7, :cond_14

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v2, v6, 0x1

    .line 405
    :goto_5
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    const/4 v5, 0x0

    .line 407
    move v4, v0

    .line 408
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-eq v0, v6, :cond_15

    .line 411
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_14
    move v2, v6

    .line 404
    goto :goto_5

    .line 409
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 415
    :cond_16
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    goto/16 :goto_3

    .line 420
    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 428
    :cond_18
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/ScrollTextView;->isCyclic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 429
    return-void
.end method

.method private setLeapUnitVisibility(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->isLeapMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMonthRange(I)V
    .locals 10
    .param p1, "year"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 289
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    if-nez v6, :cond_1

    .line 290
    :cond_0
    return-void

    .line 289
    :cond_1
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v6, :cond_0

    .line 292
    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    if-eq v6, p1, :cond_3

    .line 295
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    const/4 v6, -0x1

    .line 296
    iput v6, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 298
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-le v6, p1, :cond_4

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 293
    :cond_3
    return-void

    .line 298
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt v6, p1, :cond_2

    const/4 v0, 0x0

    .line 300
    .local v0, "count":I
    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_6

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v1, v6, v7

    .local v1, "currentItem":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "validStart":I
    const/4 v3, 0x0

    .line 302
    .local v3, "validEnd":I
    const/4 v2, 0x0

    .line 303
    .local v2, "isCyclic":Z
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, p1, :cond_7

    .line 308
    :cond_5
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, p1, :cond_8

    .line 313
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, p1, :cond_9

    .line 321
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->isCyclic()Z

    move-result v5

    if-nez v5, :cond_b

    .line 324
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 325
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    const/4 v4, 0x0

    .line 327
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 328
    const/4 v2, 0x1

    .line 331
    :goto_2
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-eq v0, v5, :cond_c

    .line 334
    :goto_3
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCyclic(Z)V

    .line 335
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5, v0, v1, v4, v3}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    goto :goto_0

    .end local v1    # "currentItem":I
    .end local v2    # "isCyclic":Z
    .end local v3    # "validEnd":I
    .end local v4    # "validStart":I
    :cond_6
    move v1, v5

    .line 300
    goto :goto_1

    .line 303
    .restart local v1    # "currentItem":I
    .restart local v2    # "isCyclic":Z
    .restart local v3    # "validEnd":I
    .restart local v4    # "validStart":I
    :cond_7
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, p1, :cond_5

    .line 305
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    const/4 v4, 0x0

    .line 307
    move v3, v0

    goto :goto_2

    .line 310
    :cond_8
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v0, v5, v6

    const/4 v4, 0x0

    .line 312
    move v3, v0

    goto :goto_2

    .line 315
    :cond_9
    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    sub-int/2addr v6, v7

    if-ltz v6, :cond_a

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 316
    :goto_4
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    const/4 v4, 0x0

    .line 318
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_2

    :cond_a
    move v1, v5

    .line 315
    goto :goto_4

    .line 322
    :cond_b
    return-void

    .line 332
    :cond_c
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private updateDate(IIIZZ)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z
    .param p5, "isReorderPickers"    # Z

    .prologue
    .line 837
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    if-lt p1, v0, :cond_0

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 838
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    if-gt p1, v0, :cond_1

    .end local p1    # "year":I
    :goto_1
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 839
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 840
    iput p3, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 842
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 846
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 850
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 852
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 856
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 858
    if-nez p5, :cond_4

    .line 861
    :goto_4
    return-void

    .line 837
    .restart local p1    # "year":I
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    goto :goto_0

    .line 838
    :cond_1
    iget p1, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    goto :goto_1

    .line 847
    .end local p1    # "year":I
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    .line 848
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    goto :goto_2

    .line 853
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    .line 854
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    goto :goto_3

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateYearPicker()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1158
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v7, v8

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 1162
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1048
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getDayUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLunarDays(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 943
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 944
    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getTimePreviewText(ZIIIZ)Ljava/lang/String;
    .locals 18
    .param p1, "isLunar"    # Z
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "isShowDay"    # Z

    .prologue
    const-string/jumbo v10, ""

    .line 1479
    .local v10, "previewText":Ljava/lang/String;
    add-int/lit8 p3, p3, 0x1

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1481
    .local v12, "yearText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1482
    .local v8, "monthText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1483
    .local v3, "dayText":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1502
    const/4 v4, 0x0

    .line 1503
    .local v4, "isLeapMonth":Z
    invoke-static/range {p2 .. p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 1504
    .local v6, "leapMonth":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1505
    .local v9, "mouths":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1506
    .local v5, "leap":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 1516
    :cond_0
    add-int/lit8 v13, p3, -0x1

    aget-object v7, v9, v13

    .line 1518
    .local v7, "monthString":Ljava/lang/String;
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v11

    .line 1519
    .local v11, "solarDate":[I
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v13

    if-nez v13, :cond_8

    .line 1526
    if-gtz p3, :cond_a

    .line 1535
    .end local v4    # "isLeapMonth":Z
    .end local v5    # "leap":Ljava/lang/String;
    .end local v6    # "leapMonth":I
    .end local v7    # "monthString":Ljava/lang/String;
    .end local v9    # "mouths":[Ljava/lang/String;
    .end local v11    # "solarDate":[I
    :cond_1
    :goto_1
    return-object v10

    .line 1484
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1492
    .restart local v9    # "mouths":[Ljava/lang/String;
    if-lez p3, :cond_1

    array-length v13, v9

    move/from16 v0, p3

    if-gt v0, v13, :cond_1

    .line 1493
    if-nez p5, :cond_5

    .line 1496
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, p3, -0x1

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1485
    .end local v9    # "mouths":[Ljava/lang/String;
    :cond_3
    if-nez p5, :cond_4

    .line 1488
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1486
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v14

    add-int/lit8 v15, p3, -0x1

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v14, v0, v15, v1}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1494
    .restart local v9    # "mouths":[Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v14

    add-int/lit8 v15, p3, -0x1

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v14, v0, v15, v1}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p3, -0x1

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1506
    .restart local v4    # "isLeapMonth":Z
    .restart local v5    # "leap":Ljava/lang/String;
    .restart local v6    # "leapMonth":I
    :cond_6
    move/from16 v0, p3

    if-le v0, v6, :cond_0

    .line 1507
    add-int/lit8 p3, p3, -0x1

    .line 1508
    move/from16 v0, p3

    if-eq v0, v6, :cond_7

    .line 1512
    add-int/lit8 v13, p3, -0x1

    aget-object v7, v9, v13

    .restart local v7    # "monthString":Ljava/lang/String;
    goto/16 :goto_0

    .line 1509
    .end local v7    # "monthString":Ljava/lang/String;
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p3, -0x1

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1510
    .restart local v7    # "monthString":Ljava/lang/String;
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1520
    .restart local v11    # "solarDate":[I
    :cond_8
    if-nez p5, :cond_9

    .line 1523
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1521
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x2

    aget v17, v11, v17

    invoke-static/range {v14 .. v17}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1526
    :cond_a
    array-length v13, v9

    move/from16 v0, p3

    if-gt v0, v13, :cond_1

    .line 1527
    if-nez p5, :cond_b

    .line 1530
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1528
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x2

    aget v17, v11, v17

    invoke-static/range {v14 .. v17}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .param p5, "doAnimate"    # Z

    .prologue
    .line 1075
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v0, p1, :cond_1

    .line 1076
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 1079
    :goto_0
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 1080
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1081
    return-void

    .line 1075
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-ne v0, p3, :cond_0

    goto :goto_0
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .param p5, "isLunar"    # Z
    .param p6, "isLeapMonth"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1096
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v1, p1, :cond_1

    .line 1097
    :cond_0
    if-nez p5, :cond_2

    .line 1107
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 1110
    .end local p6    # "isLeapMonth":Z
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 1111
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 1112
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1113
    return-void

    .line 1096
    .restart local p6    # "isLeapMonth":Z
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-ne v1, p3, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-ne v1, p5, :cond_0

    goto :goto_0

    .line 1098
    :cond_2
    iput-boolean p5, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 1099
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1100
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 1101
    .local v0, "leapMonth":I
    if-nez v0, :cond_4

    .line 1102
    .end local p6    # "isLeapMonth":Z
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 1105
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    goto :goto_0

    .line 1101
    .restart local p6    # "isLeapMonth":Z
    :cond_4
    add-int/lit8 v1, p2, 0x1

    if-eq v1, v0, :cond_3

    const/4 p6, 0x0

    .local p6, "isLeapMonth":Z
    goto :goto_1

    .line 1102
    .end local p6    # "isLeapMonth":Z
    :cond_5
    if-eqz p6, :cond_7

    .line 1103
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1102
    :cond_7
    if-gt p2, v0, :cond_6

    goto :goto_2
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 954
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getWidth()I

    move-result v8

    .line 956
    .local v8, "width":I
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 957
    .local v7, "pickerWidth":I
    sub-int v0, v8, v7

    div-int/lit8 v6, v0, 0x2

    .line 958
    .local v6, "paddingWdith":I
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 959
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/DatePicker;

    .line 664
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1058
    check-cast v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    .line 1059
    .local v0, "ss":Lcom/meizu/common/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1060
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 1061
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1062
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 1063
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1052
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1053
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1130
    if-eqz p1, :cond_0

    .line 1136
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "months":[Ljava/lang/String;
    aget-object v3, v1, v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1143
    .local v0, "format":Ljava/text/DateFormat;
    :goto_0
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_2

    .line 1146
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 1149
    .end local v0    # "format":Ljava/text/DateFormat;
    .local v2, "order":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1153
    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 1154
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1131
    .end local v1    # "months":[Ljava/lang/String;
    .end local v2    # "order":Ljava/lang/String;
    :cond_0
    return-void

    .line 1138
    .restart local v1    # "months":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 1144
    :cond_2
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "order":Ljava/lang/String;
    goto :goto_1

    .line 1150
    :cond_3
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1179
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 1180
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    .line 1181
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setMonthRange(I)V

    .line 1182
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 1183
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setDayRange(I)V

    .line 1184
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 655
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 657
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 658
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 659
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 1
    .param p1, "isDrawFading"    # Z

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1359
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1360
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1361
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0
    .param p1, "isDrawLine"    # Z

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 965
    return-void
.end method

.method public setItemHeight(II)V
    .locals 3
    .param p1, "selectHeight"    # I
    .param p2, "normalHeight"    # I

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1349
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1350
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1351
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0
    .param p1, "lineOneHeight"    # I
    .param p2, "lineTwoHeight"    # I

    .prologue
    .line 968
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    .line 969
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 970
    return-void
.end method

.method public setLunar(Z)V
    .locals 1
    .param p1, "isLunar"    # Z

    .prologue
    .line 1250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;->setLunar(ZZ)V

    .line 1251
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 13
    .param p1, "isLunar"    # Z
    .param p2, "isAnimation"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1208
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    const/4 v0, 0x4

    .line 1209
    new-array v6, v0, [I

    .line 1210
    .local v6, "date":[I
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    aput v0, v6, v5

    .line 1211
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v3

    .line 1212
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    aput v0, v6, v4

    .line 1213
    aput v5, v6, v12

    .line 1216
    aget v11, v6, v5

    .line 1217
    .local v11, "solarYear":I
    aget v0, v6, v5

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v7

    .line 1218
    .local v7, "leapMonth":I
    aget v0, v6, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v8

    .line 1219
    .local v8, "leapMonthLastYear":I
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v0, :cond_2

    .line 1229
    const/4 v9, 0x0

    .local v9, "lunar":Z
    const/4 v10, 0x0

    .line 1231
    .local v10, "month":I
    if-nez v7, :cond_9

    .line 1232
    :cond_0
    aget v10, v6, v3

    .line 1240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1241
    aget v0, v6, v5

    aget v1, v6, v4

    invoke-static {v0, v10, v1, v9}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v6

    .line 1244
    .end local v9    # "lunar":Z
    .end local v10    # "month":I
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 1245
    aget v1, v6, v5

    aget v0, v6, v3

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    aget v0, v6, v3

    add-int/lit8 v2, v0, -0x1

    :goto_2
    aget v3, v6, v4

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 1246
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setLeapUnitVisibility(I)V

    .line 1247
    return-void

    .line 1220
    :cond_2
    aget v0, v6, v5

    aget v1, v6, v3

    aget v2, v6, v4

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v6

    .line 1221
    aget v0, v6, v5

    if-ne v11, v0, :cond_5

    :cond_3
    aget v0, v6, v5

    if-eq v11, v0, :cond_8

    .line 1227
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 1221
    :cond_5
    if-eqz v8, :cond_3

    aget v0, v6, v12

    if-ne v0, v3, :cond_7

    .line 1224
    :cond_6
    :goto_4
    aget v0, v6, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v3

    goto :goto_3

    .line 1221
    :cond_7
    aget v0, v6, v3

    if-le v0, v8, :cond_3

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_4

    aget v0, v6, v12

    if-eq v0, v3, :cond_6

    aget v0, v6, v3

    if-gt v0, v7, :cond_6

    goto :goto_3

    .line 1231
    .restart local v9    # "lunar":Z
    .restart local v10    # "month":I
    :cond_9
    aget v0, v6, v3

    if-ge v7, v0, :cond_0

    .line 1233
    add-int/lit8 v0, v7, 0x1

    aget v1, v6, v3

    if-eq v0, v1, :cond_a

    .line 1236
    add-int/lit8 v0, v7, 0x1

    aget v1, v6, v3

    if-ge v0, v1, :cond_1

    .line 1237
    aget v0, v6, v3

    add-int/lit8 v10, v0, -0x1

    goto :goto_0

    .line 1234
    :cond_a
    aget v0, v6, v3

    add-int/lit8 v10, v0, -0x1

    .line 1235
    const/4 v9, 0x1

    goto :goto_0

    .end local v9    # "lunar":Z
    .end local v10    # "month":I
    :cond_b
    const/16 v2, 0xc

    .line 1245
    goto :goto_2
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

    .prologue
    .line 1170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1171
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1172
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    .line 1173
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1174
    .local v1, "newYear":I
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 1175
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->refresh()V

    .line 1176
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

    .prologue
    .line 1192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1193
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1194
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    .line 1195
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1196
    .local v1, "newYear":I
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 1197
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->refresh()V

    .line 1198
    return-void
.end method

.method public setShowDayColumn(Z)V
    .locals 3
    .param p1, "isShowDay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 976
    sget v2, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 977
    .local v0, "dayLayout":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 978
    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 979
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    goto :goto_0
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1329
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1330
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1332
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1333
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1334
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1335
    return-void
.end method

.method public setTextColor(ILjava/util/List;I)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p3, "unitColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p2, "normalColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1339
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1340
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1342
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1344
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1345
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 829
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 830
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z

    .prologue
    .line 833
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 834
    return-void
.end method
