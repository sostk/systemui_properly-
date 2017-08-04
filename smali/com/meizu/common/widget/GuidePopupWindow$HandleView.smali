.class Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# instance fields
.field private layoutResourceId:I

.field private mArrowLeft:I

.field private mArrowPadding:I

.field private mBGLeft:Landroid/view/View;

.field private mBGMiddle:Landroid/view/View;

.field private mBGPadding:Landroid/graphics/Rect;

.field private mBGRight:Landroid/view/View;

.field private mBGVertical:Landroid/widget/LinearLayout;

.field private mCloseIcon:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftMinWidth:I

.field private mMarging:I

.field private mMessageTextView:Landroid/widget/TextView;

.field private mMidMinWidth:I

.field private mMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mResources:Landroid/content/res/Resources;

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightMinWidth:I

.field private mTextSize:I

.field private mWithArrow:Z

.field final synthetic this$0:Lcom/meizu/common/widget/GuidePopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "midDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "midUpDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "rDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    .line 653
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->this$0:Lcom/meizu/common/widget/GuidePopupWindow;

    .line 654
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 622
    sget v3, Lcom/meizu/common/R$layout;->mc_guide_popup_window:I

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->layoutResourceId:I

    .line 628
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    const/4 v3, -0x1

    .line 643
    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    .line 644
    iput-boolean v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    const-string/jumbo v3, "layout_inflater"

    .line 657
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 659
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->layoutResourceId:I

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 660
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    .line 662
    sget v3, Lcom/meizu/common/R$id;->guide_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    .line 663
    sget v3, Lcom/meizu/common/R$id;->guide_close:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    .line 664
    sget v3, Lcom/meizu/common/R$id;->guide_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    .line 665
    sget v3, Lcom/meizu/common/R$id;->guide_bg_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    .line 666
    sget v3, Lcom/meizu/common/R$id;->guide_bg_middle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    .line 667
    sget v3, Lcom/meizu/common/R$id;->guide_bg_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    .line 668
    sget v3, Lcom/meizu/common/R$id;->guide_bg_vertical:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGVertical:Landroid/widget/LinearLayout;

    .line 671
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/meizu/common/R$dimen;->mc_guide_popup_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mTextSize:I

    .line 673
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/meizu/common/R$dimen;->mc_guide_popup_min_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinHeight:I

    .line 676
    iput-object p3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    iput-object p4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 678
    iput-object p5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

    .line 679
    iput-object p6, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 680
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/meizu/common/R$dimen;->mc_guide_popup_arrow_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowPadding:I

    .line 686
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/meizu/common/R$dimen;->mc_guide_popup_marging:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMarging:I

    .line 689
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 690
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 691
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 692
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 693
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 695
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 696
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 697
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 699
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 700
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 701
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 702
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 704
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    .line 705
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    .line 706
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    .line 708
    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    .line 710
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinHeight:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 712
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 713
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 716
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;

    invoke-direct {v4, p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;-><init>(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Lcom/meizu/common/widget/GuidePopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # [I

    .prologue
    .line 620
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getParentBound(Landroid/view/View;[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    .param p1, "x1"    # I

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageWidth(I)V

    return-void
.end method

.method private getParentBound(Landroid/view/View;[I)V
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "bounds"    # [I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 815
    if-eqz p1, :cond_0

    .line 826
    new-array v1, v7, [I

    .line 827
    .local v1, "parentScreenLocation":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 829
    aget v4, v1, v5

    aput v4, p2, v5

    .line 830
    aget v4, v1, v6

    aput v4, p2, v6

    .line 832
    aget v4, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p2, v7

    .line 833
    aget v4, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p2, v8

    .line 835
    .end local v1    # "parentScreenLocation":[I
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 817
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 818
    .local v3, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 820
    .local v2, "screenHeight":I
    aput v5, p2, v5

    .line 821
    aput v5, p2, v6

    .line 823
    aput v3, p2, v7

    .line 824
    aput v2, p2, v8

    goto :goto_0
.end method

.method private getPopMarging()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMarging:I

    return v0
.end method

.method private setMessageWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 839
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 840
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 841
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    return-void
.end method


# virtual methods
.method public disableArrow(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 877
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    .line 878
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 877
    goto :goto_0
.end method

.method public getArrowPadding()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowPadding:I

    return v0
.end method

.method public getArrowWidth()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getBackgroundLeftMinWidth()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mLeftMinWidth:I

    return v0
.end method

.method public getBackgroundMidMinWidth()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMidMinWidth:I

    return v0
.end method

.method public getBackgroundMinWidth()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMinWidth:I

    return v0
.end method

.method public getBackgroundRightMinWidth()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightMinWidth:I

    return v0
.end method

.method public getCloseIconWidth()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 749
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 751
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 752
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 753
    .local v0, "h":I
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 755
    .local v2, "w":I
    invoke-virtual {p0, v2, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 757
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 760
    iget-boolean v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mWithArrow:Z

    if-eqz v3, :cond_0

    .line 775
    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    if-gtz v3, :cond_1

    .line 791
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 792
    .local v1, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 793
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 794
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 798
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 799
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 802
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 803
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 804
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    :goto_0
    return-void

    .line 761
    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 762
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int v3, v2, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 763
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 764
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 767
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 768
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 769
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 772
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 773
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 774
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 776
    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 777
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 778
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 779
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGLeft:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 782
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    sub-int v3, v2, v3

    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 783
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 784
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGRight:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 787
    .restart local v1    # "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 788
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 789
    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setArrowDown()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 866
    return-void
.end method

.method public setArrowPosition(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 873
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mArrowLeft:I

    .line 874
    return-void
.end method

.method public setArrowUp()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mBGMiddle:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMiddleDrawableUp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 862
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .prologue
    .line 741
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 742
    return-void
.end method
