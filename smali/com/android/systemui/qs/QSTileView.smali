.class public Lcom/android/systemui/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileView$H;
    }
.end annotation


# static fields
.field private static final CONDENSED:Landroid/graphics/Typeface;


# instance fields
.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field private final mDivider:Landroid/view/View;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

.field private final mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/android/systemui/qs/QSTileView$H;

.field private final mIcon:Landroid/view/View;

.field private final mIconSizePx:I

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I

.field private mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

.field private final mTopBackgroundView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSTileView;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "sans-serif-condensed"

    .line 60
    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v2, Lcom/android/systemui/qs/QSTileView$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileView$H;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b02bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    .line 88
    const v2, 0x7f0b03b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 89
    const v2, 0x7f0b03b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    .line 91
    const v2, 0x7f0b03ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 90
    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 96
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 98
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createIcon()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 103
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    .line 104
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    const v3, 0x7f0a00ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    const v2, 0x7f0b03aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    .local v0, "dh":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 82
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 325
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 363
    return-void
.end method

.method private recreateLabel()V
    .locals 11

    .prologue
    const v10, 0x1020016

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "labelText":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 143
    .local v2, "labelDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 145
    .local v3, "labelText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 146
    iput-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 148
    .end local v3    # "labelText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "labelText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSDualTileLabel;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 154
    .local v2, "labelDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 155
    iput-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 157
    .end local v2    # "labelDescription":Ljava/lang/CharSequence;
    .end local v3    # "labelText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 159
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "sans-serif-medium"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 161
    .local v1, "font":Landroid/graphics/Typeface;
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v5, :cond_4

    .line 162
    new-instance v5, Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 163
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v10}, Lcom/android/systemui/qs/QSDualTileLabel;->setId(I)V

    .line 165
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v6, 0x7f020016

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setPartialBackgroundResource(I)V

    .line 169
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v6, 0x7f0204dc

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(I)V

    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v6, 0x7f0a00cf

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    .line 173
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v7, v7, v7, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setPadding(IIII)V

    .line 175
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 178
    const v6, 0x7f0b02bc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 177
    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 179
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setClickable(Z)V

    .line 180
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    new-instance v6, Lcom/android/systemui/qs/QSTileView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/QSTileView$1;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setFocusable(Z)V

    .line 190
    if-eqz v3, :cond_2

    .line 191
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_2
    if-eqz v2, :cond_3

    .line 194
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    :cond_3
    const v5, 0x7f0b028a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, "dh":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_0
    return-void

    .line 199
    .end local v0    # "dh":I
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 200
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setId(I)V

    .line 201
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v6, 0x7f0a00cf

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 206
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 209
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 212
    const v6, 0x7f0b02bc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 211
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 214
    if-eqz v3, :cond_5

    .line 215
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_5
    const v5, 0x7f0b028b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 218
    .restart local v0    # "dh":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 357
    div-int/lit8 v0, p1, 0x2

    .line 358
    .local v0, "cx":I
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 359
    .local v1, "cy":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 360
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 355
    return-void

    .line 358
    .end local v1    # "cy":I
    .end local v2    # "rad":I
    :cond_0
    div-int/lit8 v1, p2, 0x2

    .restart local v1    # "cy":I
    goto :goto_0
.end method

.method private updateTopPadding()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 116
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/QsImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/phone/QsImageView;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 290
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 281
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 282
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 279
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x7f0b02bc

    .line 131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v3

    .line 331
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 333
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    invoke-static {v4, v6, v5}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 336
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    add-int/lit8 v2, v4, 0x0

    .line 337
    .local v2, "top":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v2, v4

    .line 338
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 339
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 340
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 341
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 345
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v4

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 329
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 308
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 309
    .local v3, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 310
    .local v0, "h":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v2

    .line 311
    .local v2, "iconSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 319
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v4, v5

    .line 318
    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 320
    .local v1, "heightSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->measure(II)V

    .line 321
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->setMeasuredDimension(II)V

    .line 307
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public refreshFont()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    goto :goto_0

    .line 442
    :cond_1
    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 443
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public setClickEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDualTileLabel;->setSoundEffectsEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz p1, :cond_2

    const v0, 0x7f020016

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setPartialBackgroundResource(I)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz p1, :cond_0

    const v1, 0x7f0204dc

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(I)V

    .line 472
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 477
    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileView;->setSoundEffectsEnabled(Z)V

    goto :goto_1
.end method

.method public setDual(Z)Z
    .locals 6
    .param p1, "dual"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 223
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eq p1, v3, :cond_2

    const/4 v0, 0x1

    .line 224
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 233
    :cond_0
    if-eqz p1, :cond_3

    .line 234
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/qs/QSTileView$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSTileView$2;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setMotionEventSplittingEnabled(Z)V

    .line 244
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 246
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 264
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 265
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setFocusable(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->postInvalidate()V

    .line 268
    return v0

    .line 223
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 254
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 255
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 266
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 10
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v9, 0x7f0f0017

    const v8, 0x7f0f0002

    const/16 v7, 0x2710

    const/4 v6, 0x0

    .line 382
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 385
    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_2

    .line 386
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 389
    :cond_2
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 390
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    .line 391
    .local v1, "bg":Landroid/graphics/drawable/LevelListDrawable;
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    if-eqz v3, :cond_7

    .line 392
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 393
    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_3

    .line 396
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    .line 397
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 398
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    const-string/jumbo v4, "level"

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    filled-new-array {v6, v7}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 403
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 406
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 418
    .end local v0    # "b":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bg":Landroid/graphics/drawable/LevelListDrawable;
    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v9, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 420
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->intermediate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 421
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto/16 :goto_0

    .line 384
    :cond_6
    const/4 v2, 0x0

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 409
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bg":Landroid/graphics/drawable/LevelListDrawable;
    :cond_7
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 410
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5

    .line 411
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mTileTransitionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_2
.end method
