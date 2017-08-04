.class public Lcom/meizu/common/widget/TabTopLayout;
.super Lcom/meizu/common/widget/TabLayout;
.source "TabTopLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultMargin:I

.field private mDividerHeight:I

.field private mDividerView:Landroid/view/View;

.field private mHeaderHeight:I

.field private mHeaderView:Landroid/view/View;

.field private mIsAttachTop:Z

.field private mLRMargin:I

.field private mOnHeaderScrollListener:Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;

.field private mParentLayoutView:Landroid/view/View;

.field private mScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/meizu/common/widget/TabTopLayout;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/TabTopLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    .line 23
    iput v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    const/16 v0, 0x14

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDefaultMargin:I

    .line 27
    iput v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderHeight:I

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    .line 35
    iput-boolean v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    const v1, -0x3d3d3e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TabTopLayout;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method private dragView(I)V
    .locals 5
    .param p1, "t"    # I

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Lcom/meizu/common/widget/TabTopLayout;->getHeaderHeight()I

    move-result v0

    .line 220
    .local v0, "headerHeight":I
    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 222
    .local v1, "top":I
    if-gez p1, :cond_2

    .line 231
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    if-nez v2, :cond_5

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    if-ge p1, v0, :cond_0

    .line 223
    invoke-direct {p0, v4, p1}, Lcom/meizu/common/widget/TabTopLayout;->scrollToView(II)V

    .line 224
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-lt v1, v2, :cond_4

    .line 227
    :cond_3
    :goto_1
    sub-int v2, v0, p1

    iget v3, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-lt v2, v3, :cond_1

    .line 228
    iput-boolean v4, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    goto :goto_0

    .line 224
    :cond_4
    iget-boolean v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    if-nez v2, :cond_3

    .line 225
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    goto :goto_1

    .line 232
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-ge v1, v2, :cond_1

    .line 233
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    goto :goto_0
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 190
    iget v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderHeight:I

    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private initDividerView()V
    .locals 5

    .prologue
    .line 174
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TabTopLayout;->removeView(Landroid/view/View;)V

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/TabTopLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    iget v4, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    div-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/TabTopLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    sget-object v1, Lcom/meizu/common/widget/TabTopLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "drawDivider"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushView(I)V
    .locals 4
    .param p1, "t"    # I

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Lcom/meizu/common/widget/TabTopLayout;->getHeaderHeight()I

    move-result v0

    .line 197
    .local v0, "headerHeight":I
    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 199
    .local v1, "top":I
    if-gez p1, :cond_2

    .line 205
    :cond_0
    sub-int v2, p1, v0

    iget v3, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-ge v2, v3, :cond_3

    .line 209
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    if-nez v2, :cond_4

    .line 215
    :cond_1
    :goto_1
    return-void

    .line 199
    :cond_2
    if-ge p1, v0, :cond_0

    .line 200
    invoke-direct {p0, v3, p1}, Lcom/meizu/common/widget/TabTopLayout;->scrollToView(II)V

    .line 201
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    goto :goto_1

    .line 206
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mIsAttachTop:Z

    goto :goto_0

    .line 210
    :cond_4
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    if-ge v1, v2, :cond_1

    .line 211
    iget v2, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    goto :goto_1
.end method

.method private scrollToView(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mOnHeaderScrollListener:Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mParentLayoutView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/TabTopLayout;->scrollTo(II)V

    .line 170
    :goto_1
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mOnHeaderScrollListener:Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;->onHeaderScroll(II)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mParentLayoutView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/meizu/common/widget/TabLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/TabTopLayout;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public onScroll(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/meizu/common/widget/TabTopLayout;->getHeaderHeight()I

    move-result v0

    .line 140
    .local v0, "headerHeight":I
    sub-int v1, p2, p4

    if-gtz v1, :cond_0

    .line 152
    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    sub-int v1, v0, v1

    if-lt p2, v1, :cond_4

    .line 156
    :goto_0
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/TabTopLayout;->dragView(I)V

    .line 159
    :goto_1
    return-void

    .line 141
    :cond_0
    if-ltz p2, :cond_2

    .line 145
    if-gez p2, :cond_3

    .line 149
    :cond_1
    :goto_2
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/TabTopLayout;->pushView(I)V

    goto :goto_1

    .line 142
    :cond_2
    return-void

    .line 145
    :cond_3
    if-le p2, v0, :cond_1

    .line 146
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    .line 147
    invoke-direct {p0, v2, v0}, Lcom/meizu/common/widget/TabTopLayout;->scrollToView(II)V

    goto :goto_2

    .line 153
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    .line 154
    invoke-direct {p0, v2, v2}, Lcom/meizu/common/widget/TabTopLayout;->scrollToView(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/TabLayout;->onSizeChanged(IIII)V

    .line 51
    invoke-direct {p0}, Lcom/meizu/common/widget/TabTopLayout;->initDividerView()V

    .line 52
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    .line 98
    invoke-direct {p0}, Lcom/meizu/common/widget/TabTopLayout;->initDividerView()V

    .line 99
    return-void
.end method

.method public setDividerParam(IIII)V
    .locals 2
    .param p1, "margin"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # I
    .param p4, "color"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDefaultMargin:I

    .line 115
    if-gtz p2, :cond_0

    .line 118
    :goto_0
    if-gtz p3, :cond_1

    .line 121
    :goto_1
    if-gtz p4, :cond_2

    .line 125
    :goto_2
    iget v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDefaultMargin:I

    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    .line 126
    iget v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mLRMargin:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TabTopLayout;->updateViewParam(I)V

    .line 127
    return-void

    .line 116
    :cond_0
    iput p2, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    goto :goto_0

    .line 119
    :cond_1
    iput p3, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public setHeaderHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderHeight:I

    .line 60
    iget v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderHeight:I

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/meizu/common/widget/TabTopLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mHeaderHeight is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setHeaderView(I)V
    .locals 1
    .param p1, "reId"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/TabTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderView:Landroid/view/View;

    .line 89
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mHeaderView:Landroid/view/View;

    .line 76
    return-void
.end method

.method public setOnHeaderScrollListener(Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;)V
    .locals 0
    .param p1, "onHeaderScrollListener"    # Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mOnHeaderScrollListener:Lcom/meizu/common/widget/TabTopLayout$OnHeaderScrollListener;

    .line 68
    return-void
.end method

.method public setParentLayoutView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/common/widget/TabTopLayout;->mParentLayoutView:Landroid/view/View;

    .line 80
    return-void
.end method

.method public updateViewParam(I)V
    .locals 3
    .param p1, "margin"    # I

    .prologue
    .line 241
    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mScale:I

    div-int/2addr p1, v1

    .line 242
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 248
    iget v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 249
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/meizu/common/widget/TabTopLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 252
    return-void

    .line 245
    :cond_0
    return-void
.end method
