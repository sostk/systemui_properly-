.class public Lcom/meizu/common/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePicker$1;,
        Lcom/meizu/common/widget/TimePicker$SavedState;,
        Lcom/meizu/common/widget/TimePicker$TimeAdapter;,
        Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field mHourTexts:[Ljava/lang/String;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAccessibilityEnable:Z

.field private mIsAm:Z

.field private mIsDrawLine:Z

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mMinTexts:[Ljava/lang/String;

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mNumTpyeface:Landroid/graphics/Typeface;

.field private mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private final mPmText:Ljava/lang/String;

.field private mWidthPadding:I

.field private mZhTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, 0x0

    .line 67
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/4 v8, 0x0

    .line 68
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 69
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 70
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 90
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    const/4 v8, 0x5

    .line 91
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const-string/jumbo v8, "sans-serif-medium"

    const/4 v9, 0x0

    .line 190
    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mZhTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v8, "DINPro-medium"

    const/4 v9, 0x0

    .line 191
    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    const/16 v8, 0x64

    .line 193
    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v8, 0x64

    .line 194
    if-lt v6, v8, :cond_1

    const/16 v8, 0x64

    .line 201
    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_1
    const/16 v8, 0x64

    .line 202
    if-lt v6, v8, :cond_3

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "cal":Ljava/util/Calendar;
    const/16 v8, 0xb

    .line 211
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v8, 0xc

    .line 212
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 213
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_2
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 227
    :cond_0
    :goto_3
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 228
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    .local v4, "dfsAmPm":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 229
    aget-object v8, v4, v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    const/4 v8, 0x1

    .line 230
    aget-object v8, v4, v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    const/4 v8, 0x0

    .line 234
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    const/4 v8, 0x0

    .line 235
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_width_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mWidthPadding:I

    .line 237
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 238
    sget-object v8, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 239
    .local v1, "b":Landroid/content/res/TypedArray;
    sget v8, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 241
    .local v7, "lineColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_stroke_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    .line 246
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/TimePicker;->setWillNotDraw(Z)V

    .line 248
    sget v8, Lcom/meizu/common/R$id;->mc_column_parent:I

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    const-string/jumbo v8, "accessibility"

    .line 250
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 251
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_6

    .line 254
    :goto_4
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->setContentDescription()V

    .line 255
    return-void

    .line 195
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "b":Landroid/content/res/TypedArray;
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v4    # "dfsAmPm":[Ljava/lang/String;
    .end local v7    # "lineColor":I
    :cond_1
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v8, 0x9

    .line 196
    if-le v6, v8, :cond_2

    .line 194
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    goto :goto_5

    .line 203
    :cond_3
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v8, 0x9

    .line 204
    if-le v6, v8, :cond_4

    .line 202
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 205
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    goto :goto_6

    .line 218
    .restart local v2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const/16 v8, 0xc

    .line 215
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v8, 0x1e

    .line 216
    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 217
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 221
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    iget v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v9, 0xc

    if-lt v8, v9, :cond_0

    .line 222
    iget v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v8, v8, -0xc

    iput v8, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 223
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    goto/16 :goto_3

    .line 252
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v1    # "b":Landroid/content/res/TypedArray;
    .restart local v3    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v4    # "dfsAmPm":[Ljava/lang/String;
    .restart local v7    # "lineColor":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    goto/16 :goto_4
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/TimePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/TimePicker;->sendAccessibilityEvents(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 690
    .local v0, "position":I
    packed-switch p1, :pswitch_data_0

    :cond_0
    const-string/jumbo v1, ""

    .line 716
    return-object v1

    .line 692
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 693
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    if-eqz v0, :cond_2

    .line 697
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 694
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/16 v0, 0xc

    .line 696
    goto :goto_0

    .line 701
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 702
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 705
    :pswitch_2
    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 706
    :goto_1
    if-eqz v0, :cond_4

    .line 708
    if-ne v0, v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v1

    :cond_3
    move v0, v2

    .line 705
    goto :goto_1

    .line 707
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private inflateLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 261
    :goto_0
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init12HourView()V

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 269
    .local v4, "selectColor":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v7, "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_picker_unselected_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 277
    .local v6, "unSelectColor":I
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v8, v4, v7}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 278
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v8, v4, v7}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 280
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v8, :cond_2

    .line 284
    :goto_2
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 289
    .local v5, "textUnitPaddingTop":I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 291
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 292
    .local v0, "defaultScaledDensity":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 293
    .local v2, "nowScaledDensity":F
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    div-float/2addr v8, v2

    sub-float v9, v2, v0

    mul-float/2addr v8, v9

    const v9, 0x3fa66666    # 1.3f

    div-float v3, v8, v9

    .line 294
    .local v3, "paddingTopOffset":F
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v10, v3

    float-to-int v10, v10

    iget-object v11, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 296
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v10, v3

    float-to-int v10, v10

    iget-object v11, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 302
    :goto_3
    return-void

    .line 259
    .end local v0    # "defaultScaledDensity":F
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "nowScaledDensity":F
    .end local v3    # "paddingTopOffset":F
    .end local v4    # "selectColor":I
    .end local v5    # "textUnitPaddingTop":I
    .end local v6    # "unSelectColor":I
    .end local v7    # "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->removeAllViews()V

    goto/16 :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init24HourView()V

    goto/16 :goto_1

    .line 281
    .restart local v4    # "selectColor":I
    .restart local v6    # "unSelectColor":I
    .restart local v7    # "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v8, v4, v6}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    goto :goto_2

    .line 300
    .restart local v0    # "defaultScaledDensity":F
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "nowScaledDensity":F
    .restart local v3    # "paddingTopOffset":F
    .restart local v5    # "textUnitPaddingTop":I
    :cond_3
    invoke-virtual {p0, v13}, Lcom/meizu/common/widget/TimePicker;->setEnabled(Z)V

    goto :goto_3
.end method

.method private init12HourView()V
    .locals 10

    .prologue
    .line 342
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_time_picker_column_12:I

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 348
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 349
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 353
    :goto_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 358
    :goto_1
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 359
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0xc

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 361
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 362
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 364
    sget v0, Lcom/meizu/common/R$id;->mc_scroll3:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 365
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 367
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v9, "numberNormalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 377
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 378
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 380
    return-void

    .line 343
    .end local v9    # "numberNormalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 365
    goto/16 :goto_2
.end method

.method private init24HourView()V
    .locals 11

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 305
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_time_picker_column_24:I

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 311
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 312
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 316
    :goto_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 321
    :goto_1
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    invoke-direct {v1, p0, v8}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0x18

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const/16 v7, 0x17

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 325
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 326
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mOneScreenCount:I

    const/16 v7, 0x3b

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 329
    iput-object v10, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v9, "numberNormalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 338
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    return-void

    .line 306
    .end local v9    # "numberNormalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private sendAccessibilityEvents(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x4

    .line 652
    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-nez v3, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->setContentDescription()V

    const/4 v3, 0x3

    .line 654
    if-eq p1, v3, :cond_2

    const/4 v3, 0x1

    .line 659
    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    .line 664
    if-ne p1, v3, :cond_0

    .line 665
    sget v3, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 666
    .local v2, "minLayout":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 655
    .end local v2    # "minLayout":Landroid/view/View;
    :cond_2
    sget v3, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 656
    .local v0, "amPmLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 660
    .end local v0    # "amPmLayout":Landroid/view/View;
    :cond_3
    sget v3, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, "hourLayout":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {v1, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setContentDescription()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 621
    iget-boolean v7, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-eq v7, v9, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u4e0a\u4e0b\u5348\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    .local v4, "tipAmPm":Ljava/lang/String;
    const-string/jumbo v5, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65f6\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    .local v5, "tipHour":Ljava/lang/String;
    const-string/jumbo v6, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5206\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    .line 626
    .local v6, "tipMin":Ljava/lang/String;
    sget v7, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    .local v0, "amPmLayout":Landroid/view/View;
    sget v7, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 628
    .local v2, "minLayout":Landroid/view/View;
    sget v7, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "hourLayout":Landroid/view/View;
    const-string/jumbo v3, ""

    .line 631
    .local v3, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 634
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    if-nez v0, :cond_3

    .line 640
    :goto_2
    if-nez v1, :cond_4

    .line 644
    :goto_3
    if-eqz v2, :cond_0

    .line 645
    invoke-virtual {v2, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5206\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 632
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 637
    :cond_3
    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 638
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u4e0a\u4e0b\u5348\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 641
    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65f6\uff0c\u5f53\u524d\u65f6\u95f4\u662f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-boolean v1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAccessibilityEnable:Z

    if-nez v1, :cond_1

    .line 685
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 675
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, ""

    .line 677
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return v3

    .line 678
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/TimePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-boolean v0, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-nez v0, :cond_1

    .line 517
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 511
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    return v0

    .line 515
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 602
    iget-boolean v0, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getWidth()I

    move-result v8

    .line 604
    .local v8, "width":I
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mWidthPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 605
    .local v7, "pickerWidth":I
    sub-int v0, v8, v7

    div-int/lit8 v6, v0, 0x2

    .line 606
    .local v6, "paddingWdith":I
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 607
    int-to-float v1, v6

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v6, v7

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/TimePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/TimePicker;

    .line 722
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 723
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 491
    check-cast v0, Lcom/meizu/common/widget/TimePicker$SavedState;

    .line 492
    .local v0, "ss":Lcom/meizu/common/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 493
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$900(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v1

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$1000(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 494
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 485
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 486
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/common/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/meizu/common/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/meizu/common/widget/TimePicker$1;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 566
    if-eqz p1, :cond_0

    .line 570
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 572
    .local v1, "is24Hour":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 580
    :goto_1
    return-void

    .line 567
    .end local v1    # "is24Hour":Z
    :cond_0
    return-void

    .line 575
    .restart local v1    # "is24Hour":Z
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 538
    if-nez p1, :cond_1

    .line 539
    :cond_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 541
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 542
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 559
    .local v0, "hour":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 560
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 553
    .local v0, "hour":I
    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 554
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0
    .param p1, "isDrawLine"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/meizu/common/widget/TimePicker;->mIsDrawLine:Z

    .line 613
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0
    .param p1, "lineOneHeight"    # I
    .param p2, "lineTwoHeight"    # I

    .prologue
    .line 616
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mLineOneHeight:I

    .line 617
    iput p2, p0, Lcom/meizu/common/widget/TimePicker;->mLineTwoHeight:I

    .line 618
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    .line 504
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 590
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 591
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v0, :cond_0

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    goto :goto_0
.end method

.method public update(IIZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "is24hour"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "updateHourPicker":Z
    const/4 v1, 0x0

    .line 386
    .local v1, "updateMinPicker":Z
    if-nez p3, :cond_1

    .line 392
    iput-boolean v2, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 393
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-ne v4, p1, :cond_2

    .line 397
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_3

    .line 403
    :cond_0
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    if-ne v4, p2, :cond_4

    .line 408
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne p3, v4, :cond_5

    .line 413
    :goto_3
    if-nez v0, :cond_6

    .line 416
    :goto_4
    if-nez v1, :cond_7

    .line 419
    :goto_5
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-nez v4, :cond_8

    .line 422
    :goto_6
    return-void

    .line 387
    :cond_1
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 389
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    goto :goto_1

    .line 394
    :cond_2
    const/4 v0, 0x1

    .line 395
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 398
    :cond_3
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 399
    iput-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    goto :goto_1

    .line 404
    :cond_4
    const/4 v1, 0x1

    .line 405
    iput p2, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    goto :goto_2

    .line 409
    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 410
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    goto :goto_3

    .line 414
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_4

    .line 417
    :cond_7
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_5

    .line 420
    :cond_8
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-nez v5, :cond_9

    :goto_7
    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    goto :goto_6

    :cond_9
    move v2, v3

    goto :goto_7
.end method
