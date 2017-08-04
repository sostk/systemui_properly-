.class public Lcom/meizu/common/preference/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEmptyAllow:Z

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    iput-boolean v3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    .line 263
    new-instance v1, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;-><init>(Lcom/meizu/common/preference/EditPhoneNumberPreference;)V

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->watcher:Landroid/text/TextWatcher;

    const/4 v1, 0x0

    .line 501
    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 128
    sget v1, Lcom/meizu/common/R$layout;->mc_preference_editphonenumber:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Lcom/meizu/common/R$styleable;->EditPhoneNumberPreference:[I

    sget v2, Lcom/meizu/common/R$style;->Widget_MeizuCommon_EditPhoneNumberPreference:I

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->EditPhoneNumberPreference_mcEnableButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 140
    sget v1, Lcom/meizu/common/R$styleable;->EditPhoneNumberPreference_mcDisableButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 141
    sget v1, Lcom/meizu/common/R$styleable;->EditPhoneNumberPreference_mcChangeNumButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 142
    sget v1, Lcom/meizu/common/R$styleable;->EditPhoneNumberPreference_mcConfirmMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    sget-object v1, Lcom/meizu/common/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    sget v1, Lcom/meizu/common/R$styleable;->SwitchPreference_mcSummaryOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 147
    sget v1, Lcom/meizu/common/R$styleable;->SwitchPreference_mcSummaryOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/EditPhoneNumberPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/EditPhoneNumberPreference;

    .prologue
    .line 45
    iget v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/EditPhoneNumberPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/EditPhoneNumberPreference;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEmptyAllow()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    return v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 311
    sget v1, Lcom/meizu/common/R$id;->mc_edit_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    .local v0, "container":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 316
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 198
    iput v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mButtonClicked:I

    .line 200
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 208
    .local v1, "editText":Landroid/widget/EditText;
    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-nez v2, :cond_2

    .line 217
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 222
    :goto_2
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 223
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 224
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 226
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v2, p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/meizu/common/preference/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "defaultNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 214
    iput-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 220
    .end local v0    # "defaultNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_2
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    const v3, 0x1020010

    .line 165
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, "summaryView":Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 181
    .local v0, "sum":Ljava/lang/CharSequence;
    :goto_1
    if-nez v0, :cond_6

    const/16 v2, 0x8

    .line 188
    .local v2, "vis":I
    :goto_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 172
    .end local v0    # "sum":Ljava/lang/CharSequence;
    .end local v2    # "vis":I
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChecked:Z

    if-nez v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :goto_3
    goto :goto_1

    .line 173
    .end local v0    # "sum":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :goto_4
    goto :goto_1

    .end local v0    # "sum":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 175
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 182
    .restart local v0    # "sum":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 183
    .restart local v2    # "vis":I
    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 391
    iget v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-eq v2, v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    iput p2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mButtonClicked:I

    .line 397
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 398
    return-void

    :cond_1
    const/4 v2, -0x3

    .line 391
    if-ne p2, v2, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setToggled(Z)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 405
    iget v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    .line 408
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    if-nez v0, :cond_2

    .line 418
    :goto_1
    return-void

    .line 405
    :cond_1
    iget v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 411
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/meizu/common/preference/EditPhoneNumberPreference;I)V

    goto :goto_1
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "pickedValue"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 382
    .local v0, "editText":Landroid/widget/EditText;
    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v2, 0x0

    .line 327
    iget v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChecked:Z

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 471
    if-nez p1, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 473
    return-void

    .line 471
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 505
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfirmationMode(I)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 0
    .param p1, "confirmationMode"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 590
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 591
    return-object p0
.end method

.method public setDialogOnClosedListener(Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 359
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 354
    return-void
.end method

.method public setEmptyAllow(Z)V
    .locals 0
    .param p1, "mEmptyAllow"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    .line 261
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "identifier"    # I

    .prologue
    .line 363
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 364
    iput p2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPrefId:I

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 366
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "identifier"    # I
    .param p3, "l"    # Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 372
    iput p2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPrefId:I

    .line 373
    iput-object p3, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/common/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 374
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 461
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 539
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-object p0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public setSummaryOn(I)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 515
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-object p0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public setToggled(Z)Lcom/meizu/common/preference/EditPhoneNumberPreference;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mChecked:Z

    .line 433
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 436
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 562
    iget v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-eq v1, v3, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    .line 568
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, ":"

    const/4 v2, 0x2

    .line 563
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "inValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 564
    aget-object v1, v0, v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setToggled(Z)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    .line 565
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/common/preference/EditPhoneNumberPreference;

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 487
    const/4 v1, 0x0

    .line 488
    .local v1, "shouldDisable":Z
    iget v4, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-eq v4, v2, :cond_2

    .line 492
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move v1, v3

    .line 494
    .local v1, "shouldDisable":Z
    :goto_0
    return v1

    .line 488
    .local v1, "shouldDisable":Z
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 489
    iget-object v2, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string/jumbo v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "inValues":[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "shouldDisable":Z
    goto :goto_0

    .line 492
    .end local v0    # "inValues":[Ljava/lang/String;
    .local v1, "shouldDisable":Z
    :cond_3
    iget v4, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 244
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isEmptyAllow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iget v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    goto :goto_1
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 585
    return-void
.end method
