.class public Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;
.super Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
.source "MzKeyguardEasyPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;,
        Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;
    }
.end annotation


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private final mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field protected mEcaViewPinPuk:Landroid/view/View;

.field protected mInputBox:Landroid/view/View;

.field protected mInputDelete:Landroid/widget/ImageView;

.field protected mInputNum:Ljava/lang/String;

.field protected mInputText:Lcom/android/keyguard/PasswordTextView;

.field protected mKeypadView:Lcom/meizu/widget/LockDigitView;

.field mResetPasswordText:Ljava/lang/Runnable;

.field private mSaveTopPattenMargin:I

.field private mSaveTopTipsMargin:I

.field private mTopPattenMargin:I

.field private mTopTipsMargin:I


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mResetPasswordText:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 91
    new-instance v0, Lcom/android/keyguard/DisappearAnimationUtils;

    .line 92
    const-wide/16 v2, 0x7d

    .line 95
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    const v4, 0x10c0003

    .line 93
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 92
    const/high16 v4, 0x3f800000    # 1.0f

    .line 93
    const v5, 0x3f19999a    # 0.6f

    move-object v1, p1

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    .line 96
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mDisappearYTranslation:I

    .line 98
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->password_input_box_margin_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mTopTipsMargin:I

    .line 99
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->save_password_input_box_margin_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mSaveTopTipsMargin:I

    .line 100
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->password_keypad_margin_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mTopPattenMargin:I

    .line 101
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->save_password_keypad_margin_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mSaveTopPattenMargin:I

    .line 88
    return-void
.end method

.method private enableClipping(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->setClipChildren(Z)V

    .line 258
    return-void
.end method

.method private refresh()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    .line 179
    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(Z)I

    move-result v2

    .line 181
    .local v2, "color":I
    const/high16 v10, 0xff0000

    and-int/2addr v10, v2

    shr-int/lit8 v9, v10, 0x10

    .line 182
    .local v9, "red":I
    const v10, 0xff00

    and-int/2addr v10, v2

    shr-int/lit8 v5, v10, 0x8

    .line 183
    .local v5, "green":I
    and-int/lit16 v0, v2, 0xff

    .line 184
    .local v0, "blue":I
    const/16 v10, 0xb3

    invoke-static {v10, v9, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 185
    .local v8, "newColor":I
    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v10, v8}, Lcom/meizu/widget/LockDigitView;->setTextColor(I)V

    .line 187
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 189
    sget v11, Lcom/android/keyguard/R$drawable;->lock_digit_background:I

    .line 187
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    .local v1, "cellBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v10, v1}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    .line 192
    .local v4, "defIcons":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 194
    sget v11, Lcom/android/keyguard/R$array;->lock_digit_icons:I

    .line 192
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 195
    .local v7, "icons":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_1

    .line 196
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 197
    .local v3, "defIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 198
    aput-object v3, v4, v6

    .line 195
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "defIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v10, v4}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v10, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputDelete:Landroid/widget/ImageView;

    sget v11, Lcom/android/keyguard/R$drawable;->lock_password_btn_delete:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    return-void
.end method

.method private setMargins(Z)V
    .locals 4
    .param p1, "save"    # Z

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputBox:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mSaveTopTipsMargin:I

    :goto_0
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputBox:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .local v1, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mSaveTopPattenMargin:I

    :goto_1
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2, v1}, Lcom/meizu/widget/LockDigitView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-void

    .line 214
    .end local v1    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mTopTipsMargin:I

    goto :goto_0

    .line 218
    .restart local v1    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mTopPattenMargin:I

    goto :goto_1
.end method


# virtual methods
.method public converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 283
    .local v2, "r":I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 284
    .local v0, "c":I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 285
    .local v1, "num":I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 286
    const-string/jumbo v3, "left"

    .line 294
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 287
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 288
    const-string/jumbo v3, "0"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 289
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 290
    const-string/jumbo v3, "right"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 292
    .end local v3    # "ret":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    return-object v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 227
    sget v0, Lcom/android/keyguard/R$string;->enter_password_error:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onAttachedToWindow()V

    .line 208
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->setMargins(Z)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 271
    .local v0, "id":I
    sget v1, Lcom/android/keyguard/R$id;->delete:I

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->resetPasswordText(Z)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 268
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->onFinishInflate()V

    .line 154
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container_pin_puk:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaViewPinPuk:Landroid/view/View;

    .line 155
    sget v0, Lcom/android/keyguard/R$id;->lockPattern:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 156
    sget v0, Lcom/android/keyguard/R$id;->inputBox:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputBox:Landroid/view/View;

    .line 157
    sget v0, Lcom/android/keyguard/R$id;->delete:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputDelete:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;

    invoke-direct {v1, p0, v4}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 159
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->refresh()V

    .line 161
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    .line 164
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getPasswordLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxNum(I)V

    .line 165
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaViewPinPuk:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->canGetPasswordLenght()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    .line 169
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_security_password_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 170
    const/4 v5, 0x1

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaViewPinPuk:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->bouncer_emergency_call_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/EmergencyButton;

    .line 173
    .local v6, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v6, :cond_1

    .line 174
    invoke-virtual {v6, p0}, Lcom/android/keyguard/EmergencyButton;->setCallBack(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 152
    :cond_1
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setPressedAnimation(Z)V

    .line 107
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->invalidate()V

    .line 108
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 109
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputDelete:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method protected resetState()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->enableInput()V

    .line 135
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mKeypadView:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->disableInput()V

    .line 127
    :cond_0
    return-void
.end method

.method protected setThemeValues()V
    .locals 3

    .prologue
    .line 371
    invoke-super {p0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->setThemeValues()V

    .line 372
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaViewPinPuk:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    .line 373
    const-string/jumbo v0, "MzKeyguardEasyPasswordView"

    const-string/jumbo v1, "mEcaViewPinPuk instanceof EmergencyCarrierArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEcaViewPinPuk:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    sget v1, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mEnmergencyColor:I

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mCancelKeyAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierColor(IF)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->refresh()V

    .line 370
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public startAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->enableClipping(Z)V

    .line 233
    invoke-virtual {p0, v4}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->setTranslationY(F)V

    .line 235
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 236
    const-wide/16 v2, 0x1f4

    .line 235
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 239
    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 231
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->enableClipping(Z)V

    .line 247
    invoke-virtual {p0, v5}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->setAlpha(F)V

    .line 248
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 249
    const-wide/16 v2, 0xc8

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 255
    const/4 v0, 0x1

    return v0
.end method
