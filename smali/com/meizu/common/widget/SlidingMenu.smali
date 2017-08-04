.class public Lcom/meizu/common/widget/SlidingMenu;
.super Landroid/widget/FrameLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SlidingMenu$SavedState;,
        Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;,
        Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;,
        Lcom/meizu/common/widget/SlidingMenu$State;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SlidingMenu"

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

.field private mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

.field private mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

.field private mViewAboveOffset:I

.field private mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 483
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 471
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 505
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    iput-boolean v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mActionbarOverlay:Z

    .line 346
    iput v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    .line 1497
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mHandler:Landroid/os/Handler;

    .line 506
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mContext:Landroid/content/Context;

    .line 507
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 509
    .local v1, "behindParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/meizu/common/widget/CustomViewBehind;

    invoke-direct {v2, p1}, Lcom/meizu/common/widget/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    .line 510
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {p0, v2, v1}, Lcom/meizu/common/widget/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v0, "aboveParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lcom/meizu/common/widget/CustomViewAbove;

    invoke-direct {v2, p1}, Lcom/meizu/common/widget/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    .line 514
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {p0, v2, v0}, Lcom/meizu/common/widget/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    iget-object v3, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setCustomViewBehind(Lcom/meizu/common/widget/CustomViewBehind;)V

    .line 517
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    iget-object v3, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/CustomViewBehind;->setCustomViewAbove(Lcom/meizu/common/widget/CustomViewAbove;)V

    .line 518
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    new-instance v3, Lcom/meizu/common/widget/SlidingMenu$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/SlidingMenu$1;-><init>(Lcom/meizu/common/widget/SlidingMenu;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/CustomViewAbove;->setOnPageChangeListener(Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;)V

    .line 555
    sget v2, Lcom/meizu/common/R$drawable;->mz_drawer_shadow_light:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SlidingMenu;->setShadowDrawable(I)V

    .line 556
    sget v2, Lcom/meizu/common/R$dimen;->mz_slidingmenu_menu_width:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SlidingMenu;->setMenuWidthRes(I)V

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    return-object v0
.end method

.method private getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;
    .locals 9
    .param p1, "activityManager"    # Landroid/app/LocalActivityManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x1010054

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 686
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 687
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 689
    invoke-virtual {p1, v2, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 691
    .local v3, "window":Landroid/view/Window;
    if-nez v3, :cond_0

    .line 692
    .local v2, "contentView":Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 694
    if-nez v2, :cond_1

    .line 700
    :goto_1
    return-object v2

    .line 691
    .end local v2    # "contentView":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 695
    .restart local v2    # "contentView":Landroid/view/View;
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 696
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v4, v2

    .line 697
    check-cast v4, Landroid/view/ViewGroup;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 1327
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 568
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I
    .param p3, "actionbarOverlay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 579
    if-nez p2, :cond_2

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_3

    .line 587
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 591
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 592
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 594
    packed-switch p2, :pswitch_data_0

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 579
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "background":I
    :cond_2
    if-eq p2, v7, :cond_0

    .line 580
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 584
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "This SlidingMenu appears to already be attached"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 597
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "background":I
    :pswitch_0
    iput-boolean v9, p0, Lcom/meizu/common/widget/SlidingMenu;->mActionbarOverlay:Z

    .line 598
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 599
    .local v4, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 601
    .local v5, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 602
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 603
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 604
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 607
    .end local v4    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "decorChild":Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/meizu/common/widget/SlidingMenu;->mActionbarOverlay:Z

    const v6, 0x1020002

    .line 609
    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 610
    .local v3, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 611
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 613
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 615
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 616
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewAbove;->clearIgnoredViews()V

    .line 1346
    return-void
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentOffsetLeft()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    return v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOffset()I
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public isSecondaryMenuShowing()Z
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public manageLayers(F)V
    .locals 5
    .param p1, "percentOpen"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1502
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    .line 1505
    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    const/4 v0, 0x1

    .line 1506
    .local v0, "layer":Z
    :goto_0
    if-nez v0, :cond_2

    move v1, v2

    .line 1508
    .local v1, "layerType":I
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1525
    :goto_2
    return-void

    .line 1503
    .end local v0    # "layer":Z
    .end local v1    # "layerType":I
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1505
    goto :goto_0

    .restart local v0    # "layer":Z
    :cond_2
    const/4 v1, 0x2

    .line 1506
    goto :goto_1

    .line 1510
    .restart local v1    # "layerType":I
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/meizu/common/widget/SlidingMenu$2;

    invoke-direct {v3, p0, v1}, Lcom/meizu/common/widget/SlidingMenu$2;-><init>(Lcom/meizu/common/widget/SlidingMenu;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1586
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/SlidingMenu;

    .line 1587
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1588
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1255
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1256
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1241
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1242
    invoke-static {v5, p1}, Lcom/meizu/common/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v3

    .line 1243
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/meizu/common/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v2

    .line 1244
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/SlidingMenu;->setMeasuredDimension(II)V

    .line 1245
    iget v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/meizu/common/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v1

    .line 1246
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/meizu/common/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v0

    .line 1247
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-nez v4, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v4, v1, v0}, Lcom/meizu/common/widget/CustomViewAbove;->measure(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1472
    check-cast v0, Lcom/meizu/common/widget/SlidingMenu$SavedState;

    .line 1473
    .local v0, "ss":Lcom/meizu/common/widget/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1474
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 1475
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1460
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1461
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1462
    .local v0, "ss":Lcom/meizu/common/widget/SlidingMenu$SavedState;
    return-object v0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 1337
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .param p1, "t"    # Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setCanvasTransformer(Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;)V

    .line 1129
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/4 v0, 0x0

    .line 1116
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setScrollScale(F)V

    .line 1119
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 639
    return-void
.end method

.method public setContent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1, p1}, Lcom/meizu/common/widget/SlidingMenu;->getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 670
    return-void

    .line 659
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Did you forget to call \'public void setup(LocalActivityManager activityManager)\'?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "get content from Activity failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 649
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->showContent()V

    .line 650
    return-void
.end method

.method public setContentOffsetLeft(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 1033
    iput p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    .line 1034
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setAboveOffsetLeft(I)V

    .line 1035
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1036
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1037
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->requestLayout()V

    .line 1038
    return-void
.end method

.method public setContentOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1071
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setContentOffsetLeft(I)V

    .line 1072
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setFadeDegree(F)V

    .line 1277
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setFadeEnabled(Z)V

    .line 1266
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 722
    return-void
.end method

.method public setMenu(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 740
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1, p1}, Lcom/meizu/common/widget/SlidingMenu;->getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 752
    return-void

    .line 741
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Did you forget to call \'public void setup(LocalActivityManager activityManager)\'?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "get content from Activity failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 732
    return-void
.end method

.method public setMenuOffset(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .local v1, "display":Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    .line 997
    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 1001
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .local v4, "parameter":Landroid/graphics/Point;
    const-string/jumbo v7, "getSize"

    .line 1002
    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    .line 1003
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameter":Landroid/graphics/Point;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v6, "width":I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/SlidingMenu;->setMenuWidth(I)V

    .line 1010
    return-void

    .line 1008
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method public setMenuOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1023
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setMenuOffset(I)V

    .line 1024
    return-void
.end method

.method public setMenuVisibleAlways(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 832
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setMenuVisibleAlways(Z)V

    .line 833
    return-void
.end method

.method public setMenuWidth(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setMenuWidth(I)V

    .line 1082
    return-void
.end method

.method public setMenuWidthRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1094
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setMenuWidth(I)V

    .line 1095
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 824
    if-nez p1, :cond_1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setMode(I)V

    .line 829
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 824
    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCloseListener(Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    .line 1370
    return-void
.end method

.method public setOnClosedListener(Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setOnClosedListener(Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;)V

    .line 1394
    return-void
.end method

.method public setOnMenuStateChangeListener(Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    .line 1404
    return-void
.end method

.method public setOnOpenListener(Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    .line 1358
    return-void
.end method

.method public setOnOpenedListener(Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setOnOpenedListener(Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;)V

    .line 1382
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 774
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 785
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1216
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 1297
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 1317
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 1307
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 1287
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setShadowWidth(I)V

    .line 1236
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setShadowWidth(I)V

    .line 1226
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 804
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 805
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 853
    if-nez p1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 864
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCustomViewBehind(Lcom/meizu/common/widget/CustomViewBehind;)V

    .line 865
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SlidingMenu;->setSlidingEnabled(Z)V

    .line 867
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->setSlidingEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomViewAbove;->setCustomViewBehind(Lcom/meizu/common/widget/CustomViewBehind;)V

    .line 857
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 1151
    if-ne p1, v0, :cond_1

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setTouchMode(I)V

    .line 1158
    return-void

    .line 1151
    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 1170
    if-ne p1, v0, :cond_1

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewBehind:Lcom/meizu/common/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->setTouchMode(I)V

    .line 1176
    return-void

    .line 1170
    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Landroid/app/LocalActivityManager;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 628
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->showContent(Z)V

    .line 913
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 922
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 923
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->showMenu(Z)V

    .line 875
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 884
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 885
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->showSecondaryMenu(Z)V

    .line 894
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 904
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 905
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SlidingMenu;->toggle(Z)V

    .line 931
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/meizu/common/widget/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SlidingMenu;->showMenu(Z)V

    .line 948
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SlidingMenu;->showContent(Z)V

    goto :goto_0
.end method
