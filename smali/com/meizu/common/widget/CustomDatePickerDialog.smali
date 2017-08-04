.class public Lcom/meizu/common/widget/CustomDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "CustomDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field final indicatorMaxMoveDistance:I

.field private final mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mDuration:J

.field private mGregorianTab:Landroid/widget/TextView;

.field private mIndicator:Landroid/view/View;

.field private mIsLayoutRtl:Z

.field private mIsShowDay:Z

.field private mLunarTab:Landroid/widget/TextView;

.field private mTimerPreview:Landroid/widget/TextView;

.field final tabTextSelectColor:I

.field final unselectedTabColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0xc8

    .line 109
    iput-wide v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    .line 116
    iput-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    .line 174
    iput-object p3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    const/4 v0, -0x1

    .line 176
    sget v2, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    const/high16 v0, 0x1040000

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v0, "layout_inflater"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 183
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/meizu/common/R$layout;->mc_custom_date_picker_dialog:I

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 185
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setView(Landroid/view/View;)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 203
    :goto_0
    sget v0, Lcom/meizu/common/R$id;->datePicker:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_one_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_two_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setLineHeight(II)V

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_tab_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    .line 212
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_custom_date_picker_unselected_tab_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    .line 215
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_custom_picker_dicator_max_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->indicatorMaxMoveDistance:I

    .line 219
    invoke-direct {p0, p1, v7}, Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$2;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void

    .line 189
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/CustomDatePickerDialog$1;

    invoke-direct {v0, p0, v7}, Lcom/meizu/common/widget/CustomDatePickerDialog$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 152
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->setTabColor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CustomDatePickerDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomDatePickerDialog;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    return-wide v0
.end method

