.class public Lcom/meizu/common/widget/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    iput-object p3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    .line 111
    iput p4, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    .line 112
    iput p5, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    .line 113
    iput-boolean p6, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    const/4 v2, -0x1

    .line 115
    sget v4, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, -0x2

    const/high16 v2, 0x1040000

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/meizu/common/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v2, "layout_inflater"

    .line 120
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/meizu/common/R$layout;->mc_time_picker_dialog:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 140
    :goto_0
    sget v2, Lcom/meizu/common/R$id;->timePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/TimePicker;

    iput-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    .line 143
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 144
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 145
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget v3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 146
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2, p0}, Lcom/meizu/common/widget/TimePicker;->setOnTimeChangedListener(Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;)V

    .line 148
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setIsDrawLine(Z)V

    .line 149
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_time_picker_line_one_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_time_picker_line_two_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/TimePicker;->setLineHeight(II)V

    .line 151
    return-void

    .line 127
    :cond_0
    new-instance v2, Lcom/meizu/common/widget/TimePickerDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/meizu/common/widget/TimePickerDialog$1;-><init>(Lcom/meizu/common/widget/TimePickerDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 94
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->clearFocus()V

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mCallback:Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v2, "hour"

    .line 182
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "minute":I
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 185
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 186
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 187
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "hour"

    .line 173
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "minute"

    .line 174
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "is24hour"

    .line 175
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    return-object v0
.end method

.method public onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/meizu/common/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 168
    return-void
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/TimePicker;->setTextColor(III)V

    .line 198
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/TimePickerDialog;->mTimePicker:Lcom/meizu/common/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 164
    return-void
.end method
