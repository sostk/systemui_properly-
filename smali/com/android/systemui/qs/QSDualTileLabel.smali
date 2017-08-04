.class public Lcom/android/systemui/qs/QSDualTileLabel;
.super Landroid/widget/LinearLayout;
.source "QSDualTileLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDualTileLabel$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFirstLine:Landroid/widget/TextView;

.field private final mFirstLineCaret:Landroid/widget/ImageView;

.field private final mFirstLineLayout:Landroid/widget/LinearLayout;

.field private final mHorizontalPaddingPx:I

.field private final mSecondLine:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;

.field private final mUpdateText:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->updateText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x11

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v3, Lcom/android/systemui/qs/QSDualTileLabel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSDualTileLabel$1;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    .line 59
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->setOrientation(I)V

    .line 61
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    const v4, 0x7f0b03ae

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->initTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    .line 70
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 73
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 76
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 77
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/qs/QSDualTileLabel;->newLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    .line 80
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 83
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b028b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 84
    .local v0, "dh":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p1, v4}, Lcom/flyme/systemui/statusbar/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->setGravity(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->initTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 97
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    new-instance v3, Lcom/android/systemui/qs/QSDualTileLabel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSDualTileLabel$2;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 56
    return-void
.end method

.method private initTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 158
    return-object v0
.end method

.method private static newLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    return-object v0
.end method

.method private rescheduleUpdateText()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method private updateText()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    sub-int/2addr v2, v3

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getPaddingLeft()I

    move-result v3

    .line 208
    sub-int/2addr v2, v3

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getPaddingRight()I

    move-result v3

    .line 208
    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 211
    .local v0, "maxWidth":F
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 216
    .local v1, "width":F
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstLineCaret(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 140
    .local v1, "h":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    .end local v1    # "h":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 134
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setPartialBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 162
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "newText":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "newText":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 161
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 178
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 172
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 184
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
