.class public Lcom/meizu/keyguard/MzKeyguardPasswordView;
.super Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
.source "MzKeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardPasswordView$1;,
        Lcom/meizu/keyguard/MzKeyguardPasswordView$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field mResetInputText:Ljava/lang/Runnable;

.field private final mShowImeAtScreenOn:Z

.field mShowSoftInput:Ljava/lang/Runnable;

.field private mSwitchImeButton:Landroid/view/View;

.field private mTempLocation:[I


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzKeyguardPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardPasswordView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mResetInputText:Ljava/lang/Runnable;

    .line 408
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mTempLocation:[I

    .line 433
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$2;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mShowSoftInput:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mShowImeAtScreenOn:Z

    .line 91
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mDisappearYTranslation:I

    .line 94
    const v0, 0x10c000e

    .line 93
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    const v0, 0x10c000f

    .line 95
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    return-void
.end method

.method private checkPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    return-void

    .line 419
    :cond_1
    const-string/jumbo v0, "MzKeyguardPasswordView"

    const-string/jumbo v1, "check passowrd ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getPasswordLimit()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 415
    :cond_2
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 274
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 279
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 281
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 283
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 285
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    .line 291
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 292
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 301
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 302
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 303
    goto :goto_0

    .line 307
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 310
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 307
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 310
    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 387
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 345
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 319
    sget v0, Lcom/android/keyguard/R$string;->enter_password_error:I

    return v0
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "MzKeyguardPasswordView"

    const-string/jumbo v1, "needsInput() - returns true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 393
    if-nez p3, :cond_4

    .line 394
    if-eqz p2, :cond_0

    .line 395
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 394
    :cond_0
    const/4 v1, 0x1

    .line 397
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_6

    .line 398
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    .line 397
    if-eqz v2, :cond_6

    .line 399
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 400
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 402
    const/4 v2, 0x1

    return v2

    .line 396
    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 393
    .end local v1    # "isSoftImeEvent":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 399
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 397
    .end local v0    # "isKeyboardEnterKey":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 404
    :cond_7
    return v3
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onFinishInflate()V

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "input_method"

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getPasswordTextViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 157
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 159
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 160
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/meizu/keyguard/MzKeyguardPasswordView$4;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$4;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 173
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/meizu/keyguard/MzKeyguardPasswordView$5;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$5;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/meizu/keyguard/MzKeyguardPasswordView$6;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$6;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/meizu/keyguard/MzKeyguardPasswordView$7;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$7;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 218
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 221
    sget v1, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v1, v3}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    new-instance v2, Lcom/meizu/keyguard/MzKeyguardPasswordView$8;

    invoke-direct {v2, p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView$8;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mIsMaxLengthPassword:Z

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 136
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onResume(I)V

    .line 119
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/keyguard/MzKeyguardPasswordView$3;-><init>(Lcom/meizu/keyguard/MzKeyguardPasswordView;I)V

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 350
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "pwd":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 352
    .local v4, "length":I
    const/4 v0, 0x0

    .line 353
    .local v0, "enterGuestMode":Z
    const/4 v1, 0x0

    .line 354
    .local v1, "enterPrivacyMode":Z
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getPasswordLimit()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 355
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getPasswordLimit()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void

    .line 359
    :cond_0
    iget-boolean v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mIsMaxLengthPassword:Z

    if-eqz v6, :cond_1

    .line 360
    return-void

    .line 363
    :cond_1
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v6, :cond_2

    .line 364
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 367
    :cond_2
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v3

    .line 368
    .local v3, "isSaveMode":Z
    if-nez v3, :cond_3

    iget-boolean v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mGuestMode:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getGuestPwdLength()I

    move-result v6

    if-gt v6, v4, :cond_3

    .line 369
    invoke-virtual {p0, v5}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->checkGuestModePassword(Ljava/lang/String;)Z

    move-result v2

    .line 370
    .local v2, "guestPwdResult":Z
    if-eqz v2, :cond_3

    .line 371
    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->onGuestMode()V

    .line 376
    .end local v2    # "guestPwdResult":Z
    :cond_3
    iget-object v6, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPrivateModeEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 377
    const/4 v6, 0x4

    if-ne v6, v4, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->verifyPrivacyPasswordAndUnlock()Z

    move-result v1

    .line 381
    .end local v1    # "enterPrivacyMode":Z
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 349
    :cond_5
    :goto_0
    return-void

    .line 381
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->getPasswordLimit()I

    move-result v6

    if-gt v6, v4, :cond_5

    .line 382
    invoke-direct {p0, v5}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->checkPassword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 427
    invoke-super {p0, p1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    .line 428
    if-eqz p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mShowSoftInput:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->reset()V

    .line 144
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 142
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mResetInputText:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 99
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mShowSoftInput:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->setAlpha(F)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->setTranslationY(F)V

    .line 326
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 327
    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    const-wide/16 v2, 0x12c

    .line 326
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 323
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 337
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 339
    const-wide/16 v2, 0x64

    .line 335
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 341
    const/4 v0, 0x1

    return v0
.end method
