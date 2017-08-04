.class public Lcom/meizu/common/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "GuidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    }
.end annotation


# static fields
.field public static final CORAL:I = 0x3

.field public static final DODGERBLUE:I = 0x0

.field public static final FIREBRICK:I = 0x2

.field public static final GUIDE_LAYOUT_MODE_AUTO:I = 0x6

.field public static final GUIDE_LAYOUT_MODE_CENTER:I = 0x3

.field public static final GUIDE_LAYOUT_MODE_CENTER_HORIZONTAL:I = 0x1

.field public static final GUIDE_LAYOUT_MODE_CENTER_VERTICAL:I = 0x2

.field public static final GUIDE_LAYOUT_MODE_DOWN:I = 0x5

.field public static final GUIDE_LAYOUT_MODE_UP:I = 0x4

.field public static final LIMEGREEN:I = 0x1

.field public static final TOMATO:I = 0x4


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mArrowOffx:I

.field private mContext:Landroid/content/Context;

.field private mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

.field private mLayoutMode:I

.field private mOffX:I

.field private mOffY:I

.field private mParentView:Landroid/view/View;

.field private mPopX:I

.field private mPopY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x6

    .line 141
    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 167
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/GuidePopupWindow;->setTouchable(Z)V

    .line 169
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 170
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/GuidePopupWindow;->setClippingEnabled(Z)V

    .line 171
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->setWindowLayoutMode(II)V

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 174
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget-object v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow:[I

    sget v1, Lcom/meizu/common/R$attr;->MeizuCommon_GuidePopupWindow:I

    invoke-virtual {p1, v2, v0, v1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 180
    .local v7, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundLeft:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 182
    .local v3, "leftDrawable":Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowDown:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 184
    .local v4, "middleDrawable":Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundMidArrowUp:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 186
    .local v5, "middleUpDrawable":Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/meizu/common/R$styleable;->GuidePopupWindow_mcGPWBackGroundRight:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 188
    .local v6, "rightDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    if-nez v3, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_guide_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_guide_middle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_guide_middle_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_guide_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 201
    :goto_0
    new-instance v0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .line 203
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    .line 204
    return-void

    .line 189
    :cond_1
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method private computeGuidePosition([ILandroid/view/View;)V
    .locals 11
    .param p1, "bounds"    # [I
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 379
    if-eqz p2, :cond_0

    .line 383
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v7, v7}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    .line 385
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$100(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 387
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$100(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 391
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 394
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 397
    .local v1, "base":I
    :goto_0
    new-array v2, v9, [I

    .line 398
    .local v2, "position":[I
    invoke-direct {p0, p2, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPositon(Landroid/view/View;[I)V

    .line 400
    aget v4, p1, v9

    aget v5, p1, v7

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    .line 407
    aget v4, v2, v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aget v5, p1, v7

    add-int/2addr v5, v1

    if-lt v4, v5, :cond_3

    .line 411
    :goto_1
    aget v4, v2, v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    aget v5, p1, v9

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_4

    .line 416
    :goto_2
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 431
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 435
    aget v4, v2, v8

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, p1, v8

    if-lt v4, v5, :cond_5

    .line 440
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 443
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    .line 448
    :goto_3
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    add-int v0, v4, v5

    .line 450
    .local v0, "aoff":I
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_6

    .line 456
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v4

    if-lt v0, v4, :cond_7

    .line 460
    :goto_4
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 461
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 463
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-eq v4, v8, :cond_8

    .line 466
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-eq v4, v9, :cond_9

    .line 470
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-eq v4, v10, :cond_a

    .line 478
    :goto_5
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowPosition(I)V

    .line 479
    return-void

    .line 380
    .end local v0    # "aoff":I
    .end local v1    # "base":I
    .end local v2    # "position":[I
    .end local v3    # "w":I
    :cond_0
    return-void

    .line 392
    .restart local v3    # "w":I
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v5

    sub-int v1, v4, v5

    .restart local v1    # "base":I
    goto/16 :goto_0

    .line 401
    .restart local v2    # "position":[I
    :cond_2
    aget v4, p1, v7

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 402
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getCloseIconWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V

    .line 405
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v7, v7}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    goto/16 :goto_2

    .line 408
    :cond_3
    aget v4, p1, v7

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_1

    .line 412
    :cond_4
    aget v4, p1, v9

    sub-int/2addr v4, v1

    aget v5, v2, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_2

    .line 418
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 421
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto/16 :goto_3

    .line 425
    :pswitch_2
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 426
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto/16 :goto_3

    .line 437
    :cond_5
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 438
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto/16 :goto_3

    .line 453
    .restart local v0    # "aoff":I
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v4, v5

    goto/16 :goto_4

    .line 457
    :cond_7
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v0

    goto/16 :goto_4

    .line 464
    :cond_8
    aget v4, p1, v7

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_5

    .line 467
    :cond_9
    aget v4, p1, v8

    aget v5, p1, v10

    aget v6, p1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v8

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_5

    .line 471
    :cond_a
    aget v4, p1, v7

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 473
    aget v4, p1, v8

    aget v5, p1, v10

    aget v6, p1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v8

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_5

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getAnchorPositon(Landroid/view/View;[I)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 528
    return-void

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public disableArrow(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->disableArrow(Z)V

    .line 581
    return-void
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setArrowPosition(I)V
    .locals 0
    .param p1, "offx"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    .line 539
    return-void
.end method

.method public setColorStyle(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 610
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 487
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 571
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setText(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .prologue
    .line 898
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setTextSize(I)V

    .line 899
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 495
    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1
    .param p1, "boundRect"    # Landroid/graphics/Rect;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 305
    if-eqz p2, :cond_0

    .line 308
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 309
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/graphics/Rect;Landroid/view/View;II)V

    .line 310
    return-void

    .line 306
    :cond_0
    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;II)V
    .locals 3
    .param p1, "boundRect"    # Landroid/graphics/Rect;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "offx"    # I
    .param p4, "offy"    # I

    .prologue
    .line 351
    if-eqz p2, :cond_0

    .line 355
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 356
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 358
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    const/4 v1, 0x4

    .line 360
    new-array v0, v1, [I

    .local v0, "bounds":[I
    const/4 v1, 0x0

    .line 361
    iget v2, p1, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 362
    iget v2, p1, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 363
    iget v2, p1, Landroid/graphics/Rect;->right:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 364
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    aput v2, v0, v1

    .line 366
    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 368
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 369
    return-void

    .line 352
    .end local v0    # "bounds":[I
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 218
    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    const/4 v1, 0x4

    .line 223
    new-array v0, v1, [I

    .line 224
    .local v0, "bounds":[I
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v1, v2, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 226
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 228
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 229
    return-void

    .line 219
    .end local v0    # "bounds":[I
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offx"    # I
    .param p3, "offy"    # I

    .prologue
    const/4 v5, 0x0

    .line 327
    if-eqz p1, :cond_0

    .line 331
    iput p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 332
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 334
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 335
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 336
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 337
    .local v3, "screenWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v2, "screenHeight":I
    const/4 v4, 0x4

    .line 339
    new-array v0, v4, [I

    .line 340
    .local v0, "bounds":[I
    aput v5, v0, v5

    const/4 v4, 0x1

    .line 341
    aput v5, v0, v4

    const/4 v4, 0x2

    .line 342
    aput v3, v0, v4

    const/4 v4, 0x3

    .line 343
    aput v2, v0, v4

    .line 345
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 347
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 348
    return-void

    .line 328
    .end local v0    # "bounds":[I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 244
    if-eqz p2, :cond_0

    .line 247
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 248
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    .line 249
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;II)V

    .line 250
    return-void

    .line 245
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "offx"    # I
    .param p4, "offy"    # I

    .prologue
    .line 274
    if-eqz p2, :cond_0

    .line 278
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 279
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 281
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 282
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    const/4 v1, 0x4

    .line 284
    new-array v0, v1, [I

    .line 285
    .local v0, "bounds":[I
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-static {v1, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 287
    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 289
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 290
    return-void

    .line 275
    .end local v0    # "bounds":[I
    :cond_0
    return-void
.end method

.method public update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 601
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 602
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    return-void
.end method

.method public updatePosition()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 502
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 506
    new-array v0, v2, [I

    .line 507
    .local v0, "bounds":[I
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    invoke-static {v2, v3, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 509
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    const/4 v2, 0x2

    .line 511
    new-array v1, v2, [I

    .line 512
    .local v1, "position":[I
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPositon(Landroid/view/View;[I)V

    .line 513
    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    const/4 v3, 0x0

    aget v3, v1, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->update(IIII)V

    .line 515
    return-void

    .line 503
    .end local v0    # "bounds":[I
    .end local v1    # "position":[I
    :cond_0
    return-void
.end method
