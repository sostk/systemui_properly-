.class public Lcom/meizu/common/widget/EmptyView;
.super Landroid/widget/FrameLayout;
.source "EmptyView.java"


# instance fields
.field private ignoreSoftInput:Z

.field private mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsShowDot:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryTextColor:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mThemeColor:I

.field private mTips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsPanle:Landroid/widget/LinearLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleLayoutHeight:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$layout;->mc_empty_view:I

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 224
    .local v5, "view":Landroid/view/View;
    sget v6, Lcom/meizu/common/R$id;->empty_image:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    .line 226
    sget v6, Lcom/meizu/common/R$id;->empty_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    .line 227
    sget v6, Lcom/meizu/common/R$id;->empty_summary:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    .line 228
    sget v6, Lcom/meizu/common/R$id;->empty_tips_panel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    .line 229
    sget v6, Lcom/meizu/common/R$id;->titleDivider:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    .line 230
    sget v6, Lcom/meizu/common/R$id;->content_panel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    .line 231
    sget v6, Lcom/meizu/common/R$id;->layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    .line 232
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EmptyView;->addView(Landroid/view/View;)V

    .line 233
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 235
    .local v3, "imageLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v6}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    .local v1, "contentLP":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v6, Lcom/meizu/common/R$styleable;->EmptyView:[I

    sget v7, Lcom/meizu/common/R$attr;->MeizuCommon_EmptyViewStyle:I

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcTopMarginOfImage:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 241
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcTopMarginOfTips:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 244
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/meizu/common/R$dimen;->mc_empty_content_panel_max_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 247
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcSrcOfImage:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 248
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 252
    :goto_0
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcTitle:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 253
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcSummary:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 254
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcTextOfTips:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "tip":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$styleable;->EmptyView_mcTips:I

    invoke-static {v6, v0, v7}, Lcom/meizu/common/util/ResourceUtils;->getStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 256
    sget v6, Lcom/meizu/common/R$styleable;->EmptyView_mcIsShowDot:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 257
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 262
    sget v6, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    .line 263
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/meizu/common/R$styleable;->EmptyView_mcSummaryTextAppearance:I

    sget v9, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView_Summary:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 264
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/meizu/common/R$styleable;->EmptyView_mcTitleTextAppearance:I

    sget v9, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView_Title:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 265
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    if-eqz v4, :cond_1

    .line 270
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/lang/String;)V

    .line 273
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    invoke-direct {p0}, Lcom/meizu/common/widget/EmptyView;->viewControl()V

    .line 276
    return-void

    .line 249
    .end local v4    # "tip":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 268
    .restart local v4    # "tip":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EmptyView;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method private viewControl()V
    .locals 6

    .prologue
    .line 293
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    :cond_1
    :goto_1
    return-void

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_empty_tip_line_space:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 297
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_empty_title_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/EmptyView;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 280
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 281
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 285
    .local v1, "parentlayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayoutHeight:I

    .line 286
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    .line 287
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    iget v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayoutHeight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 289
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-void

    .line 282
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "parentlayout":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method public setContentPanelMaxWidth(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 555
    return-void
.end method

.method public setEmptyMarginBottom(I)V
    .locals 2
    .param p1, "bottom"    # I

    .prologue
    .line 477
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    .line 478
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 479
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 480
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    return-void
.end method

.method public setEmptyMarginTop(I)V
    .locals 2
    .param p1, "top"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 468
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 469
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    return-void
.end method

.method public setIgnoreSoftInput(Z)V
    .locals 4
    .param p1, "ignoreSoftInput"    # Z

    .prologue
    const/4 v3, 0x0

    .line 507
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->ignoreSoftInput:Z

    .line 508
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 509
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 513
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_keyboard_approximate_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 511
    .local v0, "keyboardHeight":I
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIsShowDot(Z)V
    .locals 2
    .param p1, "isShowDot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 541
    iget-boolean v1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    .line 542
    .local v0, "changed":Z
    :cond_0
    if-nez v0, :cond_1

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_1
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 544
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 427
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 429
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 430
    .local v0, "otb":Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_2

    .line 451
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 455
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 459
    :cond_0
    :goto_1
    return-void

    .line 423
    .end local v0    # "otb":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    return-void

    .line 436
    .restart local v0    # "otb":Landroid/view/ViewTreeObserver;
    :cond_2
    new-instance v1, Lcom/meizu/common/widget/EmptyView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EmptyView$1;-><init>(Lcom/meizu/common/widget/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTextOfTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "tips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 342
    return-void

    .line 339
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTextOfTips(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, -0x2

    const/4 v12, 0x0

    .line 372
    if-eqz p1, :cond_1

    move-object v10, p1

    :goto_0
    iput-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 373
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    .line 375
    :cond_0
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-void

    .line 372
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 379
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 381
    .local v6, "lpTipsContainer":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v4, "lpDotImage":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 386
    .local v5, "lpTipText":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$dimen;->mc_empty_tip_margin_Bottom:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 387
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$dimen;->mc_empty_dot_margin_top:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 388
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$dimen;->mc_empty_dot_margin_right:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 390
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$dimen;->mc_empty_tip_line_space:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v3, v10

    .line 391
    .local v3, "lineSpace":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$drawable;->mc_default_word_point:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    .local v0, "dot":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 411
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 412
    :cond_3
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :goto_2
    return-void

    .line 392
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 393
    .local v7, "tip":Ljava/lang/String;
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 394
    .local v8, "tipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x30

    .line 396
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 397
    iget-boolean v10, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-nez v10, :cond_5

    .line 403
    :goto_3
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v9, "tv":Landroid/widget/TextView;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/meizu/common/R$style;->TextAppearance_Small_EmptyView:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 406
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 407
    invoke-virtual {v9, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 408
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 398
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_5
    new-instance v1, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 399
    .local v1, "dotView":Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 411
    .end local v1    # "dotView":Landroid/widget/ImageView;
    .end local v7    # "tip":Ljava/lang/String;
    .end local v8    # "tipContainer":Landroid/widget/LinearLayout;
    :cond_6
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 494
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 532
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 533
    return-void
.end method
