.class public Lcom/meizu/common/app/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private isCancelable:Z

.field private mApplyContentLayout:Landroid/widget/RelativeLayout;

.field private mBackgrond:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDimAmount:F

.field private mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimotionView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mParentPanel:Landroid/widget/LinearLayout;

.field private mTextColor:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget v0, Lcom/meizu/common/R$style;->LoadingDialogTheme:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    const v0, 0x3f333333    # 0.7f

    .line 31
    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    .line 45
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_loading_alert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 98
    sget v0, Lcom/meizu/common/R$id;->relativeLayout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    .line 99
    sget v0, Lcom/meizu/common/R$id;->applyAnimView:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LoadingAnimotionView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimotionView;

    .line 100
    sget v0, Lcom/meizu/common/R$id;->applyAnimTitle:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget v0, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 61
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "dialog":Lcom/meizu/common/app/LoadingDialog;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/LoadingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/LoadingDialog;->setCancelable(Z)V

    .line 65
    invoke-virtual {v0, p4}, Lcom/meizu/common/app/LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    invoke-virtual {v0}, Lcom/meizu/common/app/LoadingDialog;->show()V

    .line 67
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 84
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    .line 90
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 91
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 92
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    sget v0, Lcom/meizu/common/R$layout;->loading_alert_dialog:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->initView()V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setBarBackground(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 185
    return-void
.end method

.method public setBarForeground(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 182
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    iput-boolean p1, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    .line 154
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mDimAmount:F

    .line 165
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessageTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    .line 140
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setMessageTextColorResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessageTextColor(I)V

    .line 147
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 73
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
