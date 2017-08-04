.class public Lcom/meizu/common/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/common/widget/DatePicker;

.field private mIsShowDay:Z

.field private mTimerPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    .line 154
    invoke-direct/range {v0 .. v8}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "isLunar"    # Z
    .param p8, "isLeapMonth"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    .line 175
    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    const/4 v0, -0x1

    .line 177
    sget v1, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const/high16 v0, 0x1040000

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v0, "layout_inflater"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 182
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/meizu/common/R$layout;->mc_date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 183
    .local v10, "view":Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 201
    :goto_0
    sget v0, Lcom/meizu/common/R$id;->datePicker:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/DatePicker;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    move v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p0

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 206
    .local v8, "selectColor":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v9, "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_unselected_color_one:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_picker_unselected_color_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, v8, v9, v8}, Lcom/meizu/common/widget/DatePicker;->setTextColor(ILjava/util/List;I)V

    .line 213
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawLine(Z)V

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

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

    .line 217
    sget v0, Lcom/meizu/common/R$id;->time_preview:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    .line 218
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 187
    .end local v8    # "selectColor":I
    .end local v9    # "unSelectColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/DatePickerDialog$1;

    invoke-direct {v0, p0, v10}, Lcom/meizu/common/widget/DatePickerDialog$1;-><init>(Lcom/meizu/common/widget/DatePickerDialog;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
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

    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 138
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/common/widget/DatePicker;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->clearFocus()V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/common/widget/DatePicker;III)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Lcom/meizu/common/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 230
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "year":I
    const-string/jumbo v0, "month"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "month":I
    const-string/jumbo v0, "day"

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 279
    .local v3, "day":I
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V

    .line 280
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    .line 267
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    .line 268
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    .line 269
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    return-object v0
.end method

.method public setMaxYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/16 v1, 0x833

    .line 309
    if-gt p1, v1, :cond_0

    .line 312
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x1f

    .line 313
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 314
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    .line 315
    return-void

    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    const/16 p1, 0x833

    .line 310
    goto :goto_0
.end method

.method public setMinYear(I)V
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/16 v1, 0x76c

    .line 297
    if-lt p1, v1, :cond_0

    .line 300
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 301
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 302
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 303
    return-void

    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    const/16 p1, 0x76c

    .line 298
    goto :goto_0
.end method

.method public setShowDayColumn(Z)V
    .locals 7
    .param p1, "isShowDay"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    .line 322
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/DatePicker;->setShowDayColumn(Z)V

    .line 323
    iget-object v6, p0, Lcom/meizu/common/widget/DatePickerDialog;->mTimerPreview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v1}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/common/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePickerDialog;->mIsShowDay:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->getTimePreviewText(ZIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->setTextColor(III)V

    .line 291
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePickerDialog;->updateDate(IIIZ)V

    .line 251
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerDialog;->mDatePicker:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 262
    return-void
.end method
