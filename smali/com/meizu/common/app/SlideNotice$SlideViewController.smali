.class Lcom/meizu/common/app/SlideNotice$SlideViewController;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideViewController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;
    }
.end annotation


# static fields
.field private static final SLIDE_STATE_TYPE_HIDDEN:I = 0x3

.field private static final SLIDE_STATE_TYPE_HIDING:I = 0x1

.field private static final SLIDE_STATE_TYPE_SHOWING:I = 0x0

.field private static final SLIDE_STATE_TYPE_SHOWN:I = 0x2


# instance fields
.field private isBelowDefaultActionBar:Z

.field private isSupportedImmersedStatusBar:Z

.field private mActionBarHeight:I

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentClickListener:Landroid/view/View$OnClickListener;

.field private mCurAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCustom:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field mGravity:I

.field private mHasCustom:Z

.field private mIsOverlaidByStatusBar:Z

.field private mIsOverlaidByStatusBarSet:Z

.field private mLeft:I

.field private mNoticeBgColor:I

.field private mNoticeClickMsg:Landroid/os/Message;

.field private mNoticeHandler:Landroid/os/Handler;

.field private mNoticeHeight:I

.field private mNoticePanel:Landroid/widget/LinearLayout;

.field private mNoticeView:Landroid/widget/TextView;

.field private mNoticeWidth:I

.field private mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mSlideContent:Landroid/view/View;

.field private mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

.field mSlideFromType:I

.field mSlideState:I

.field private mSlidingHideListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

.field private mSlidingShowListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

.field private mStatusBarHeight:I

.field private mWManager:Landroid/view/WindowManager;

.field mYOffset:I

.field private showing:Z

