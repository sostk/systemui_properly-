.class public Lcom/meizu/common/widget/FoldableTextView;
.super Landroid/widget/TextView;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;,
        Lcom/meizu/common/widget/FoldableTextView$ValueHolder;,
        Lcom/meizu/common/widget/FoldableTextView$FoldingListener;,
        Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "FoldableTextView"


# instance fields
.field private layout:Landroid/text/Layout;

.field private mAlignViewEdge:Z

.field private mAnimatorFraction:Ljava/lang/Float;

.field private mClickToFold:Z

.field private mDuration:I

.field private mEllipseText:Ljava/lang/CharSequence;

.field private mFoldLineMax:I

.field private mFoldedText:Ljava/lang/CharSequence;

.field private mIsAnimating:Z

.field private mIsForbidden:Z

.field private mIsfolded:Z

.field private mLinkColor:I

.field private mLinkHit:Z

.field private mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMoreText:Ljava/lang/CharSequence;

.field private mNonClicks:Z

.field private mNonSpanClickable:Z

.field private mainText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 189
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_FoldableTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    iput-boolean v7, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 166
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 167
    iput-boolean v7, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 168
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 172
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 173
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    .line 174
    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    const/16 v4, 0xfa

    .line 175
    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 176
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    const/high16 v4, 0x3f800000    # 1.0f

    .line 177
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    .line 178
    iput-boolean v7, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    .line 180
    iput-boolean v7, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 182
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    .line 194
    sget-object v4, Lcom/meizu/common/R$styleable;->FoldableTextView:[I

    sget v6, Lcom/meizu/common/R$style;->Widget_MeizuCommon_FoldableTextView:I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .local v3, "n":I
    const/4 v2, 0x0

    .line 197
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 226
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 230
    :goto_2
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/FoldableTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 231
    invoke-direct {p0, v7}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Z)V

    .line 233
    return-void

    .line 198
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 199
    .local v1, "attr":I
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzTextEllipse:I

    if-eq v1, v4, :cond_2

    .line 201
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzTextUnfold:I

    if-eq v1, v4, :cond_3

    .line 203
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzMaxFoldLine:I

    if-eq v1, v4, :cond_4

    .line 205
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzUnfoldAlignViewEdge:I

    if-eq v1, v4, :cond_5

    .line 207
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzClickToFold:I

    if-eq v1, v4, :cond_6

    .line 209
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzNonSpanClickable:I

    if-eq v1, v4, :cond_7

    .line 211
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzLinkColor:I

    if-eq v1, v4, :cond_8

    .line 215
    sget v4, Lcom/meizu/common/R$styleable;->FoldableTextView_mzIsFold:I

    if-eq v1, v4, :cond_a

    .line 197
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    goto :goto_3

    .line 202
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_3

    .line 204
    :cond_4
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    goto :goto_3

    .line 206
    :cond_5
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    goto :goto_3

    .line 208
    :cond_6
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    goto :goto_3

    .line 210
    :cond_7
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    goto :goto_3

    .line 212
    :cond_8
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 213
    iget v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    if-nez v4, :cond_1

    .line 214
    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_4
    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4

    .line 216
    :cond_a
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    goto :goto_3

    .line 221
    .end local v1    # "attr":I
    :cond_b
    sget v4, Lcom/meizu/common/R$string;->more_item_label:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "\u2025"

    .line 227
    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Ljava/lang/Float;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 159
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    return v0
.end method