.method private initTabView(Landroid/content/Context;Landroid/view/View;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 307
    sget v0, Lcom/meizu/common/R$id;->lunar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    .line 308
    sget v0, Lcom/meizu/common/R$id;->gregorian:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    .line 309
    sget v0, Lcom/meizu/common/R$id;->indicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 314
    .local v7, "selectColor":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v9, "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 323
    .local v8, "textUnitColor":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    :goto_0
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 331
    .local v6, "indicatorDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 332
    iget v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 333
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, v7, v9, v8}, Lcom/meizu/common/widget/DatePicker;->setTextColor(ILjava/util/List;I)V

    .line 336
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$4;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$5;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    sget v0, Lcom/meizu/common/R$id;->time_preview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    .line 381
    iget-object v10, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    .line 324
    .end local v6    # "indicatorDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTabColor(Z)V
    .locals 23
    .param p1, "isLunar"    # Z

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsLayoutRtl:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 252
    if-nez p1, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->indicatorMaxMoveDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v6, v0

    .local v6, "fromXDelta":F
    const/16 v16, 0x0

    .line 261
    .local v16, "toXDelta":F
    :goto_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 262
    .local v4, "animation":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 263
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIndicator:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string/jumbo v12, "RgbRed"

    .local v12, "propertyNameRgbRed":Ljava/lang/String;
    const-string/jumbo v11, "RgbGreen"

    .local v11, "propertyNameRgbGreen":Ljava/lang/String;
    const-string/jumbo v10, "RgbBlue"

    .line 270
    .local v10, "propertyNameRgbBlue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v19

    .line 271
    .local v19, "unSelectedRgbRed":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v18

    .line 272
    .local v18, "unSelectedRgbGreen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->unselectedTabColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    .line 273
    .local v17, "unSelectedRgbBlue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 274
    .local v15, "selectedRgbRed":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 275
    .local v14, "selectedRgbGreen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .local v13, "selectedRgbBlue":I
    const-string/jumbo v20, "RgbRed"

    const/16 v21, 0x2

    .line 277
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v19, v21, v22

    const/16 v22, 0x1

    aput v15, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .local v9, "holderRgbRed":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v20, "RgbGreen"

    const/16 v21, 0x2

    .line 278
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    const/16 v22, 0x1

    aput v14, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .local v8, "holderRgbGreen":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v20, "RgbBlue"

    const/16 v21, 0x2

    .line 279
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v17, v21, v22

    const/16 v22, 0x1

    aput v13, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .local v7, "holderRgbBlue":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x3

    .line 281
    move/from16 v0, v20

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v8, v20, v21

    const/16 v21, 0x2

    aput-object v7, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 282
    .local v5, "colorAnimation":Landroid/animation/ValueAnimator;
    if-nez v5, :cond_3

    .line 285
    :goto_1
    new-instance v20, Lcom/meizu/common/widget/CustomDatePickerDialog$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/meizu/common/widget/CustomDatePickerDialog$3;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog;Landroid/animation/ValueAnimator;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDuration:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 303
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 304
    return-void

    .line 244
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "colorAnimation":Landroid/animation/ValueAnimator;
    .end local v6    # "fromXDelta":F
    .end local v7    # "holderRgbBlue":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "holderRgbGreen":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "holderRgbRed":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "propertyNameRgbBlue":Ljava/lang/String;
    .end local v11    # "propertyNameRgbGreen":Ljava/lang/String;
    .end local v12    # "propertyNameRgbRed":Ljava/lang/String;
    .end local v13    # "selectedRgbBlue":I
    .end local v14    # "selectedRgbGreen":I
    .end local v15    # "selectedRgbRed":I
    .end local v16    # "toXDelta":F
    .end local v17    # "unSelectedRgbBlue":I
    .end local v18    # "unSelectedRgbGreen":I
    .end local v19    # "unSelectedRgbRed":I
    :cond_0
    if-nez p1, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->indicatorMaxMoveDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v6, v0

    .restart local v6    # "fromXDelta":F
    const/16 v16, 0x0

    .line 249
    .restart local v16    # "toXDelta":F
    goto/16 :goto_0

    .end local v6    # "fromXDelta":F
    .end local v16    # "toXDelta":F
    :cond_1
    const/4 v6, 0x0

    .line 246
    .restart local v6    # "fromXDelta":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->indicatorMaxMoveDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "toXDelta":F
    goto/16 :goto_0

    .end local v6    # "fromXDelta":F
    .end local v16    # "toXDelta":F
    :cond_2
    const/4 v6, 0x0

    .line 254
    .restart local v6    # "fromXDelta":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog;->indicatorMaxMoveDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "toXDelta":F
    goto/16 :goto_0

    .line 282
    .restart local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    .restart local v5    # "colorAnimation":Landroid/animation/ValueAnimator;
    .restart local v7    # "holderRgbBlue":Landroid/animation/PropertyValuesHolder;
    .restart local v8    # "holderRgbGreen":Landroid/animation/PropertyValuesHolder;
    .restart local v9    # "holderRgbRed":Landroid/animation/PropertyValuesHolder;
    .restart local v10    # "propertyNameRgbBlue":Ljava/lang/String;
    .restart local v11    # "propertyNameRgbGreen":Ljava/lang/String;
    .restart local v12    # "propertyNameRgbRed":Ljava/lang/String;
    .restart local v13    # "selectedRgbBlue":I
    .restart local v14    # "selectedRgbGreen":I
    .restart local v15    # "selectedRgbRed":I
    .restart local v17    # "unSelectedRgbBlue":I
    .restart local v18    # "unSelectedRgbGreen":I
    .restart local v19    # "unSelectedRgbRed":I
    :cond_3
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 283
    :cond_4
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v20

    if-nez v20, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 392
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mCallBack:Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 387
    return-void
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Lcom/meizu/common/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 398
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    .line 436
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "year":I
    const-string/jumbo v0, "month"

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "month":I
    const-string/jumbo v0, "day"

    .line 438
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 439
    .local v3, "day":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 440
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    .line 427
    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    .line 428
    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    .line 429
    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    return-object v0
.end method

.method public setMaxYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/16 v1, 0x833

    .line 458
    if-gt p1, v1, :cond_0

    .line 461
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x1f

    .line 462
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 463
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 464
    return-void

    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    const/16 p1, 0x833

    .line 459
    goto :goto_0
.end method

.method public setMinYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/16 v1, 0x76c

    .line 446
    if-lt p1, v1, :cond_0

    .line 449
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 450
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 451
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 452
    return-void

    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    const/16 p1, 0x76c

    .line 447
    goto :goto_0
.end method

.method public setShowDayColumn(Z)V
    .locals 7
    .param p1, "isShowDay"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    .line 471
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setShowDayColumn(Z)V

    .line 472
    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->updateDate(III)V

    .line 422
    return-void
.end method
