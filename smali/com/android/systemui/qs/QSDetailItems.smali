.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$H;,
        Lcom/android/systemui/qs/QSDetailItems$Item;,
        Lcom/android/systemui/qs/QSDetailItems$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItems:Landroid/widget/LinearLayout;

.field private mItemsVisible:Z

.field private mLoading:Landroid/view/View;

.field private mLoadingVisible:Z

.field private mMaxItems:I

.field private mMinHeightSpacer:Landroid/view/View;

.field private mRightIconPadding:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetLoadingVisible(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v0, "QSDetailItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "QSDetailItems"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private bind(Lcom/android/systemui/qs/QSDetailItems$Item;Landroid/view/View;)V
    .locals 11
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 194
    if-nez p2, :cond_0

    .line 195
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v9, 0x7f04008e

    invoke-virtual {v5, v9, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 196
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    :cond_0
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->invisible:Z

    if-eqz v5, :cond_2

    const v5, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 201
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v5, 0x1020006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 203
    .local v1, "iv":Landroid/widget/ImageView;
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewOverlay;->clear()V

    .line 205
    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 206
    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v9, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 207
    iget-object v10, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 206
    invoke-virtual {v5, v6, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    invoke-virtual {v1}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    iget-object v9, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v9}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_1
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    if-nez v5, :cond_4

    move v5, v7

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    const v5, 0x1020016

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 212
    .local v3, "title":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v5, 0x1020010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 214
    .local v2, "summary":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    .line 215
    .local v4, "twoLines":Z
    :goto_3
    if-eqz v4, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 217
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->rightIcon:I

    invoke-virtual {v3, v6, v6, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 218
    iget v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mRightIconPadding:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 220
    if-eqz v4, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    if-eqz v4, :cond_8

    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 223
    if-eqz v4, :cond_9

    const v5, 0x7f0b03b6

    .line 222
    :goto_7
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 224
    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$1;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v5, 0x1020008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    .local v0, "disconnect":Landroid/widget/ImageView;
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz v5, :cond_a

    :goto_8
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    return-void

    .line 199
    .end local v0    # "disconnect":Landroid/widget/ImageView;
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "summary":Landroid/widget/TextView;
    .end local v3    # "title":Landroid/widget/TextView;
    .end local v4    # "twoLines":Z
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 201
    :cond_3
    const/4 v5, 0x4

    goto/16 :goto_1

    .restart local v1    # "iv":Landroid/widget/ImageView;
    :cond_4
    move v5, v6

    .line 210
    goto :goto_2

    .line 214
    .restart local v2    # "summary":Landroid/widget/TextView;
    .restart local v3    # "title":Landroid/widget/TextView;
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "twoLines":Z
    goto :goto_3

    .line 215
    :cond_6
    const/4 v5, 0x2

    goto :goto_4

    :cond_7
    move v5, v7

    .line 220
    goto :goto_5

    :cond_8
    move-object v5, v8

    .line 221
    goto :goto_6

    .line 223
    :cond_9
    const v5, 0x7f0b03b5

    goto :goto_7

    .restart local v0    # "disconnect":Landroid/widget/ImageView;
    :cond_a
    move v6, v7

    .line 233
    goto :goto_8
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convert"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/android/systemui/qs/QSDetailItems;

    .end local p1    # "convert":Landroid/view/View;
    return-object p1

    .line 75
    .restart local p1    # "convert":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008f

    .line 76
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 165
    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 5
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/4 v2, 0x0

    .line 170
    if-eqz p1, :cond_1

    array-length v3, p1

    iget v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mMaxItems:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 172
    .local v1, "itemCount":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setMinHeightInItems(I)V

    .line 175
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "itemCount":I
    goto :goto_0

    .line 179
    .restart local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 180
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/qs/QSDetailItems;->bind(Lcom/android/systemui/qs/QSDetailItems$Item;Landroid/view/View;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->refreshFont()V

    .line 169
    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 185
    :cond_2
    return-void
.end method

.method private handleSetLoadingVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 322
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void

    .line 323
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public hideEmptyState()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 140
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f0b03bc

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 109
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "item":Landroid/view/View;
    const v3, 0x1020016

    .line 112
    const v4, 0x7f0b03ba

    .line 111
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 113
    const v3, 0x1020010

    .line 114
    const v4, 0x7f0b03bb

    .line 113
    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "item":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 146
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 144
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    const v1, 0x7f0f01d9

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "listWrapper":Landroid/view/View;
    const v1, 0x7f0f01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0f01da

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mMinHeightSpacer:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    const v2, 0x7f100037

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mMaxItems:I

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mRightIconPadding:I

    .line 80
    return-void
.end method

.method public refreshEmptyState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mMaxItems:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    .local v0, "itemCount":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    return-void

    .line 331
    .end local v0    # "itemCount":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "itemCount":I
    goto :goto_0

    .line 332
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public refreshFont()V
    .locals 9

    .prologue
    const v8, 0x1020016

    const v7, 0x1020010

    const/4 v5, 0x0

    .line 248
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 250
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "item":Landroid/view/View;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 252
    check-cast v4, Landroid/graphics/Typeface;

    invoke-static {v2, v8, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    move-object v4, v5

    .line 253
    check-cast v4, Landroid/graphics/Typeface;

    invoke-static {v2, v7, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 254
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    .line 249
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const-string/jumbo v4, "sans-serif-medium"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 257
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-static {v2, v8, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 258
    invoke-static {v2, v7, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 259
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 247
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .prologue
    const/4 v1, 0x2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public setEmptyState(II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void

    :cond_0
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public setLoadingVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 317
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    return-void

    :cond_0
    move v0, v1

    .line 317
    goto :goto_0
.end method

.method public setMinHeightInItems(I)V
    .locals 3
    .param p1, "minHeightInItems"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mMinHeightSpacer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    const v2, 0x7f0b03b5

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mMinHeightSpacer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 118
    return-void
.end method