.method private foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 421
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 422
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 423
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 425
    .local v0, "tmpLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-gt v2, v3, :cond_2

    .line 428
    :cond_0
    return-object p1

    .line 421
    .end local v0    # "tmpLayout":Landroid/text/DynamicLayout;
    .end local v1    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_1
    return-object p1

    .line 425
    .restart local v0    # "tmpLayout":Landroid/text/DynamicLayout;
    .restart local v1    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-eqz v2, :cond_0

    .line 431
    iget v11, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 440
    .local v11, "lineMax":I
    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v0, v2}, Landroid/text/DynamicLayout;->getLineVisibleEnd(I)I

    move-result v10

    .line 441
    .local v10, "en":I
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 444
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 446
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 448
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 449
    .local v8, "addIndex":I
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    const-string/jumbo v3, "sans-serif-medium"

    invoke-direct {v2, p0, v3, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;-><init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 454
    if-gtz v10, :cond_6

    .line 460
    :cond_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    if-nez v2, :cond_8

    .line 470
    :cond_4
    :goto_1
    return-object v1

    .line 442
    .end local v8    # "addIndex":I
    :cond_5
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 454
    .restart local v8    # "addIndex":I
    :cond_6
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-le v2, v11, :cond_3

    .line 455
    move v9, v10

    .line 457
    .local v9, "delIndex":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 458
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 459
    if-lez v9, :cond_4

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-le v2, v11, :cond_4

    goto :goto_2

    .end local v9    # "delIndex":I
    :cond_7
    const-string/jumbo v2, " "

    .line 462
    invoke-virtual {v1, v8, v8, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 463
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-gt v2, v11, :cond_9

    .line 467
    add-int/lit8 v8, v8, 0x1

    .line 461
    :cond_8
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-eq v2, v11, :cond_7

    goto :goto_1

    .line 464
    :cond_9
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private initHeight(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 620
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 621
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 624
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x0

    .line 638
    .local v0, "lineSpacing":F
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 641
    :goto_0
    return-void

    .line 621
    .end local v0    # "lineSpacing":F
    :cond_0
    return-void

    .line 625
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    .line 626
    return-void

    .line 639
    .restart local v0    # "lineSpacing":F
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v2, v1

    add-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLineSpacingExtra()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_0
.end method

.method private setOnClickListener(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 506
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p0, p0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private startAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 561
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-eqz v2, :cond_0

    .line 562
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    .line 563
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;-><init>(Lcom/meizu/common/widget/FoldableTextView;Lcom/meizu/common/widget/FoldableTextView$1;)V

    .local v0, "mValueHolder":Lcom/meizu/common/widget/FoldableTextView$ValueHolder;
    const-string/jumbo v3, "height"

    const/4 v2, 0x2

    .line 565
    new-array v4, v2, [I

    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    :goto_0
    aput v2, v4, v5

    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    :goto_1
    aput v2, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 566
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 567
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/FoldableTextView$1;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/FoldableTextView$2;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 604
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 605
    return-void

    .line 561
    .end local v0    # "mValueHolder":Lcom/meizu/common/widget/FoldableTextView$ValueHolder;
    .end local v1    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 565
    .restart local v0    # "mValueHolder":Lcom/meizu/common/widget/FoldableTextView$ValueHolder;
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_1
.end method


# virtual methods
.method public changeFoldState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    if-nez v0, :cond_0

    .line 534
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    if-eqz v0, :cond_4

    .line 538
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v0, :cond_5

    .line 551
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-nez v0, :cond_8

    .line 554
    :cond_2
    iput-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 555
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    if-nez v0, :cond_9

    .line 558
    :cond_3
    :goto_0
    return-void

    .line 535
    :cond_4
    return-void

    .line 540
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-nez v0, :cond_7

    .line 543
    :cond_6
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 545
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 546
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    if-eqz v0, :cond_3

    .line 547
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0

    .line 540
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 541
    return-void

    .line 551
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v2}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    return-void

    .line 555
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v0, v1, :cond_3

    .line 556
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0
.end method

.method public getFoldLineMax()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    return v0
.end method

.method public getFoldStatus()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method public getLinkColor()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method public getMoreText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStrEllipse()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public isAlignViewEdge()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    return v0
.end method

.method public isClickToFold()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    return v0
.end method

.method public isNonSpanClickable()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->changeFoldState()V

    .line 527
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/FoldableTextView;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 396
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 398
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    .line 407
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v0, :cond_4

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 409
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    .line 410
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_3

    .line 402
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    .line 416
    :goto_1
    return-void

    .line 400
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 407
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-lez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 413
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 699
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    .line 700
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 701
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    if-nez v1, :cond_1

    .line 707
    :cond_0
    return v0

    .line 701
    :cond_1
    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    if-nez v1, :cond_0

    .line 702
    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    return v1
.end method

.method public setClickToFold(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 315
    if-nez p1, :cond_0

    .line 318
    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    goto :goto_0
.end method

.method public setFoldDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 644
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 645
    return-void
.end method

.method public setFoldStatus(Z)V
    .locals 1
    .param p1, "fold"    # Z

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eq v0, p1, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 366
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 367
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    goto :goto_0
.end method

.method public setFoldText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "strEllipse"    # Ljava/lang/String;
    .param p2, "strUnfold"    # Ljava/lang/String;
    .param p3, "alignViewEdge"    # Z

    .prologue
    .line 244
    iput-boolean p3, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 245
    if-nez p1, :cond_0

    const-string/jumbo v0, "\u2025"

    .line 248
    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 250
    :goto_0
    if-nez p2, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->more_item_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 257
    :goto_1
    return-void

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 251
    :cond_1
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setFolding(ILcom/meizu/common/widget/FoldableTextView$FoldingListener;)V
    .locals 2
    .param p1, "lineMax"    # I
    .param p2, "l"    # Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    .prologue
    .line 295
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 296
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 298
    return-void
.end method

.method public setForbidden(Z)V
    .locals 0
    .param p1, "forbidden"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    .line 740
    return-void
.end method

.method public setLinkColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 338
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    .line 339
    return-void
.end method

.method public setNonSpanClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 718
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 380
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 390
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    .line 382
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 383
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v0, :cond_2

    .line 386
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    goto :goto_0

    .line 384
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    goto :goto_0
.end method