.field private text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/common/app/SlideNotice;


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V
    .locals 1
    .param p2, "notice"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 599
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 610
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mContentClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x50

    .line 627
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    const/4 v0, 0x3

    .line 628
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    const/4 v0, -0x1

    .line 629
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    .line 636
    new-instance v0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;

    invoke-direct {v0, p2}, Lcom/meizu/common/app/SlideNotice$NoticeHandler;-><init>(Lcom/meizu/common/app/SlideNotice;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHandler:Landroid/os/Handler;

    .line 637
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->init()V

    .line 638
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCurAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/View;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->findPositionByAnchor(Landroid/view/View;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/app/SlideNotice$SlideViewController;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p1, "x1"    # [I

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->update([I)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingShowListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    return-object v0
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    if-nez v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->unregisterForScrollChanged()V

    .line 771
    iput-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    const/4 v0, 0x3

    .line 773
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    .line 774
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private findPositionByAnchor(Landroid/view/View;I)[I
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "slideFromType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1012
    new-array v2, v3, [I

    .line 1013
    .local v2, "mDrawingLocation":[I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1014
    .local v0, "anchorHeight":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1016
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1017
    .local v1, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1019
    if-eq p2, v6, :cond_0

    .line 1022
    new-array v3, v3, [I

    aget v4, v2, v5

    aput v4, v3, v5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    aget v5, v2, v6

    sub-int/2addr v4, v5

    aput v4, v3, v6

    return-object v3

    .line 1020
    :cond_0
    new-array v3, v3, [I

    aget v4, v2, v5

    aput v4, v3, v5

    aget v4, v2, v6

    add-int/2addr v4, v0

    aput v4, v3, v6

    return-object v3
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1003
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1004
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x90

    .line 1008
    return v1

    .line 1005
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1
.end method

.method private handleHide()V
    .locals 6

    .prologue
    .line 950
    iget-boolean v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-eqz v3, :cond_0

    .line 953
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCurAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v3, :cond_1

    .line 956
    :goto_0
    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 960
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 962
    .local v1, "noticeHeight":I
    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    packed-switch v3, :pswitch_data_0

    .line 968
    :pswitch_0
    move v2, v1

    .line 972
    .local v2, "toY":I
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v4, 0x140

    .line 973
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 974
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1200()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 975
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingHideListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 976
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 977
    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCurAnimator:Landroid/view/ViewPropertyAnimator;

    .line 978
    return-void

    .line 951
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "noticeHeight":I
    .end local v2    # "toY":I
    :cond_0
    return-void

    .line 954
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCurAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 957
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V

    .line 958
    return-void

    .line 964
    .restart local v1    # "noticeHeight":I
    :pswitch_1
    neg-int v2, v1

    .restart local v2    # "toY":I
    goto :goto_1

    .line 962
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 777
    iget-boolean v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->prepareNotice(Landroid/view/WindowManager$LayoutParams;)V

    .line 782
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupPosition()V

    .line 784
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupView()V

    .line 786
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->invokeNotice()V

    .line 788
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 789
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$3;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    .line 819
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->trySendAccessibilityEvent()V

    .line 820
    return-void

    .line 778
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 641
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$layout;->mc_slide_notice_content:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    .line 643
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v2, Lcom/meizu/common/R$id;->noticeView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 644
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v2, Lcom/meizu/common/R$id;->noticePanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    .line 645
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v2, Lcom/meizu/common/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    .line 646
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/util/ResourceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    .line 649
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    .line 651
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingHideListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

    .line 652
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingShowListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    .line 654
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 655
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 658
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    .line 661
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 662
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 663
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 664
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SlideNotice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 668
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 673
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "window"

    .line 656
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    goto :goto_0

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    goto :goto_1
.end method

.method private invokeNotice()V
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mLeft:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 856
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 857
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private prepareNotice(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v4, 0x7d5

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 824
    .local v0, "parentWindow":Landroid/view/Window;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 834
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 837
    .end local v0    # "parentWindow":Landroid/view/Window;
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2, v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    .line 839
    iget-boolean v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    if-eqz v2, :cond_3

    .line 840
    :goto_1
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    if-gtz v2, :cond_4

    .line 844
    :goto_2
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 845
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 852
    :cond_0
    :goto_3
    return-void

    .line 825
    .restart local v0    # "parentWindow":Landroid/view/Window;
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 826
    .local v0, "parentWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 827
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_2

    .line 831
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 828
    :cond_2
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v2, 0x3e8

    .line 829
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 839
    .end local v0    # "parentWindow":Landroid/view/Window;
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_3
    iput v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    goto :goto_1

    .line 841
    :cond_4
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 846
    :cond_5
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6

    .line 848
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 849
    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    .line 847
    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    goto :goto_3
.end method

.method private setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)Z
    .locals 6
    .param p1, "attributes"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    const/4 v5, 0x1

    .line 1090
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 1101
    if-eqz p2, :cond_2

    .line 1105
    return v5

    :cond_0
    const/4 v1, 0x0

    .line 1092
    .local v1, "trans_status":I
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1300()Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1098
    :goto_0
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1300()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    or-int v2, v3, v1

    .line 1099
    .local v2, "value":I
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1300()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 1108
    .end local v1    # "trans_status":I
    .end local v2    # "value":I
    :goto_1
    return v5

    .restart local v1    # "trans_status":I
    :cond_1
    const/16 v1, 0x40

    .line 1094
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "meizuFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/common/app/SlideNotice;->access$1302(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 1096
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->access$1300()Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    .end local v1    # "trans_status":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SlideNotice"

    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set the status bar to be transparent, Caused by:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v3, 0x0

    return v3

    .line 1102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setupContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBarSet:Z

    if-eqz v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    if-nez v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 892
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->noticeView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 894
    :goto_1
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    if-gtz v0, :cond_3

    .line 897
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 900
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 901
    return-void

    .line 883
    :cond_1
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSupportedImmersedStatusBar:Z

    if-eqz v0, :cond_0

    .line 884
    iput-boolean v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    goto :goto_0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->noticeView_no_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 889
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private setupCustom()Z
    .locals 4

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "hasCustom":Z
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 917
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 919
    :goto_0
    return v0

    .line 906
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    if-eq v2, v3, :cond_1

    .line 909
    :goto_1
    const/4 v0, 0x1

    .line 910
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 911
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 912
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    .line 913
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 914
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 915
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 907
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupPosition()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 923
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 930
    iget-boolean v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-nez v2, :cond_3

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_2

    .line 925
    .local v0, "anchor":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 926
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->findPositionByAnchor(Landroid/view/View;I)[I

    move-result-object v1

    .local v1, "position":[I
    const/4 v2, 0x1

    .line 927
    aget v2, v1, v2

    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    goto :goto_0

    .line 924
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "position":[I
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    goto :goto_1

    .line 930
    :cond_3
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    if-nez v2, :cond_0

    .line 931
    iget v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    iget v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    goto :goto_0
.end method

.method private setupView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    if-eqz v0, :cond_0

    .line 868
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupCustom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHasCustom:Z

    .line 869
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mHasCustom:Z

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    if-nez v0, :cond_2

    .line 877
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 878
    return-void

    .line 865
    :cond_0
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    .line 866
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 869
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setupContent()V

    goto :goto_1

    .line 873
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mContentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;

    goto :goto_2
.end method

.method private trySendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 937
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 938
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x40

    .line 941
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 943
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-virtual {v2}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-virtual {v2, v1}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 946
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 947
    return-void

    .line 939
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 701
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 703
    .local v0, "anchor":Landroid/view/View;
    if-nez v1, :cond_0

    .line 706
    .end local v0    # "anchor":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 710
    :goto_1
    iput-object v4, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 711
    return-void

    .line 704
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .local v0, "anchor":Landroid/view/View;
    goto :goto_0

    .line 707
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 708
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_1
.end method

.method private update([I)V
    .locals 3
    .param p1, "position"    # [I

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    if-nez v0, :cond_1

    .line 1029
    :cond_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1031
    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    .line 1032
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1033
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleHide()V

    .line 1075
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    return v0
.end method

.method public resetTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-nez v0, :cond_0

    .line 992
    iput v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    .line 994
    :goto_0
    return-void

    .line 990
    :cond_0
    iget v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    iget v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 676
    if-nez p1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->unregisterForScrollChanged()V

    .line 678
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 680
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_2

    .line 695
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 682
    :cond_2
    new-instance v1, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    goto :goto_1
.end method

.method public setBelowDefaultActionBar(Z)V
    .locals 1
    .param p1, "belowDefaultActionBar"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    .line 725
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x30

    .line 726
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustomView:Landroid/view/View;

    .line 1038
    return-void
.end method

.method public setIsOverlaidByStatusBar(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 748
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    if-nez v0, :cond_0

    .line 751
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBarSet:Z

    .line 752
    return-void

    :cond_0
    const/16 v0, 0x30

    .line 749
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    goto :goto_0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 981
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mLeft:I

    .line 982
    return-void
.end method

.method public setNoticeBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 743
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeBgColor:I

    .line 744
    return-void
.end method

.method public setNoticeHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 755
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHeight:I

    .line 756
    return-void
.end method

.method public setNoticeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 759
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeWidth:I

    .line 760
    return-void
.end method

.method public setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnClickNoticeListener:Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .line 716
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->text:Ljava/lang/CharSequence;

    .line 733
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->handleShow()V

    .line 1080
    return-void
.end method
