.class public Lcom/meizu/common/widget/ContentToastLayout;
.super Landroid/widget/FrameLayout;
.source "ContentToastLayout.java"


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field public static final TOAST_TYPE_ERROR:I = 0x1

.field public static final TOAST_TYPE_NORMAL:I = 0x0

.field public static final TOAST_TYPE_TEXT:I = 0x2


# instance fields
.field private mActionTextAppearance:I

.field private mActionView:Landroid/widget/TextView;

.field private mActionViewBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mLayoutBackground:Landroid/graphics/drawable/Drawable;

.field private mMaxIconSize:I

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mSeparatorView:Landroid/view/View;

.field private mText:Ljava/lang/String;

.field private mTitleTextAppearance:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWarningIcon:Landroid/graphics/drawable/Drawable;

.field private mWarningView:Landroid/widget/ImageView;

.field private mWidgetLayout:Landroid/widget/LinearLayout;

.field private mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    sget v0, Lcom/meizu/common/R$attr;->mzContentToastLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextAppearance:I

    .line 61
    sget v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzTitleTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    .line 62
    sget v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzContentToastBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    sget v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionIcon:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    sget v3, Lcom/meizu/common/R$styleable;->mzContentToastLayout_mzActionViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionViewBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    .line 67
    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 70
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/meizu/common/R$layout;->mc_content_toast_layout:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v3, Lcom/meizu/common/R$id;->mc_content_toast_parent:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    .line 72
    iget-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x1020018

    .line 73
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020016

    .line 74
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    .line 75
    iget-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    iget v4, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {v3, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v3, 0x1020006

    .line 76
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    .line 77
    sget v3, Lcom/meizu/common/R$id;->mc_toast_separator:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    .line 78
    sget v3, Lcom/meizu/common/R$id;->mc_content_toast_container:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ContentToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 80
    return-void
.end method

.method private ensureActionView()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setWidget(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setWidget(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    if-nez p1, :cond_1

    .line 226
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWidgetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ContentToastLayout;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "actionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 115
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    if-nez p1, :cond_0

    .line 132
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 118
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 119
    .local v0, "height":I
    iget v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-gt v2, v3, :cond_1

    .line 124
    :goto_1
    iget v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    if-gt v0, v3, :cond_2

    .line 129
    :goto_2
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 120
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 121
    .local v1, "scale":F
    iget v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 122
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    goto :goto_1

    .line 125
    .end local v1    # "scale":F
    :cond_2
    iget v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 126
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mMaxIconSize:I

    .line 127
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    goto :goto_2
.end method

.method public setActionText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/meizu/common/widget/ContentToastLayout;->ensureActionView()V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setContainerLayoutPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    return-void
.end method

.method public setIsShowSeparator(Z)V
    .locals 2
    .param p1, "isShowSeparator"    # Z

    .prologue
    const/4 v1, 0x0

    .line 191
    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mSeparatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layoutBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    return-void
.end method

.method public setParentLayoutPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mText:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    return-void
.end method

.method public setTitleGravity(I)V
    .locals 3
    .param p1, "gravity"    # I

    .prologue
    const/16 v2, 0xe

    .line 266
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    .local v0, "titleLP":Landroid/widget/RelativeLayout$LayoutParams;
    and-int/lit8 v1, p1, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 278
    :goto_0
    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_1
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void

    :sswitch_0
    const/16 v1, 0xa

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xf

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xc

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x9

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 283
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xb

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setToastType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 235
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 236
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/ContentToastLayout;->mLayoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_0
    return-void

    .line 243
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultActionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_ic_content_toast_warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mDefaultWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ContentToastLayout;->setWarningIcon(Landroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_arrow_next_right_warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    .local v0, "actionIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ContentToastLayout;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_content_toast_text_color_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ContentToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$drawable;->mc_content_toast_bg_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setWarningIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "warningIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/ContentToastLayout;->mWarningIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method
