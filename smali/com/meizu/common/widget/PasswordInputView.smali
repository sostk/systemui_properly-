.class public Lcom/meizu/common/widget/PasswordInputView;
.super Landroid/widget/RelativeLayout;
.source "PasswordInputView.java"


# instance fields
.field private mInputText:Landroid/widget/EditText;

.field private mPasswordBtn:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/meizu/common/widget/PasswordInputView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getInflateLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/PasswordInputView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInflateLayoutResource()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/meizu/common/R$layout;->mc_layout_password_input:I

    return v0
.end method

.method protected handleCheckChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 69
    if-nez p2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 76
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 72
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 39
    invoke-virtual {p0}, Lcom/meizu/common/widget/PasswordInputView;->getChildCount()I

    move-result v0

    .line 40
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    if-nez v3, :cond_4

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    if-nez v3, :cond_5

    .line 63
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 41
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 42
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PasswordInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/EditText;

    if-nez v3, :cond_2

    .line 45
    instance-of v3, v2, Landroid/widget/CompoundButton;

    if-nez v3, :cond_3

    .line 41
    .end local v2    # "v":Landroid/view/View;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "v":Landroid/view/View;
    iput-object v2, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    goto :goto_3

    .line 46
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    check-cast v2, Landroid/widget/CompoundButton;

    .end local v2    # "v":Landroid/view/View;
    iput-object v2, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    goto :goto_3

    .line 51
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/PasswordInputView;->mPasswordBtn:Landroid/widget/CompoundButton;

    new-instance v4, Lcom/meizu/common/widget/PasswordInputView$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/PasswordInputView$1;-><init>(Lcom/meizu/common/widget/PasswordInputView;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 61
    iget-object v3, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/meizu/common/widget/PasswordInputView;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
